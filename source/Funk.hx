package;

import flixel.FlxG;
import flixel.text.FlxText;
import openfl.Assets;
#if sys
import sys.FileSystem;
#end

class Funk
{

	inline public static var funkLanguageVer:String = '0.1.0';

	inline public static var engineChangelog:String = '';


	/*
		put some functions here or whatever
		its basically CoolUtil.hx
		idk
		i guess i wanted to make a FNF language in haxe
		lol
	*/

	inline public static function textValue(text:FlxText)
	{
		return text.text;
	}

	inline public static function txtContent(file:String = 'introText')
	{
		return Assets.getText(Paths.txt(file));
	}

	inline public static function engineVersion()
	{
		return MainMenuState.contructionVer;
	}

	inline public static function languageVersion()
	{
		return funkLanguageVer;
	}

	inline public static function funkLog(message:Dynamic = "coolswag template text")
	{
		trace(message);
		FlxG.log.add(message);

		return;
	}

	inline public static function getSong() 
	{
		return PlayState.SONG.song;	
	}

	inline public static function getTime() 
	{
		return Date.now().getTime();
	}

	inline public static function template()
	{
		return 'template';
	}
}
