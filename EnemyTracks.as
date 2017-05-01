package {

	import flash.display.MovieClip;
	import flash.events.*
	import flash.ui.*;

	public class EnemyTracks extends MovieClip {
		var myTracks: MovieClip;
		var Velocity: Vector2;
		var Location: Vector2;
		var myEnemyTurret:MovieClip = new EnemyTurret;
		var Turnspeed: Number = 1.5;
		var Angle: Number = 0;
		var Buttonup: Boolean;
		var Buttondown: Boolean;
		var Buttonleft: Boolean;
		var Buttonright: Boolean;

		public function EnemyTracks() {
			// constructor code
			addChild(myEnemyTurret);
			Velocity = new Vector2(0, 0);
			Location = new Vector2(50, 50);
			addEventListener(Event.ENTER_FRAME, Update);
		}
			
			public function Stop():void {
				Buttonright = false;
				Buttonleft = false
				Velocity.x *= 0
				Velocity.y *= 0
			}
		
			public function MoveRight():void {
				Buttonright = true;
			}
		
			public function MoveLeft():void {
				Buttonleft = true;
			}
		
			public function Controller():void {
				rotation = Angle
				Location.add (Velocity)
				
				if (Buttonup == true) {
				Velocity.x =+ Math.cos(Vector2.deg2rad(Angle))
				Velocity.y =+ Math.sin(Vector2.deg2rad(Angle))
				}
				
				if (Buttondown == true) {
				Velocity.x =- Math.cos(Vector2.deg2rad(Angle));
				Velocity.y =- Math.sin(Vector2.deg2rad(Angle));
				}
				
				if (Buttonright == true) {
				Velocity.x =+ 2
				}
				
				if (Buttonleft == true) {
				Velocity.x =- 2
				}
				
				x = Location.x;
				y = Location.y;
			}
		
			public function Update(e:Event) {
				Controller();
				
				if (Location.x < 0) {
					Location.x = 0;
				}
				if (Location.x > 500) {
					Location.x = 500;
				}
				if (Location.y < 0) {
					Location.y = 0;
				}
				if (Location.y > 500) {
					Location.y = 500;
				}
			}
		
	}
}