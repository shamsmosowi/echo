public class line extends Shape{

	public line(Type tempType,float tempPosX,float tempPosY,float tempW,float tempH,color tempFill,color tempStroke, float tempSS) {
    super(tempType,tempPosX,tempPosY,tempW,tempH,tempFill,tempStroke,tempSS);
	}
	void draw(){
		fill(fillColor);
		stroke(strokeColor);
		strokeWeight(strokeSize);
		line(posX, posY, w, h);
	}

}