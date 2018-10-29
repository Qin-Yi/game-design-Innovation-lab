spd = 5;
//path_start(pat_0,spd,path_action_stop,1);
hp = 10+obj_controllerparent.time div 900;
color = 3;

hurt = 0;
hurt_self = 0;
timerE = 0;






if (point_distance(176,300,x,y)<20){

color = 1;
}
if (point_distance(765,592,x,y)<20){
color = 2;
}
if (point_distance(831,82,x,y)<20){
color =3;
}
if (point_distance(450,400,x,y)<150){
color =4;
}
if (point_distance(400,592,x,y)<200){
color =5;
}