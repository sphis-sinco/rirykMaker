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

			trace('Got sizes for riryk piece "$piece":');
			for (size in sizes)
				trace('*  $size');
		}

		if (Assets.exists(minMaxPath))
		{
			final minMax = Assets.getText(minMaxPath).split('\n');
			pieceMin.set(piece, Std.parseInt(minMax[0]));
			pieceMax.set(piece, Std.parseInt(minMax[1]));

			trace('Got min-max values for riryk piece "$piece":');
			trace('*  min: ${minMax[0]}');
			trace('*  max: ${minMax[1]}');
		}

		if (Assets.exists(typesPath))
		{
			final types = Assets.getText(typesPath).split('\n');
			pieceTypes.set(piece, types);

			trace('Got types for riryk piece "$piece":');
			for (type in types)
				trace('*  $type');
		}
	}
}
