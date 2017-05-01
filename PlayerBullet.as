package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class PlayerBullet extends MovieClip {
		var Location: Vector2;
		
		public function PlayerBullet() {
			// constructor code
			Location = new Vector2(0, 6);
			rotation = 270;
			addEventListener(Event.ENTER_FRAME, Move)
		}
		
		public function Move(e:Event) {
			Location.normalize();
			y -= Location.y;
			
			if (y >= 500 || 0 >= y) {
				parent.removeChild(this);
			}
			
			}
			
	}
}
