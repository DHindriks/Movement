﻿package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class EnemyBullet extends MovieClip {
		var Location: Vector2;
		
		public function EnemyBullet() {
			// constructor code
			trace("EBullet")
			Location = new Vector2(0, 6);
			rotation = 270;
			addEventListener(Event.ENTER_FRAME, Move)
		}
		
		public function Move(e:Event) {
			Location.normalize();
			y += Location.y;
			
			if (y >= 500 || 0 >= y) {
				parent.removeChild(this);
			}
			
			}
			
	}
}