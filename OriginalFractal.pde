void setup(){
size(1980,1000);

}
float anVar=0.1;
color c;
void draw(){
  background(250,250,250);
  if (anVar>1)
    anVar = 1;
  hexFractal(275,490,400,0,anVar);
  textSize(50);
  fill(0, 408, 612, 204);
  text("ratio: " + ( Math.floor(anVar * 100) / 100),1650,70);
}


void hexagon(float xpos, float ypos, float l){
strokeWeight(log(l+1));
stroke(c);
line(xpos,ypos, (float)(xpos+l*sqrt(3)/2),(float)(ypos+l/2));
line((float)(xpos+l*sqrt(3)/2),(float)(ypos+l/2),(float)(xpos+l*sqrt(3)/2),(float)(l+ypos+l/2));
line((float)(xpos+l*sqrt(3)/2),(float)(l+ypos+l/2),xpos,(float)(ypos+2*l));
line((float)(xpos-l*sqrt(3)/2),(float)(l+ypos+l/2),xpos,(float)(ypos+2*l));
line((float)(xpos-l*sqrt(3)/2),(float)(ypos+l/2),(float)(xpos-l*sqrt(3)/2),(float)(l+ypos+l/2));
line(xpos,ypos, (float)(xpos-l*sqrt(3)/2),(float)(ypos+l/2));}



void hexFractal(float x,float y,float sl,int num, float sf){
if(sl>=0.01 && num<=1000){
 c = color(num*25 ,167-15.2*num/3 , 167-10*num);
hexagon(x,y,sl);
if (num%6==0){
  hexFractal(x+(sqrt(3)*sl*sf/2),(y-sl*sf*3/2),(sl*sf),num+1,sf);
}
if (num%6==1){
  hexFractal((x+sqrt(3)*sl/2+sqrt(3)*sl*sf/2) , (y+ sl/2 - sl*sf/2), (sl*sf),num+1,sf);
}
if (num%6==2){
  hexFractal((x+sqrt(3)*sl/2) , (y+3*sl/2), (sl*sf),num+1,sf);
}
if (num%6==3){
  hexFractal((x-sqrt(3)*sl*sf/2) , (y+2*sl-sl*sf/2), (sl*sf),num+1,sf);
}
if (num%6==4){
  hexFractal((x-sqrt(3)*sl*(1+sf)/2) , (y+ sl/2 - sl*sf/2), (sl*sf),num+1,sf);  //work on this
}
if (num%6==5){
  hexFractal(x-(sqrt(3)*sl*sf/2),(y-sl*sf*3/2),(sl*sf),num+1,sf);
}
}
}


void keyPressed(){

if (key == 'p')
 anVar +=0.005;
if (key == 'o')
 anVar -=0.005;
      
}
