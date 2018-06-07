import gab.opencv.*;
import processing.video.*;
import java.awt.*;
import processing.sound.*;
SoundFile fuerte;

Capture video;
OpenCV opencv;
PImage intro, info, Rostro1, Rostro2, Rostro3, Rostro4, Rostro5;
int pantalla = 0;
int inicio = 255;
int rostros=0;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  fuerte = new SoundFile(this, "Fuerte.mp3");
  fuerte.loop();
  intro = loadImage("Intro.png");
  info = loadImage("Info.png");
  Rostro1 = loadImage("Rostro 1.png");
  Rostro2 = loadImage("Rostro 2.png");
  Rostro3 = loadImage("Rostro 3.png");
  Rostro4 = loadImage("Rostro 4.png");
  Rostro5 = loadImage("Rostro 5.png");
  video.start();
}

void draw() {
 Pantallas();
}

void captureEvent(Capture c) {
  c.read();
}