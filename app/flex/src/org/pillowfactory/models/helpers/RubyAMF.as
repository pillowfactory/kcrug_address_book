package org.pillowfactory.models.helpers
{
	import mx.rpc.remoting.RemoteObject;
	import mx.rpc.AbstractOperation;
	import mx.rpc.AsyncToken;
	import mx.collections.ItemResponder;
	import flash.events.Event;
	
	public class RubyAMF
	{
		private static var _controllers:Object = new Object();
		
		public static function call( controllerClassName:String, actionName:String, params:Object, resultHandler:Function, faultHandler:Function ):void {
			var controller:RemoteObject = controller(controllerClassName);
			var action:AbstractOperation = controller.getOperation(actionName);
			
			var token:AsyncToken = action.send(params);
			
			token.addResponder( new ItemResponder(
				function(result:Event, tkn:Object):void { if(resultHandler != null) resultHandler(result) },
				function(fault:Event, tkn:Object):void { if(faultHandler != null) faultHandler(fault) } ));
		} 
		
		private static function controller( controllerClassName:String ):RemoteObject {
			var controller:RemoteObject = _controllers[controllerClassName];
			
			if( controller == null ) {
				controller = new RemoteObject("rubyamf");
				controller.makeObjectsBindable = true;
				controller.source = controllerClassName;
				_controllers[controllerClassName] = controller;
			}
			
			return controller;
		}
		
	}
}