void setup() {
  size(800,800);
  background(0,0,0);
  fill(#bbbbbb);
  noStroke();
  ellipse(400,100,200,100);
  ellipse(300,150,200,100);
  ellipse(450,150,200,100);
  
  ellipse(150,250,200,100);
  ellipse(30,300,200,100);
  ellipse(210,300,200,100);
  
  ellipse(650,250,200,100);
  ellipse(530,300,200,100);
  ellipse(710,300,200,100);
  fill(#06402B);
  rect(0,600,800,400);
  rect(50,650,20,100);
  strokeWeight(2);
  stroke(0,0,0);
  //greypart
  fill(114,114,114);
  rect(100,620,40,130);
  //yellow part
  fill(255,215,0);
  triangle(60,670,180,670,120,560);
  //lighting
  fill(0,0,0);
  triangle(90,625,125,625,130,585);
  triangle(115,620,150,620,110,660);
  fill(87, 87, 86); 
  rect(300,600,200,400);
  fill(255,255,0);
  rect(390,600,20,30);
  rect(390,650,20,30);
  rect(390,700,20,30);
  rect(390,750,20,30);
}

void draw() {
  // nothing here for now
}

void mousePressed() {
 
 
  size(800,800);
  background(0,0,0);
  fill(#bbbbbb);
  noStroke();
  ellipse(400,100,200,100);
  ellipse(300,150,200,100);
  ellipse(450,150,200,100);
 
  ellipse(150,250,200,100);
  ellipse(30,300,200,100);
  ellipse(210,300,200,100);
  
  ellipse(650,250,200,100);
  ellipse(530,300,200,100);
  ellipse(710,300,200,100);
  fill(#06402B);
  rect(0,600,800,400);
  strokeWeight(2);
  stroke(0,0,0);
  //greypart
  fill(114,114,114);
  rect(100,620,40,130);
  //yellow part
  fill(255,215,0);
  triangle(60,670,180,670,120,560);
  //lighting
  fill(0,0,0);
  triangle(90,625,125,625,130,585);
  triangle(115,620,150,620,110,660);
  //road
  fill(87, 87, 86); 
  rect(300,600,200,400);
  fill(255,255,0);
  rect(390,600,20,30);
  rect(390,650,20,30);
  rect(390,700,20,30);
  rect(390,750,20,30);

  
  if(mouseX<270){
    stroke(0,0,255);
    strokeWeight(4);
    drawLightningBolt(mouseX, 355, mouseX, height);
}
  else if(mouseX>270 && mouseX<500){
    stroke(255,255,0);
    strokeWeight(4);
    drawLightningBolt(mouseX, 200, mouseX, height);
  } 
  else{
    stroke(255, 0, 0);
    strokeWeight(4);
    drawLightningBolt(mouseX, 355, mouseX, height);
  }
  }


  

void drawLightningBolt(float x1, float y1, float x2, float y2) {
  float x = x1;
  float y = y1;

  while (y < y2) {
    float nextX = x + random(-20, 20);
    float nextY = y + random(10, 30);
    line(x, y, nextX, nextY);
    x = nextX;
    y = nextY;
  }
}
