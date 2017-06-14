package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class EnemyTurret extends MovieClip {
		var myBullet: MovieClip;
		var myPlayerTurret = new PlayerTurret;
		
		public function EnemyTurret() {
			// constructor code
			rotation = 90;
		}
		
		public function Shoot() :void {
			myBullet = new Bullet;
			addChild(myBullet);
			
		}
	}
	
}
