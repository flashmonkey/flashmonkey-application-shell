package org.flashmonkey.view.api
{
	import org.osflash.signals.Signal;

	public interface ISignalButton
	{
		function get click():Signal;
		
		function set visible(value:Boolean):void;
		
		function set enabled(value:Boolean):void;
	}
}