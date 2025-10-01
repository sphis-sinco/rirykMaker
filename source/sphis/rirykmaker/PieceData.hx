package sphis.rirykmaker;

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

		final sizesSuffix = '-sizes';
		final minMaxSuffix = '-min-max';
		final typeSuffix = '-types';
	}
}
