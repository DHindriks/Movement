package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class Bullet extends MovieClip {
		var Turret: MovieClip = new PlayerTurret;
		var mouse: Vector2;
		
		public function Bullet() {
			// constructor code
			mouse = new Vector2(mouseX, mouseY)
			mouse.rotate(Turret.rotation)
			rotation = 270;
			addEventListener(Event.ENTER_FRAME, Move)
		}
		
		public function Move(e:Event) {
			mouse.normalize();
			x += mouse.x;
			y += mouse.y;
			
			if (x >= 500 || 0 >= x) {
				removeChild(this);
				}
			
			trace("X:", x)
			trace("Y:", y)
			
			}
			
	}
}
