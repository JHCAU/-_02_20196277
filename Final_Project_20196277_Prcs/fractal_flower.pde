class flower{
  
  float x, y, angle, len;
  int lvl, max;
  
  flower(float x, float y, float angle, float len, int lvl, int max) {
    this.x = x;
    this.y = y;
    this.angle = angle;
    this.len = len;
    this.lvl = lvl;
    this.max = max;
    show();
  }
  
  void show() {
    pushMatrix();
    
    translate(x,y);
    
    strokeWeight(map(lvl,0,max,10,1));
    line(0,0,0,-len);
    
    if(lvl < max){
      translate(0,-len);
      rotate(angle);
      new flower(0,0,angle,len,lvl+1,max);
      rotate(-2*angle + random(-1,1));
      new flower(0,0,angle,len,lvl+1,max);
      
     

    }
    if(lvl == max){
      translate(0,-len);
      noStroke();
      fill(random(255), random(255), random(255));
      stroke(170,255,170);
      ellipse(0, -len, 10,10);
    }
    popMatrix();
  //  noLoop();
  }
}
