package org.flashmonkey.service.operation
{
	import mx.rpc.AsyncResponder;
	import mx.rpc.AsyncToken;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	
	import org.flashmonkey.operations.service.AbstractOperation;
	
	public class RemoteObjectOperation extends AbstractOperation
	{
		private var _remoteObject:RemoteObject;
		
		protected function get remoteObject():RemoteObject
		{
			return _remoteObject;
		}
		
		protected function get token():AsyncToken
		{
			return null;
		}
		
		public function RemoteObjectOperation(remoteObject:RemoteObject)
		{
			super();
			
			_remoteObject = remoteObject;
		}
		
		public override function execute():void
		{
			token.addResponder(new AsyncResponder(resultHandler, faultHandler));
		}
		
		protected function faultHandler(e:FaultEvent, token:Object = null):void 
		{
			dispatchError(e.fault);
		}
		
		protected function resultHandler(e:ResultEvent, token:Object = null):void
		{
			dispatchComplete(e.result);
		}
	}
}