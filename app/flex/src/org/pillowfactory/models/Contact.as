package org.pillowfactory.models
{
	import org.pillowfactory.models.base.ContactBase
	
	[RemoteClass(alias='Contact')]
	[Bindable]
	public class Contact extends ContactBase
	{
		
		public function get fullName():String {
			return this.firstName + " " + this.lastName;
		}
		
	}
}