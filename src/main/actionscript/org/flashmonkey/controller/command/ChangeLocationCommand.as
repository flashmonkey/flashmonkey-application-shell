package org.flashmonkey.controller.command
{
	import org.flashmonkey.model.api.IApplicationModel;
	
	import org.robotlegs.mvcs.SignalCommand;
	
	public class ChangeLocationCommand extends SignalCommand
	{
		[Inject] public var location:String;
		
		[Inject] public var model:IApplicationModel;
		
		public function ChangeLocationCommand()
		{
			super();
		}
		
		public override function execute():void
		{
			model.location.value = location;
		}
	}
}