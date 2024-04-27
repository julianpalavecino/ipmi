PImage img;

void setup(){
size (800, 400);
img = loadImage("panda.jpg");
background(125,77,48);
}

void draw(){
image(img, 0, 0, 400,400);
println("X:");
println(mouseX);
println("Y:");
println(mouseY);
fill(15);
ellipse(650,400,380,255);
fill(255);
ellipse(635,215,300,270);
fill(0,125,0);
triangle(690,500,500,350,100,800);
fill(15);
ellipse(520,90,90,120);
ellipse(755,90,90,120);
fill(255);
ellipse(635,260,90,100);
fill(0);
ellipse(590,200,60,80);
ellipse(680,210,60,80);
fill(255);
circle(600,190,20);
circle(670,195,20);
fill(0);
circle(600,190,10);
circle(670,195,10);
ellipse(635,270,70,30);
line(620,298,650,298);
fill(0,125,0);
triangle(760,340,740,400,800,400);
fill(0,135,0);
triangle(732,360,712,400,749,400);
fill(0,125,0);
triangle(605,375,550,400,610,380);
fill(0,125,0);
triangle(650,365,640,400,660,400);
fill(0,125,0);
triangle(675,380,665,400,680,400);
fill(0,125,0);
triangle(685,380,689,390,715,400);
fill(0,125,0);
triangle(630,385,625,400,642,400);










}
