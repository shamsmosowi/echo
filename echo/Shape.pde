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
   void repeat(int n,float padding,PVector D){
  for(int i = 1; i<n+1;i++){
     Element tempElement = new Circle(Type.Circle,200,posY,w,h,fillColor,strokeColor, strokeSize);
    float nPosX = this.posX+ (i*(this.w + padding))*D.x;
    float nPosY = this.posY+ (i*(this.h + padding))*D.y;
    if (this.elementType == Type.Circle){
      
      tempElement = new Circle(Type.Circle,nPosX,nPosY,w,h,fillColor,strokeColor, strokeSize);
     
    }else  if(this.elementType == Type.Square){
      tempElement = new Square(Type.Square,nPosX,nPosY,w,h,fillColor,strokeColor, strokeSize);
     }
    elements.add(tempElement);
    }

  }
  
  void repeatD(int n,float padding,PVector D){
    for(int j = 1; j<n+1;j++){
      float nPosX = this.posX+ (j*(this.w + padding))*D.x;
  for(int i = 1; i<n+1;i++){
     Element tempElement = new Circle(Type.Circle,200,posY,w,h,fillColor,strokeColor, strokeSize);
    
    float nPosY = this.posY+ (i*(this.h + padding))*D.y;
    if (this.elementType == Type.Circle){
      
      tempElement = new Circle(Type.Circle,nPosX,nPosY,w,h,fillColor,strokeColor, strokeSize);
     
    }else  if(this.elementType == Type.Square){
      tempElement = new Square(Type.Square,nPosX,nPosY,w,h,fillColor,strokeColor, strokeSize);
     }
    elements.add(tempElement);
    }
  
  }
}

  

}