package
{
	import flash.display.Sprite;
	
	import net.hires.debug.Stats;
	
	import screens.InGame;
	
	import starling.core.Starling;

	[SWF(frameRate = "60", width = "800", height = "600", backgroundColor="0x333333")]
	public class HungryHero extends Sprite
	{
		private var stats:Stats;
		private var MyStarling:Starling;
		public function HungryHero()
		{
			stats =	new Stats ();
			this.addChild(stats);
			
			MyStarling = new Starling (screens.InGame, stage);
			MyStarling.antiAliasing = 1;
			MyStarling.start();
			
		}
	}
}