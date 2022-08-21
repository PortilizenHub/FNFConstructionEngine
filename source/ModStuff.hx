package;

import flixel.FlxG;

class ModStuff
{
	inline public static var modName:String = 'My Mod';
	inline public static var modVersion:String = '0.0.1';
	inline public static var modEnabled:Bool = false;

	inline public static function modPrint()
	{
		Funk.funkLog('mod name: ' + modName);
		Funk.funkLog('mod version: ' +  modVersion);
		Funk.funkLog('mod enabled: ' +  modEnabled);
		return;
	}

	inline public static function changeModSongBPM(song:String, newBPM:Int)
	{
		if (Funk.getSong() == song)
			Conductor.changeBPM(newBPM);

		return;
	}

	inline public static function changeModSongDAD(song:String, newDADname:String)
	{
		if (Funk.getSong() == song)
		{
			PlayState.dad.destroy();
			PlayState.dad = new Character(100, 100, newDADname);
		}

		return;
	}

	inline public static function changeModSongDADPos(song:String, x:Int, y:Int)
	{
		if (Funk.getSong() == song)
		{
			PlayState.dad.x = x;
			PlayState.dad.y = y;
		}

		return;
	}

	inline public static function changeModSongBF(song:String, newBFname:String)
	{
		if (Funk.getSong() == song)
		{
			PlayState.boyfriend.destroy();
			PlayState.boyfriend = new Boyfriend(100, 100, newBFname);
		}

		return;
	}

	inline public static function changeModSongBFPos(song:String, x:Int, y:Int)
	{
		if (Funk.getSong() == song)
		{
			PlayState.boyfriend.x = x;
			PlayState.boyfriend.y = y;
		}

		return;
	}

	inline public static function changeModSongGF(song:String, newGFname:String)
	{
		if (Funk.getSong() == song)
		{
			PlayState.gf.destroy();
			PlayState.gf = new Character(100, 100, newGFname);
		}

		return;
	}

	inline public static function changeModSongGFPos(song:String, x:Int, y:Int)
	{
		if (Funk.getSong() == song)
		{
			PlayState.gf.x = x;
			PlayState.gf.y = y;
		}

		return;
	}

	inline public static function changeModSongGFversion(song:String, version:String)
	{
		if (Funk.getSong() == song)
			PlayState.gfVersion = version;

		return;
	}
}
