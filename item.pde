
public class Item{
	float ix;
	float iy;
boolean set = false;
	public Item (float tempX,float tempY) {
		ix = tempX;
		iy = tempY;
	}
	void draw(int i,int n){
  noStroke();
  if(!set){
   ix  = ix+Cx(60,i*(360/n));
	 iy = iy+Cy(60,i*(360/n));
  set = true;  
  }
    if(dist(mouseX,mouseY,ix,iy) <itemSize-20){
		fill(50,50,50,150);
    }else{
    fill(50,50,50,50);
    }
    ellipse(ix, iy, itemSize, itemSize);
    
		//rect(x,y,10,60);
	}
 void mousePressed() {
   if(dist(mouseX,mouseY,ix,iy) <itemSize-20){
     println(mouseX,mouseY);
   }
  }
}