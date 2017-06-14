package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class EnemyBullet extends MovieClip {
		var Location: Vector2;
		
		public function EnemyBullet() {
			// constructor code
			Location = new Vector2(0, 6);
			rotation = 270;
			addEventListener(Event.ENTER_FRAME, Move)
		}
		
		public function Move(e:Event) {
			if (this != null) {
			Location.normalize();
			y += Location.y;
		}
			}
			
	}
}
