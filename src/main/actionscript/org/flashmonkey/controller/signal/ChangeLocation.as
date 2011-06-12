package org.flashmonkey.controller.signal
{
	import org.osflash.signals.Signal;
	
	public class ChangeLocation extends Signal
	{
		public function ChangeLocation()
		{
			super(String);
		}
	}
}