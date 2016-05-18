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

}