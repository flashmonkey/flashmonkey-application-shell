package org.flashmonkey.model.impl
{
	import org.flashmonkey.model.api.IApplicationModel;
	import org.flashmonkey.model.api.IModelProperty;
	
	public class ApplicationModel implements IApplicationModel
	{
		private var _location:IModelProperty;
		
		public function get location():IModelProperty
		{
			return _location || (_location = new ModelProperty(String));
		}
		
		public function ApplicationModel()
		{
		}
	}
}