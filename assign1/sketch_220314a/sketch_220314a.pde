PImage bg; 
PImage soil; 
PImage groundHog;
PImage life; 
PImage soldier;
PImage robot;
int soldierPosition;
int solderWalk;
int robotPosition_X;
int robotPosition_Y;
int laserPosition_X; int laserPosition_X1;
int laserPosition_Y;
int laserLong=0;


void setup() {
  size(640, 480);
   bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
   groundHog= loadImage("img/groundhog.png");
   life= loadImage("img/life.png");
   soldier= loadImage("img/soldier.png");
   robot= loadImage("img/robot.png");
   
   //backGound
   image(bg,0,0);
   
   //the begining position of the Soldier;
   soldierPosition=floor(random(2,6));
   solderWalk=0;
   
   //robot position
   robotPosition_X=floor(random(2,8));
   robotPosition_Y=floor(random(2,6));
   
   //laser position
   laserPosition_X=robotPosition_X*80+25;
   laserPosition_X1=laserPosition_X;
   laserPosition_Y=robotPosition_Y*80-43;
   
   
   
}

void draw() {
  
   
  //grassLand
  rectMode(CORNERS);
  fill(124,204,25);
  noStroke();
  rect(0,145,640,160);
  
  //Soil
  image(soil,0,160);
  
  //Groundhog
  image(groundHog,280,80);
  
  //lifes
  image(life,10,10);    //How wide is the love interval 
  image(life,80,10); 
  image(life,150,10);
  
  //sun
  strokeWeight(5);  
  stroke(255, 255,0);
  fill(253, 184, 19);
  ellipse(590,50,120,120);
  
  //soldier
  image(soldier,solderWalk,soldierPosition*80);
  if(solderWalk>630){
     solderWalk=-50;
     }
     else {
     solderWalk+=3;
     }
 
  
  //laser
    stroke(256,0,0);
    strokeWeight(10);
    line(laserPosition_X,laserPosition_Y+80,laserPosition_X+laserLong,laserPosition_Y+80);
    if(laserLong>=-30){
    laserLong -= 2;
    }
    
     if(laserPosition_X <= laserPosition_X1-160){
      laserPosition_X+=160;
      laserLong = 0;
      
    }
    else{
    laserPosition_X-=2;
  }
    
    
    //robot  
     image(robot,robotPosition_X*80,robotPosition_Y*80);
    
}
