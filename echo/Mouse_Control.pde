void mousePressed() { 
    menu.mousePressed();
  if (mouseButton == LEFT){
    if (mouseEvent.getClickCount()==2) {  // double-click
      menu = new Menu(mouseX,pmouseY,6);
      menu.visible = true;

    }
    else {
      
      println("left-click");
      for (int i = 0; i < selectedElements.size(); ++i) {
    //elements.get(i).selected = false;
      selectedElements.get(i).deSelect();
      
    }
  for (int j = elements.size()-1; j > -0.1; --j) {
    // this loop is done in reverse to allow the element appearing on top to be moved first
   elements.get(j).select();
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