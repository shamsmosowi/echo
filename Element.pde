public enum Type {Circle,Square,line}
class Element{
  Type elementType;
 	float posX;
  float posY;
  float w;
  float h;
  float xd = -10;float yd;

  Element(float tempPosX,float tempPosY,float tempW,float tempH){

  posX = tempPosX;
  posY = tempPosY;
  w = tempW;
  h = tempH;
  }
  void setType(Type tempType){
  elementType = tempType;
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

}