package;

import fglsdk.FGL;

import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.Lib;

/**
 * Test the FGL SDK (html5)
 * 
 * Will not show in DEBUG (see project.xml), run in RELEASE
 */
class Main extends Sprite 
{
	private var preventClick:Bool = false;
	
	public function new() 
	{
		super();
		
		// Red BG
		graphics.beginFill( 0x990000 );
		graphics.drawRect( 0, 0, Lib.current.stage.stageWidth, Lib.current.stage.stageHeight );
		graphics.endFill();
		
		// Simply submit a score to test the SDK
		Lib.current.stage.addEventListener( MouseEvent.CLICK, function(_)
		{
			if ( preventClick )
			{
				preventClick = false;
				return;
			}
			
			FGL.submitScore( Std.int(Math.random() * 0xFFFF), "no" );
		} );
		
		// Prevent firing the event when closing the FGL overlay
		addEventListener( Event.ENTER_FRAME, function(_)
		{
			if ( FGL.isBlockingOverlay() )
			{
				preventClick = true;
			}
		});
	}
}
