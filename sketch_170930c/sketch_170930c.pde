PImage img;
void setup(){
  size(800,800);
  background(0);
  img = loadImage("me.jpg");
  //image(img,0,0); //background is black and when you draw the image will come out
}

void draw(){
  color cc = img.get(mouseX,mouseY);
  float br= brightness(cc);//get the color's bright
  float hue=hue(cc);
  if(mousePressed){
    noStroke();
    fill(cc,50);
    
   ellipse(mouseX+random(-10,10),mouseY+random(-10,10),20,20);
   
   noStroke();
   fill(0,255,0,120);
  }
  }
void keyPressed(){
 if(key=='b'){
   background(0); //clean=create a new background 
 } 
 if(key=='s'){
   save("a1.png");//put in "project name"
 }

}