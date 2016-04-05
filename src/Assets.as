package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import mx.core.BitmapAsset;
	
	import starling.textures.Texture;

	public class Assets
	{
		[Embed(source="../assets/graphics/bgWelcome.jpg")]
		public static const bgWelcome:Class;
		
		[Embed(source="../assets/graphics/welcome_hero.png")]
		public static const WelcomeHero:Class;
		
		[Embed(source="../assets/graphics/welcome_title.png")]
		public static const WelcomeTitle:Class;
		
		[Embed(source="../assets/graphics/Welcome_playButton.png")]
		public static const WelcomePlayBtn:Class;
		
		[Embed(source="../assets/graphics/welcome_aboutButton.png")]
		public static const WelcomeAboutBtn:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name] ();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
	}
}