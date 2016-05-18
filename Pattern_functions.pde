void repeatX(Element e, int n,float padding){
  for(int i = 1; i<n+1;i++){
    Element tempElement = new Circle(1,1,1,1,color(24,3,234),color(255), 0);
    float nPos = i*(e.posX + padding);
    if (e.elementType == Type.Circle){
      Circle c = (Circle)e;
      tempElement = new Circle(nPos,c.posY,c.w,c.h,c.fillColor,c.strokeColor, c.strokeSize);
    }else  if(e.elementType == Type.Square){
       Square c = (Square)e; 
      tempElement = new Square(nPos,c.posY,c.w,c.h,c.fillColor,c.strokeColor, c.strokeSize);
    }
  
    elements.add(tempElement);
  }

}
void repeatY(Element e, int n,float padding){
   

}
void repeatXY(Element e, int n){


}