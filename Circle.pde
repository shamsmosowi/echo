public class Circle extends Shape{

	public Circle(float tempPosX,float tempPosY,float tempW,float tempH,color tempFill,color tempStroke, float tempSS) {
		super(tempPosX,tempPosY,tempW,tempH,tempFill,tempStroke,tempSS);
	}
	void draw(){
    pushMatrix();
    translate(w/2,h/2);
		fill(fillColor);
    stroke(strokeColor);
		strokeWeight(strokeSize);
		ellipse(posX, posY, w, h);
    popMatrix();
	}

}