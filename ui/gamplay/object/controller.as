package ui.gamplay.object
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	import ui.gamplay.object.ball_cod;
	
	

	
	public class controller extends MovieClip
	{
	 private var waa :Vector.<ball_cod>;
	 
		public function controller()
		{
			super();
			trace("hi");
			
			this.stage.addEventListener(MouseEvent.MOUSE_MOVE,wamo);
		}
			private function wamo(e:*=null):void
			{
				if (waa.length>0)
				{
					this.removeChild(waa.shift());
				}
				var ball :ball_cod = new ball_cod();
				this.addChild(ball);
				trace(ball.stage);
				ball.x = this.mouseX;
				ball.y = this.mouseY;
				waa.push(ball);
			}
		
	}
}