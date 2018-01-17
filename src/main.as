package src {

	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.*;

	import lib.calc;
	import lib.drop;	

	//----------------------------------------------
	// Author: Andrés Felipe Ceballos Marín
	// eMail: andresfcebas@gmail.com
	//----------------------------------------------

	public class main extends MovieClip {

		public function initial(): void {	

			var rainParticles: Sprite = new Sprite();

			for (var i = 1; i <= 50; i++) {
				var _drop: drop = new drop();
				_drop.name = "drop" + i;
				rainParticles.addChild(_drop);	
				_drop.iniciarDrop(this.stage.width, this.stage.height);
			}	
			
			addChild(rainParticles);			
			
		}

		public function main() {
			initial();			
		}
	}
}