package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class Changelog extends MusicBeatState
{
	public static var leftState:Bool = false;

	var changelogAdded:String = 
      "- Combo Breaks
      \n- Funk Language (source code)
      \n- ModStuff file for mods
      \n- Changelog Menu
      \n- Chart Menu BG
      \n- HEY Anim for BF in South";

	var changelogFixed:String = 
      "- Story Mode missing last song
      \n- Freeplay mode";

	var txt:FlxText;

	override function create()
	{
		super.create();

		var menuBG:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		menuBG.setGraphicSize(Std.int(menuBG.width * 1.1));
		menuBG.updateHitbox();
		menuBG.screenCenter();
		menuBG.antialiasing = true;
		menuBG.color = 0x181818;
		add(menuBG);

		txt = new FlxText(0, 0, 0,
			"FNF Construction Engine "
			+ MainMenuState.contructionVer
			+ " Changelog\n\n"
			+ "Added\n"
			+ changelogAdded
			+ "\n\nFixed\n"
			+ changelogFixed
			+ "\nPress ENTER to proceed",
			12);
		txt.setFormat("VCR OSD Mono", 24, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			leftState = true;
			FlxG.sound.play(Paths.sound('scrollMenu'));
			FlxG.switchState(new MainMenuState());
		}

		super.update(elapsed);
	}

	override public function beatHit():Void
	{
            Funk.funkLog(curBeat);
	}
}
