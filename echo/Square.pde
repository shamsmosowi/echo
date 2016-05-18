class Square extends Shape{

	public Square(Type tempType,float tempPosX,float tempPosY,float tempW,float tempH,color tempFill,color tempStroke, float tempSS) {
		super(tempType,tempPosX,tempPosY,tempW,tempH,tempFill,tempStroke,tempSS);
	}
	void draw(){
		fill(fillColor);
		stroke(strokeColor);
		strokeWeight(strokeSize);
		rect(posX, posY, w, h);
	}

}