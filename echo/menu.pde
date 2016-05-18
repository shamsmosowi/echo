public float itemSize = 50;
PShape pallet;
public class Menu{
	boolean visible = false;
 float x;
float y;
 int n;
  
 Item [] items;

	public Menu (int tempX,int tempY,int tempN) {
    n = tempN;
		x = tempX;
		y = tempY;
		items = new Item[n]; 
  for(int i=0;i<n;i++){
    items[i] = new Item(x,y);
  }
	pallet = loadShape("images/paint-palette.svg");	
	}
	void draw(){
 if(visible){
		 for(int i=0;i<n;i++){
  
    items[i].draw(i,n);
   
  }
 }
	}
  void mousePressed(){
    
    if(visible){
      boolean pressed = false;
      for(int i = 0;i<n;i++){
        float ix  = x+Cx(60,i*(360/n));
         float iy = y+Cy(60,i*(360/n));
         if (dist(mouseX,mouseY,ix,iy)<itemSize){
           println(i);
          pressed = true;
         }
      }
      if (!pressed){
       visible = false;
      }
    
    }
  
  }
}