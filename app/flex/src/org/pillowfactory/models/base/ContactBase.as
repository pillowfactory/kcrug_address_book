/*
* WARNING:  DO NOT MODIFY THIS GENERATED CLASS. ANY CHANGES WILL BE LOST.
*           ADD CUSTOM MODIFICATIONS TO Contact.as  
*/
package org.pillowfactory.models.base
{
	
	import org.pillowfactory.models.helpers.Hash;
	import org.pillowfactory.models.helpers.Errors;
	
	[Bindable]
	public class ContactBase extends Base
	{
	  	private var _email:String;
	  	private var _firstName:String;
	  	private var _id:Number;
	  	private var _lastName:String;
	  	private var _phoneNumber:String;
	  	
		public var errors:Errors = new Errors;
		
		/**
		 * Create a Hash representing this object's persistent properties.
		 * @param ...exclude any String property names that should not be included in the Hash
		 */
		public function toParams(...exclude):Hash {
			var params:Hash = new Hash();
			
			params['email'] = this.email;
			params['firstName'] = this.firstName;
			params['id'] = this.id;
			params['lastName'] = this.lastName;
			params['phoneNumber'] = this.phoneNumber;
			
			return params.remove(exclude);
		}
		
		
		// ACCESSORS: email
		public function get email():String {
			return this._email;
		}
		
		public function set email(value:String):void {
			this._email = value;
		}
		
		// ACCESSORS: firstName
		public function get firstName():String {
			return this._firstName;
		}
		
		public function set firstName(value:String):void {
			this._firstName = value;
		}
		
		// ACCESSORS: id
		public function get id():Number {
			return this._id;
		}
		
		public function set id(value:Number):void {
			this._id = value;
		}
		
		// ACCESSORS: lastName
		public function get lastName():String {
			return this._lastName;
		}
		
		public function set lastName(value:String):void {
			this._lastName = value;
		}
		
		// ACCESSORS: phoneNumber
		public function get phoneNumber():String {
			return this._phoneNumber;
		}
		
		public function set phoneNumber(value:String):void {
			this._phoneNumber = value;
		}
		
	}
}