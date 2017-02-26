package  
{  
    import flash.display.MovieClip;  
    import flash.text.TextField;
    import flash.events.Event;
	import flash.ui.Keyboard;
	import flash.events.KeyboardEvent;
	import StringCalc

    public class Main extends MovieClip  
    {  
	var mainInput:TextField;
	var mainOutput:TextField;
	var inputArray = new Array(); //var inputArray:Array;
	var calculation:Number;
	
        public function Main()  {
			mainInput = new TextField();
			mainOutput = new TextField();
			mainOutput.border = true;
			mainInput.border = true;
			mainInput.height = 50;
			mainInput.width = stage.stageWidth;
			mainOutput.width = stage.stageWidth;
			mainOutput.y = mainInput.height;
			mainOutput.multiline = true;
			mainOutput.wordWrap = true;
			mainOutput.text = "Enter in textbox above and press enter";
			mainInput.type = "input";
			this.addChild(mainInput);
			this.addChild(mainOutput);
			this.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);
        } 
		
		public function Calculate():void {
			inputArray = mainInput.text.split(" ");
			trace("First word: " + inputArray[0] + " Length: " + inputArray.length);
			calculation = StringCalc.calculate(mainInput.text);
			mainOutput.text = mainInput.text + " = " + calculation.toString() + "\n" + mainOutput.text;
			mainInput.text = "";
			/*calculation = inputArray[0];
			var bracket:Array;

			for (var j:Number=0; j<inputArray.length; j++) {
				if (inputArray[j] == "(") {
					bracket[0] = inputArray[j].indexOf();
					trace(bracket[0]);
						for (var b:Number=j; b<inputArray.length; b++) {
							trace("blah" + inputArray[b]);
							if (inputArray[j] == ")") {
								trace("bracket ) " + inputArray[j]);
							}
						}
				}
			}
			
			for (var i:Number=1; i<inputArray.length; i++) {
				if (!isNaN(Number(inputArray[i]))) {
    				trace("number!");
				}
				switch(inputArray[i]) {
					
					case "+":
					calculation += Number(inputArray[i+1]);
					mainOutput.text = calculation + "\n" + mainOutput.text;
					break;
						
					case "-":
					calculation -= inputArray[i+1];
					mainOutput.text = calculation + "\n" + mainOutput.text;
					break;
						
					case "÷":
					calculation /= inputArray[i+1];
					mainOutput.text = calculation + "\n" + mainOutput.text;
					break;
						
					case "/":
					calculation /= inputArray[i+1];
					mainOutput.text = calculation + "\n" + mainOutput.text;
					break;
						
					case "*":
					calculation *= inputArray[i+1];
					mainOutput.text = calculation + "\n" + mainOutput.text;
					break;
					
					case "×":
					calculation *= inputArray[i+1];
					mainOutput.text = calculation + "\n" + mainOutput.text;
					break;
					
					case "(":
					calculation *= inputArray[i+1];
					mainOutput.text = calculation + "\n" + mainOutput.text;
					break;
				}
				trace (inputArray[i]);
			}
		}*/
		}
		
		public function keyDownHandler(event : KeyboardEvent):void {
   			if (event.keyCode == Keyboard.ENTER) {
				Calculate();
    		}
		}
    }  
}  