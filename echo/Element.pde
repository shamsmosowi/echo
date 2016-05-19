public enum Type {Circle,Square,line}
class Element{
  Type elementType;
 	float posX;
  float posY;
  float w;
  float h;
  float xd = -10;float yd;

  Element(Type tempType,float tempPosX,float tempPosY,float tempW,float tempH){
  elementType = tempType;
  posX = tempPosX;
  posY = tempPosY;
  w = tempW;
  h = tempH;
  }

  void drag(float x,float y){
  	if (xd == -10){
        xd = x;yd=y;
      }
      //if(posX > -(w-5) &&posY > -(h-5)){
  	posX = posX +(x-xd);
  	posY = posY +(y-yd);
    xd = x;
    yd = y;
      //}
  }
  void resize(float x,float y){
    w = w+(x-xd);
    h = h+(y-yd);
  }
  void display(){
    fill(200,200,250);
    stroke(255);
    strokeWeight(1);
    ellipse(posX,posY,5,5);
    ellipse(posX+w,posY,5,5);
    ellipse(posX+w,posY+h,5,5);
    ellipse(posX,posY+h,5,5);
  }
  void move(float x, float y){
  posX = posX+x;posY =posY+y;
  }
  void draw(){
  switch(this.elementType){
    case Circle:
    ((Circle)this).draw();
    break;
    case Square:
      ((Square)this).draw();
      break;  
    }
  }
  void select(){
   if (dist(mouseX,mouseY,this.posX,this.posY)<this.w){
       selectedElements.add(this);
       elements.remove(this);
    } 
  }
  void deSelect(){
      elements.add(selectedElements.get(selectedElements.size()-1));
      selectedElements.remove(selectedElements.size()-1);
  }
}