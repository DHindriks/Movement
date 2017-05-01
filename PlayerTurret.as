package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class PlayerTurret extends MovieClip {
		var myBullet: MovieClip;
		
		public function PlayerTurret() {
			// constructor code
			rotation = 270;
		}
		
		public function Shoot() :void {
			myBullet = new PlayerBullet;
			addChild(myBullet);
			
		}
	}
	
}
