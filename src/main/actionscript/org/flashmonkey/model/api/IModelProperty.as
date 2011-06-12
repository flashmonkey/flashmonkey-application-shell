package org.flashmonkey.model.api
{
	public interface IModelProperty
	{
		function add(listener:Function):void;
		
		function remove(listener:Function):void;
		
		function get value():*;
		function set value(v:*):void; 
	}
}