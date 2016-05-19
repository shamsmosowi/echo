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
  for (int i = 0; i < elements.size(); ++i) {elements.get(i).draw();}
  for (int i = 0; i < selectedElements.size(); ++i) {selectedElements.get(i).draw();selectedElements.get(i).display();}

menu.draw();
}

/* if (dist(mouseX,mouseY,elements.get(i).posX,elements.get(i).posY)<elements.get(i).w){
    cursor(MOVE);
    }else{
    cursor(ARROW);
    }*/