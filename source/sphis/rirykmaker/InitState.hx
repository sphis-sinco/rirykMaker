package sphis.rirykmaker;

import flixel.FlxG;
import flixel.FlxState;

class InitState extends FlxState
{
	override function create()
	{
		super.create();

		for (piece in ['boob', 'ear', 'tail', 'whisker'])
			PieceData.getPieceInfo(piece);

		FlxG.switchState(() -> new PlayState());
	}
}
