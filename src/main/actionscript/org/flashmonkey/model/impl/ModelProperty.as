package org.flashmonkey.model.impl
{
	import org.flashmonkey.model.api.IModelProperty;
	
	import org.osflash.signals.Signal;
	
	public class ModelProperty implements IModelProperty
	{
		private var signal:Signal;
		
		private var _value:*;
		
		public function ModelProperty(clazz:Class)
		{
			signal = new Signal(clazz);
		}
		
		public function add(listener:Function):void 
		{
			signal.add(listener);
		
			listener(_value);
		}
		
		public function remove(listener:Function):void 
		{
			signal.remove(listener);
		}
		
		public function get value():* 
		{
			return _value;
		}
		public function set value(v:*):void 
		{
			signal.dispatch(_value = v);
		}
	}
}