package org.pillowfactory.models.helpers
{
	[RemoteClass(alias='ActiveRecord::Errors')]
	public dynamic class Errors
	{
		public static const INVALID:String = 'is invalid';
		private static const BASE:String = 'base';
		
		/**
		 * Adds an error message (msg) to the property, which will be returned on a call to on(property) for the same property 
		 * and ensure that this error object returns false when asked if isEmpty().  
		 * More than one error can be added to the same property in which case an array will be returned on a call to on(property). 
		 * If no msg is supplied, "invalid" is assumed.
		 */
		public function add(propertyName:String, msg:String=INVALID):void {
			
			if(!this.errors[propertyName]) {
				this.errors[propertyName] = [];
			}
			
			this.errors[propertyName].push(msg);
		}
		
		/**
		 * Adds an error to the base object instead of any particular property. 
		 * This is used to report errors that don‘t tie to any specific property, but rather to the object as a whole.
		 * These error messages don‘t get prepended with any property name when iterating with forEachFull, so they should be complete sentences.
		 */
		public function addToBase(msg:String):void {
			add(BASE, msg);
		}
		
		/**
		 * Removes all errors that have been added.
		 */
		public function clear():void {
			this.errors = {};
		}
		
		/**
		 * Returns the total number of errors added. Two errors added to the same property will be counted as such.
		 */
		public function length():int {
			var count:int = 0;

			for(var prop:String in this.errors) {
				count += this.errors[prop].length;
			}
			
			return count;
		}
		
		/**
		 * Execute the callback function for each property and associated message.
		 * 
		 * @param callback function callback(property:String, message:String):void;
		 * @param thisObject An object to use as this for the function.
		 */ 
		public function forEach(callback:Function, thisObject:*=null):void {
			for(var prop:* in this.errors) {
				this.errors[prop].forEach( function(msg:String, i:int, arr:Array):void {
					callback.apply(thisObject, [prop, msg]);
				});
			}
		}
		
		/**
		 * Execute the callback function fore each full error message added.  So myPerson.errors.add("name", "can't be empty") will be returned through iteration as "name can't be empty".
		 * 
		 * @param callback function callback(message:String):void;
		 * @param thisObject An object to use as this for the function.
		 */
		public function forEachFull(callback:Function, thisObject:*=null):void {
			fullMessages().forEach( function(msg:String, i:int, arr:Array):void {
				callback.apply(thisObject, [msg]);
			});
		}
		
		/**
		 * Returns all the full error messages in an Array.
		 */
		public function fullMessages():Array {
			var msgs:Array = [];
			
			forEach( function(prop:String, msg:String):void {
				if( prop == BASE )
					msgs.push(msg);
				else
					msgs.push(prop + " " + msg);
			});
			
			return msgs;
		}
		
		/**
		 * Returns true if no errors have been added.
		 */
		public function isEmpty():Boolean {
			return length() == 0;
		}
		
		/**
		 * Returns true if the specified property has errors associated with it.
		 */
		public function isInvalid(propertyName:String):Boolean {
			return !this.errors[propertyName];
		}
		
		/**
		 * Returns null, if no errors are associated with the specified property.
		 * Returns an Array of error messages if any errors are associated with the specified property.
		 */
		public function on(propertyName:String):Array {
			return this.errors[propertyName];
		}
		
		/**
		 * Returns errors assigned to the base object through addToBase() according to the normal rules of on(property).
		 */
		public function onBase():Array {
			return on(BASE);
		}
	}
}