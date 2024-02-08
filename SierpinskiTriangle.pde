public double size = 400;
public double cont = 0;
public int numCopies = 10;

void setup(){
  size(700,700);
}

void draw(){
  background(0);
  cont += PI/180/2;
  //sierpinski((float)(350-size/2),(float)(350-size/2),(float)(size));
  for (int i = 0; i <= 200; i+=50){
    sierpinski((float)(350-(size/2*(i)/200) + i*cos(cont)),(float)(350-(size/2*(i)/200)+ i*sin(cont)),(float)(size*(i)/200));
  }
  //sierpinski((float)(350-size/2 + 10*cos(cont)),(float)(350-size/2+ 10*sin(cont)),(float)(size));
  //copyT((float)(350-size/2),(float)(350-size/2),(float)(size),10);
}

public void copyT(float x,float y,float len,int n){
  if (n <=0){
    sierpinski(x,y,len);
    println("copied");
  }else{
    copyT((float)(x + n*cos(cont)),(float)(y + n*sin(cont)),len,n-1);
  }
}

public void sierpinski(float x, float y, float len) {
  //x = Math.abs(x);
  //y = Math.abs(y);
  //len = Math.abs(len);
  if (len <= 10){
    triangle(x,y,x+len,y,x+len/2,y+len);
    //rect(x,y,len,len);
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
