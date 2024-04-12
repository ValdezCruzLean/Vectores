class Vector{
PVector origen;
PVector destino; 
PImage imagen;

public Vector(){
  
}

public Vector(PVector origen, PVector destino){
this.origen = origen;
this.destino = destino;
}

public void display(){
 imagen = loadImage("mario.png"); 
 imagen.resize(60, 60);
  image(imagen, this.origen.x-10, this.origen.y);
strokeWeight(4);
line(origen.x,origen.y,origen.x+destino.x,origen.y+destino.y);
 
}

public float obtenerProductoPunto(Vector vector){
return PVector.dot(this.getDestino(),vector.getDestino());
}

public void setOrigen(PVector origen){
this.origen= origen;
}
public PVector getOrigen(){
return this.origen;
}
public void setDestino(PVector destino){
this.destino= destino;
}
public PVector getDestino(){
return this.destino;
}

}
