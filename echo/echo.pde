Element newElement;
boolean creatingElement;

boolean multi = false;
// next task change cursor https://processing.org/reference/cursor_.html
ArrayList<Element> elements  = new ArrayList<Element>();
ArrayList<Element> selectedElements  = new ArrayList<Element>();// moved from elements arrayList for temporary time during manupulation
Menu menu;
void setup(){
  size(512, 512);
background(255);
  Element c = new Circle(Type.Circle,100,100,50,50,color(255,0,0),color(255), 0);
  elements.add(c);

  Element s = new Square(Type.Square,200,100,50,50,color(25,200,50),color(0), 3);
  elements.add(s);

  Element d = new Square(Type.Square,200,200,50,50,color(255,200,50),color(0), 0);
  elements.add(d);
 
   PVector dir = new PVector(0.9,0.8);// determines the directi
  //((Shape)elements.get(1)).repeat(6,4,dir);
  ((Shape)elements.get(0)).repeatD(6,4,dir);
 menu = new Menu(mouseX,pmouseY,9);
 menu.visible = false;
}
void draw(){
  background(255);

 for (int i = 0; i < elements.size(); ++i) {
   
    if (elements.get(i).elementType == Type.Circle){
    //((elements.get(i).elementType)elements.get(i)).draw();
    ((Circle)elements.get(i)).draw();
    }else if(elements.get(i).elementType == Type.Square)
    {
      ((Square)elements.get(i)).draw();
    }
    
    }
    for (int i = 0; i < selectedElements.size(); ++i) {
    if (dist(mouseX,mouseY,elements.get(i).posX,elements.get(i).posY)<elements.get(i).w){
    cursor(MOVE);
    }else{
    cursor(ARROW);
    }
    if (selectedElements.get(i).elementType == Type.Circle){
   
    ((Circle)selectedElements.get(i)).draw();
    }else if(selectedElements.get(i).elementType == Type.Square)
    {
      ((Square)selectedElements.get(i)).draw();
    }
    selectedElements.get(i).display();
    }

menu.draw();
}

  void mousePressed() 
{ 
    menu.mousePressed();
  if (mouseButton == LEFT)  // left button
  {
    if (mouseEvent.getClickCount()==2) {  // double-click
      menu = new Menu(mouseX,pmouseY,6);
      menu.visible = true;

    }
    else {
      
      println("left-click");
      for (int i = 0; i < selectedElements.size(); ++i) {
    //elements.get(i).selected = false;
      elements.add(selectedElements.get(selectedElements.size()-1));
      if(!multi){
        selectedElements.remove(selectedElements.size()-1);
        break;
      }
      
    }
  for (int j = elements.size()-1; j > -0.1; --j) {
    // this loop is done in reverse to allow the element appearing on top to be moved first
   if (dist(mouseX,mouseY,5+elements.get(j).posX,5+elements.get(j).posY)<elements.get(j).w-5){
       selectedElements.add(elements.get(j));
       elements.remove(j);
        break;
       
    } 
  }
    }
  }
  else if (mouseButton == RIGHT) // right button
  {
    println("right");
  }
}
void mouseDragged(){
  for(int i = 0; i < selectedElements.size();i++)
   selectedElements.get(i).drag(mouseX,mouseY);
  
}

void keyPressed(){

 // The keys included in the ASCII specification (BACKSPACE, TAB, ENTER, RETURN, ESC, and DELETE) do not require checking to see if the key is coded
  if (key == CODED) {
    float s = 2;
    for(int i = 0; i<selectedElements.size(); i++){
    if (keyCode == UP) {
      
        selectedElements.get(i).move(0,-s);
      
    } else if (keyCode == DOWN) {
     selectedElements.get(i).move(0,s);
    }
    else if (keyCode == LEFT) {
     selectedElements.get(i).move(-s,0);
    } 
    else if (keyCode == RIGHT) {
      selectedElements.get(i).move(s,0);
    }
    
    }
    println(keyCode);
  }

}
	