package sphis.rirykmaker;

import lime.utils.Assets;

class PieceData
{
	public static final pieceSizes:Map<String, Int> = [];

	public static final pieceMin:Map<String, Int> = [];
	public static final pieceMax:Map<String, Int> = [];

	public static final pieceTypes:Map<String, String> = [];

	public static function getPieceInfo(piece:String)
	{
		final pathPrefix = 'assets/data/';
		final pathSuffix = '.txt';

		final sizesPath = pathPrefix + piece + '-sizes' + pathSuffix;
		final minMaxPath = pathPrefix + piece + '-min-max' + pathSuffix;
		final typesPath = pathPrefix + piece + '-types' + pathSuffix;

		if (Assets.exists(sizesPath)) {}
		if (Assets.exists(minMaxPath)) {}
		if (Assets.exists(typesPath)) {}
	}
}
