
public class Item{
	float ix;
	float iy;
boolean set = false;
	public Item (float tempX,float tempY) {
		ix = tempX;
		iy = tempY;
	}
	void draw(int i,int n){
  noFill();
  strokeWeight(3);
  if(!set){
   ix  = ix+Cx(60,i*(360/n));
	 iy = iy+Cy(60,i*(360/n));
  set = true;  
  }
    
    if(dist(mouseX,mouseY,ix,iy) <itemSize-20){
    //stroke(50,50,50,150);
    itemSize = 52;
    }else{
    //stroke(50,50,50,50);
    itemSize = 47;
    }
    ellipse(ix, iy, itemSize, itemSize);
    pushMatrix();
    translate(-(itemSize-5)/2,-(itemSize-5)/2);
    shape(pallet,ix, iy, itemSize-5, itemSize-5); 
     
    popMatrix();
		//rect(x,y,10,60);
	}
 void mousePressed() {
   if(dist(mouseX,mouseY,ix,iy) <itemSize-20){
     println(mouseX,mouseY);
   }
  }
}