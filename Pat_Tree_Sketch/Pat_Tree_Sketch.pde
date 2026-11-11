//BenchPress data and comments
float[] benchWeights = {50.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 75.0, 77.5, 80.0, 85.0, 81.5, 82.0, 83.5, 85.0};
int[] benchSets = {3, 3, 3};
int[] benchReps = {10, 8, 10};
String[] benchDates = {
  "Week 1",
  "Week 2",
  "Week 3",
  "Week 4",
  "Week 5",
  "Week 6",
  "Week 7",
  "Week 8",
  "Week 9",
  "Week 10",
  "Week 11",
  "Week 12",
  "Week 13",
  "Week 14",
  "Week 15",
};

void setup() {
  size(800, 600);
}

void draw() {
  background(230, 240, 230);

  // Tree trunk
  fill(120, 75, 40);
  rect(380, 300, 40, 250);
    //the actual tree itself
  fill(34, 139, 34);
  ellipse(400, 230, 300, 300);
  //next is a dotted line which I did have to use AI for as I wasn't sure I did this with the following prompt: I am trying to create a dotted line now down the middle how do I do that?
  
stroke(0);       
strokeWeight(3); 

for (int y = 80; y < 600; y += 20) {
  line(400, y, 400, y + 10);
  drawLeaf(280, 280);
drawLeaf(450, 180);  
}
}

void drawLeaf(float x, float y) {
  fill(80, 180, 70);
  stroke(30, 100, 40);
  strokeWeight(1);

beginShape();
vertex(x, y);
bezierVertex(x + 5, y - 12, x + 20, y - 12, x + 25, y);
bezierVertex(x + 20, y + 12, x + 5, y + 12, x, y);
endShape(CLOSE);

line(x, y, x + 25, y);

}
