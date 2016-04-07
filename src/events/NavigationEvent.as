package events
{
	import starling.events.Event;
	
	public class NavigationEvent extends Event
	{
		public static const CHANGE_SCREEN:String = "changeScreen";
		
		public var parans:Object;
		
		public function NavigationEvent(type:String, _parans:Object = null, bubbles:Boolean=false)
		{
			super(type, bubbles);
			this.parans = _parans;
		}
	}
}