package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var bg:FlxSprite;

	override public function create()
	{
		super.create();

		bg.makeGraphic(FlxG.width, FlxG.height);
		add(bg);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
