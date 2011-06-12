package org.flashmonkey.controller.command
{
	import mx.controls.Alert;
	
	import org.flashmonkey.operations.service.IOperation;
	import org.robotlegs.mvcs.SignalCommand;
	
	public class ServiceCommand extends SignalCommand
	{	
		protected function get call():IOperation
		{
			return null;
		}
		
		public function ServiceCommand()
		{
			super();
		}
		
		public override function execute():void
		{
			call
			.addCompleteListener(onServiceCallComplete)
			.addErrorListener(onServiceCallError)
			.execute();
		}
		
		protected function onServiceCallComplete(o:IOperation):void 
		{
			
		}
		
		protected function onServiceCallError(o:IOperation):void 
		{
			Alert.show(o.error, "Problem");
		}
	}
}