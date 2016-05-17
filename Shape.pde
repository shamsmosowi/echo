class Shape extends Element{
  color fillColor;
  color strokeColor;
  float strokeSize;
  Shape(float tempPosX,float tempPosY,float tempW,float tempH,color tempFill,color tempStroke, float tempSS){
    super(tempPosX,tempPosY,tempW,tempH);
  	fillColor = tempFill;
  	strokeColor = tempStroke;
   	strokeSize = tempSS;
  }
  void changeFill(color c){
  	fillColor = c;
  }
  void changeStroke(color c){
  	strokeColor = c;
  }
  void changeStroke(float c){
  	strokeSize = c;
  }

}