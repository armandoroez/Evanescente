void Pantallas(){
switch (pantalla){
  
  
case 0:
image(intro,0,0);
textSize(32); 
fill(inicio);
text("INICIO", 190, 380); 
if (mouseX < 290 && mouseX > 185 && mouseY < 380 && mouseY > 355){
inicio = 180;
} else {inicio = 255;}
if (mousePressed && mouseX < 290 && mouseX > 185 && mouseY < 380 && mouseY > 355){
pantalla=1;
} 
break;


case 1:
 scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
 Rectangle[] faces = opencv.detect();
  
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
   // rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
   switch (rostros){
     case 0:
     pushMatrix();
     scale(2);
     translate(-100,-70);
    image(Rostro1, faces[i].x,faces[i].y, faces[i].width, faces[i].height);
    popMatrix();
    break;
    
    case 1:
    pushMatrix();
    scale(2);
     translate(-100,-70);
    image(Rostro2, faces[i].x,faces[i].y, faces[i].width, faces[i].height);
    popMatrix();
  break;
  
    case 2:
    pushMatrix();
    scale(2);
     translate(-100,-70);
    image(Rostro3, faces[i].x,faces[i].y, faces[i].width, faces[i].height);
    popMatrix();
    break;
    
     case 3:
     pushMatrix();
     scale(2);
     translate(-100,-70);
    image(Rostro4, faces[i].x,faces[i].y, faces[i].width, faces[i].height);
    popMatrix();
    break;
    
     case 4:
     pushMatrix();
     scale(2);
     translate(-100,-70);
    image(Rostro5, faces[i].x,faces[i].y, faces[i].width, faces[i].height);
    popMatrix();
    break;
  }
  }
 if (keyPressed) {
    if (key == 'a' || key == 'A') {
      rostros = rostros+1;
      keyPressed=false;
    
    
    if (rostros > 4){
    rostros = 0;
    }}}
    
    
    textSize(10); 
fill(255);
text("Presiona 'a' para cambiar", 10, 20); 
text("Presiona 'i' para ver el propósito", 10, 30); 
if (keyPressed) {
    if (key == 'i' || key == 'I') {
      pantalla= 2;
      keyPressed=false;}}

break;    
  case 2: 
  image(info, 0,0);
  
   textSize(20); 
fill(255);
  text("Presiona 'i' para volver", 400, 19); 
  if (keyPressed) {
    if (key == 'i' || key == 'I') {
      pantalla= 1;
      keyPressed=false;}}
  break;
}
}