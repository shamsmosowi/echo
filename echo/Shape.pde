class Shape extends Element{
  color fillColor;
  color strokeColor;
  float strokeSize;
  Shape(Type tempType,float tempPosX,float tempPosY,float tempW,float tempH,color tempFill,color tempStroke, float tempSS){
    super(tempType,tempPosX,tempPosY,tempW,tempH);
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
  void repeatX(int n,float padding){
  for(int i = 1; i<n+1;i++){
     Element tempElement = new Circle(Type.Circle,200,posY,w,h,fillColor,strokeColor, strokeSize);
   
    float nPos = i*(this.posX + padding);
    if (this.elementType == Type.Circle){
      println("circle");
      tempElement = new Circle(Type.Circle,nPos,posY,w,h,fillColor,strokeColor, strokeSize);
     
    }else  if(this.elementType == Type.Square){
      
      tempElement = new Square(Type.Circle,nPos,posY,w,h,fillColor,strokeColor, strokeSize);
       
    }
    println();
   println(tempElement.posX,tempElement.posY,tempElement.w,tempElement.h);
    elements.add(tempElement);
    
  }

}

}