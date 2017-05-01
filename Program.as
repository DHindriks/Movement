/*
Output should be:

a = [4, 3]
a.mag() = 5
a.heading() = 0.6435011087932844 (radians)
a.heading() = 36.86989764584402 (degrees)
a.normalize() = [0.8, 0.6]
b = [2, 1]
a.add(b) = [2.8, 1.6]
*/

package  {
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.ui.*;

	public class Program extends MovieClip {

		var myPlayerTracks:MovieClip = new PlayerTracks;
		var myPlayerTurret:MovieClip = new PlayerTurret;
		
		var myEnemyTracks:MovieClip = new EnemyTracks;
		var myEnemyTurret:MovieClip = new EnemyTurret;
		
		var Playerbullets: Array = new Array;
		var Enemybullets: Array = new Array;
		
		public function Program() {
			var a:Vector2 = new Vector2(4, 3);
			this.addChild(myPlayerTracks);
			this.addChild(myEnemyTracks);
			addEventListener(Event.ENTER_FRAME, Update);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
            stage.addEventListener(KeyboardEvent.KEY_UP, onKeyRelease);
		} // end of Program constructor
		
		public function Update() {
        if (myPlayerTracks.hitTestObject(myPlayerTurret))
			{
			trace("Shot")
			}
}
		
		public function onKeyPress(e:KeyboardEvent) {
			switch(e.keyCode)
			{
				case Keyboard.A :
				myPlayerTracks.MoveLeft();
				break;
				
				case Keyboard.D :
				myPlayerTracks.MoveRight();
				break;
				
				case Keyboard.W :
					PlayerShoot();
				break;
				
				case Keyboard.UP :
					EnemyShoot();
				break;
				
				case Keyboard.LEFT :
				myEnemyTracks.MoveLeft();
				break;
				
				case Keyboard.RIGHT :
				myEnemyTracks.MoveRight();
				break;
				
				default :
				break;
			}
			
			}
		
		public function onKeyRelease(e:KeyboardEvent) {
	
			switch(e.keyCode)
			{
				case Keyboard.A :
				myPlayerTracks.Stop();
				break;
				
				case Keyboard.D :
				myPlayerTracks.Stop();
				break;
				
				case Keyboard.W :
				break;
				
				case Keyboard.UP :
				break;
				
				case Keyboard.LEFT :
				myEnemyTracks.Stop();
				break;
				
				case Keyboard.RIGHT :
				myEnemyTracks.Stop();
				break;
				
				default :
				break;
			}
			
			}
			
			public function PlayerShoot() : void 
			{
				var Pbullet:PlayerBullet = new PlayerBullet(); 
      
				Pbullet.x = myPlayerTracks.x; 
				Pbullet.y = 430;
      
				addChild(Pbullet); 
				
				}
				
			public function EnemyShoot() : void 
			{
				var Ebullet:EnemyBullet = new EnemyBullet(); 
      
				Ebullet.x = myEnemyTracks.x; 
				Ebullet.y = 70;
      
				addChild(Ebullet); 
				
				}

	} // end of class
}// end of package
