package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import mx.core.BitmapAsset;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;

	public class Assets
	{
		[Embed(source="../assets/graphics/bgWelcome.jpg")]
		public static const bgWelcome:Class;
		
		
		private static var gameTextures:Dictionary = new Dictionary();
		private static var gameTextureAtlas:TextureAtlas;
		
		[Embed(source="../assets/graphics/mySpritesheet.png")]
		public static const AtlasTextureGame:Class;
		
		[Embed(source="../assets/graphics/mySpritesheet.xml", mimeType= "application/octet-stream")]
		public static const AtlasXmlGame:Class;
		
		public static function getAtlas():TextureAtlas 
		{
			if (gameTextureAtlas == null)
			{
				var texture:Texture = getTexture ("AtlasTextureGame");
				var xml:XML = XML (new AtlasXmlGame());
					gameTextureAtlas = new TextureAtlas(texture, xml);
			}
			return gameTextureAtlas;
		}
		
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