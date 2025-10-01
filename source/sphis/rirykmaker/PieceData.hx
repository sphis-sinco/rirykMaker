package sphis.rirykmaker;

import lime.utils.Assets;

class PieceData
{
	public static final pieceSizes:Map<String, Array<String>> = [];

	public static final pieceMin:Map<String, Int> = [];
	public static final pieceMax:Map<String, Int> = [];

	public static final pieceTypes:Map<String, Array<String>> = [];

	public static function getPieceInfo(piece:String)
	{
		final pathPrefix = 'assets/data/';
		final pathSuffix = '.txt';

		final sizesPath = pathPrefix + piece + '-sizes' + pathSuffix;
		final minMaxPath = pathPrefix + piece + '-min-max' + pathSuffix;
		final typesPath = pathPrefix + piece + '-types' + pathSuffix;

		if (Assets.exists(sizesPath))
		{
			final sizes = Assets.getText(sizesPath).split('\n');
			pieceSizes.set(piece, sizes);

			trace('Got riryk piece: $piece sizes: $sizes');
		}

		if (Assets.exists(minMaxPath))
		{
			final minMax = Assets.getText(minMaxPath).split('\n');
			pieceMin.set(piece, Std.parseInt(minMax[0]));
			pieceMax.set(piece, Std.parseInt(minMax[1]));

			trace('Got riryk piece: $piece min-max values: $minMax');
		}

		if (Assets.exists(typesPath))
		{
			final types = Assets.getText(typesPath).split('\n');
			pieceTypes.set(piece, types);

			trace('Got riryk piece: $piece types: $types');
		}
	}
}
