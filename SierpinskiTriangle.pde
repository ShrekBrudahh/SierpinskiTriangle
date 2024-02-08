double size = 400;
double cont = 0;
int numCopies = 10;

void setup(){
  size(700,700);
}

void draw(){
  background(0);
  cont += PI/180/2;
  for (int i = 0; i <= 200; i+=50){
    sierpinski((float)(350-(size/2*(i)/200) + i*cos(cont)),(float)(350-(size/2*(i)/200)+ i*sin(cont)),(float)(size*(i)/200));
  }
}

public void copyT(float x,float y,float len,int n){
  if (n <=0){
    sierpinski(x,y,len);
  }else{
    copyT((float)(x + n*cos(cont)),(float)(y + n*sin(cont)),len,n-1);
  }
}

public void sierpinski(float x, float y, float len) {
  if (len <= 10){
    triangle(x,y,x+len,y,x+len/2,y+len);
  }else{
    fill(0);
    stroke(255);
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y+len/2,len/2);
  }
}

public double cos(double d){
  return Math.cos(d);
}

public double sin(double d){
  return Math.sin(d);
}
