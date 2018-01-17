package lib {

	import flash.display.MovieClip;
	import flash.events.*;
	import lib.calc;

	//----------------------------------------------
	// Author: Andrés Felipe Ceballos Marín
	// eMail: andresfcebas@gmail.com
	//----------------------------------------------

	public class drop extends MovieClip {

		private var speed: Number = new Number();
		private var globalHeight: Number = 0;
		private var globalWidth: Number = 0;

		public function drop() {
			
		}

		public function iniciarDrop(_width: Number, _height: Number): void {			

			globalWidth = _width;
			globalHeight = _height;	
			
			speed = calc.randRange(40, 100);

			this.y = calc.randRange(1, _height);
			this.x = calc.randRange(1, _width);
			this.alpha = calc.randRange(0, 100) / 100;

			this.addEventListener(Event.ENTER_FRAME, funcionMover);
		}

		function funcionMover(event: Event): void {
			this.y += speed;
			this.x += Math.cos(this.x / 100);

			if (this.y > globalHeight) {
				
				speed = calc.randRange(40, 100);
				
				this.x = calc.randRange(1, globalWidth + this.height);
				this.y = - this.height;
				this.alpha = calc.randRange(0, 100) / 100;
			}
		}

	}

}