package  {
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.ui.*;

	public class Program extends MovieClip {

		var myPlayerTracks:MovieClip = new PlayerTracks;
		var myPlayerTurret:MovieClip = new PlayerTurret;
		
		var myEnemyTracks:MovieClip = new EnemyTracks;
		var myEnemyTurret:MovieClip = new EnemyTurret;
		
		var PBullets: Array = new Array;
		var EBullets: Array = new Array;

		
		public var Pbullet:MovieClip;
	
		public var Ebullet:MovieClip;
		
		public function Program() {
			var a:Vector2 = new Vector2(4, 3);
			this.addChild(myPlayerTracks);
			this.addChild(myEnemyTracks);
			//addEventListener(Event.ENTER_FRAME, Update);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
            stage.addEventListener(KeyboardEvent.KEY_UP, onKeyRelease);
		} // end of Program constructor
		

		
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
				Pbullet = new PlayerBullet(); 
      
				Pbullet.x = myPlayerTracks.x; 
				Pbullet.y = 430;
      
				addChild(Pbullet);
				PBullets.push(Pbullet)
				
				UpdateBullets();
				}
				
			public function EnemyShoot() : void 
			{
				Ebullet = new EnemyBullet(); 
      
				Ebullet.x = myEnemyTracks.x; 
				Ebullet.y = 70;
      
				addChild(Ebullet); 
				EBullets.push(Ebullet)
				UpdateBullets();
				}
				
			public function UpdateBullets() {
				if(60 <= PBullets.length) {
					
				}
				
				if(60 <= EBullets.length) {
					
				}
			}

	} // end of class
}// end of package
