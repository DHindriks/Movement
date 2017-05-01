package {

	import flash.display.MovieClip;
	import flash.events.*
	import flash.ui.*;

	public class PlayerTracks extends MovieClip {
		var myTracks: MovieClip;
		var Velocity: Vector2;
		var Location: Vector2;
		var myPlayerTurret:MovieClip = new PlayerTurret;
		var Turnspeed: Number = 1.5;
		var Angle: Number = 0;
		var Buttonup: Boolean;
		var Buttondown: Boolean;
		var Buttonleft: Boolean;
		var Buttonright: Boolean;

		public function PlayerTracks() {
			// constructor code
			addChild(myPlayerTurret);
			Velocity = new Vector2(0, 0);
			Location = new Vector2(450, 450);
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
				
				if (Buttonright == true) {
				Velocity.x =+ 2
				}
				
				if (Buttonleft == true) {
				Velocity.x =- 2 
				}
				
				x = Location.x
				y = Location.y
			}
		
			public function Update(e:Event) {
				Controller();
				
				if (Location.x < 0) {
					Location.x = 0
				}
				if (Location.x > 500) {
					Location.x = 500
				}
				if (Location.y < 0) {
					Location.y = 0
				}
				if (Location.y > 500) {
					Location.y = 500
				}
				
			}
		
	}
}