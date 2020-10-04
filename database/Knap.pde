class Knap {

  PVector loc;
  int r, g, b;
  float widthSize;
  float heightSize;
  float kant;
  String name;
  Timer tid;

  Knap (float loc_x, float loc_y, float widthSize_, float heightSize_, String name_) {
    loc = new PVector(loc_x, loc_y);
    r = 0;
    g = 200;
    b = 0;
    widthSize = widthSize_;
    heightSize = heightSize_;
    kant = 10;
    name = name_;
    tid = new Timer(0.1);
  }

  void update() {
    tid.countDown();
    clicked();
    display();
  }

  void display() {
    farveSkift();
    rectMode(CENTER);
    fill(r, g, b);
    rect(loc.x, loc.y, widthSize, heightSize, kant);
    fill(0);
    textAlign(CENTER);
    textSize((heightSize+widthSize)*0.1);
    text(name, loc.x, loc.y, widthSize, heightSize);
  }


  void farveSkift() {
    if ( tid.klar ) {
      r = 0;
      g = 200;
    } else if ( !tid.klar ) {
      r = 200;
      g = 0;
    }
  }

  boolean clicked () {
    if ( tid.klar && mousePressed && mouseX > loc.x - widthSize*0.5 && mouseX < loc.x + widthSize*0.5 && mouseY > loc.y - heightSize*0.5 && mouseY < loc.y + heightSize*0.5 ) {
      tid.klar = false;
      return true;
    } else return false;
  }
}
