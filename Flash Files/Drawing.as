package {
    
    import flash.display.MovieClip;
    import flash.display.*;
    import flash.events.*;

    public class Drawing extends MovieClip {
        
        private var drawing:Boolean;
        private var drawBoard:Sprite;
        
        public function Drawing() {

            drawBoard = new Sprite();
            mBorder.addChild(drawBoard);

			drawBoard.graphics.lineStyle(4, 0x000000);
            drawing = false;
            mBorder.addEventListener(MouseEvent.MOUSE_DOWN, startDrawing);
            mBorder.addEventListener(MouseEvent.MOUSE_MOVE, draws);
            mBorder.addEventListener(MouseEvent.MOUSE_UP, stopDrawing);
            
        }
        
        public function startDrawing(evt:MouseEvent):void {
            
            drawBoard.graphics.moveTo(mouseX, mouseY);
            drawing = true;
            
        }
        
        public function draws(evt:MouseEvent):void {
            
            if (drawing) {
                drawBoard.graphics.lineTo(mouseX,mouseY);

            }


        }
        
        public function stopDrawing(evt:MouseEvent):void {

            drawing = false;
        }
    }
}