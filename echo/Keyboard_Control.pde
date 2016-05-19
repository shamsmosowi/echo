void keyPressed(){

 // The keys included in the ASCII specification (BACKSPACE, TAB, ENTER, RETURN, ESC, and DELETE) do not require checking to see if the key is coded
  if(key==BACKSPACE){
       int s =selectedElements.size();
   for(int i = 0; i<s;i++){
   selectedElements.remove(0);
     
   }}
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