package;

import flixel.FlxGame;
import flixel.FlxG;
import openfl.display.Sprite;
import openfl.Lib;

class Main extends Sprite
{
	public static var game:FlxGame;

	public function new()
	{
		super();

		#if mobile
		// O Android usa o diretório de armazenamento da aplicação.
		Sys.setCwd(lime.system.System.applicationStorageDirectory);
		#end

		game = new FlxGame(
			960,
			720,
			TitleState,
			1,
			60,
			60,
			true,
			false
		);

		addChild(game);
	}
}
