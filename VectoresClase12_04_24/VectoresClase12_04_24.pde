Vector marioVector;
PVector posicionEstrella;
Vector vectorMarioEstrella;
PImage starImagen;
PImage worldImagen;
public void setup(){
size(500,500);
marioVector = new Vector(new PVector(0,0), new PVector(10,0));
posicionEstrella= new PVector(width/2,height/2);
vectorMarioEstrella= new Vector();
}

public void draw(){
background(255);
starImagen = loadImage("mundo.jpeg"); 
starImagen.resize(500, 500);
image(starImagen, 0, 0);
dibujarVarita();
marioVector.setOrigen(new PVector(mouseX,mouseY));
marioVector.display();
dibujarVectorMarioestrella();
escribirMensaje();
}

public void dibujarVectorMarioestrella(){
vectorMarioEstrella.setOrigen(marioVector.getOrigen());
vectorMarioEstrella.setDestino(PVector.sub(posicionEstrella,marioVector.getOrigen()).normalize().mult(10));
vectorMarioEstrella.display();
}

public void dibujarVarita(){
strokeWeight(10);
point(posicionEstrella.x,posicionEstrella.y);
starImagen = loadImage("estrellita.png"); 
 starImagen.resize(60, 60);
  image(starImagen, this.posicionEstrella.x-30, this.posicionEstrella.y-30);
}
public void escribirMensaje(){
  float dotProduct = marioVector.obtenerProductoPunto(vectorMarioEstrella);
  //println(dotProduct);
  textSize(20);
  fill(0);
  text(dotProduct,20,20);
}
