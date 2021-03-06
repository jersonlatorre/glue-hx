package glue.display;

import glue.assets.GLoader;
import openfl.display.Bitmap;
import openfl.display.PixelSnapping;

/**
 * ...
 * @author Jerson La Torre
 * 
 */

class GImage extends GEntity
{
	var _image:Bitmap = null;
	
	public function new(assetId:String)
	{
		super();
		var image:Bitmap = new Bitmap(GLoader.getImage(assetId));
		image.pixelSnapping = PixelSnapping.ALWAYS;
		_skin.addChild(image);
		width = _skin.width;
		height = _skin.height;
		bounds.setTo(_skin.x, _skin.y, width, height);
	}

	override public function destroy() 
	{
		if (_skin != null) _skin.removeChild(_image);
		super.destroy();
		_image = null;
	}
}