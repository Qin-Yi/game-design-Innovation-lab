/// @description Insert description here
// You can write your code in this editor
draw_healthbar(x-20, y-30, x+20, y-25,hp/(10+obj_controllerparent.time div 900)*100,c_gray,c_red,c_green,0,true,true);
//draw_text_outlined(x,y,c_black, c_white,string(hp), fot_pvz);

draw_sprite(spr_enemy,-1,x,y);

if (hurt ==1 ){

timerE = 10;
hurt = 0;
}

if (timerE > 0){
draw_text_outlined(x,y-timerE*5,c_white,c_red,"-1",fot_pvz);
timerE -=1;
}



if(timerE <= 7){
if ( color == 1) {

draw_sprite_ext(spr_enemy,-1,x,y,1,1,0,c_blue,0.4);
}
if (color == 2) {

draw_sprite_ext(spr_enemy,-1,x,y,1,1,0,c_yellow,0.4);
}
if (color == 3) {

draw_sprite_ext(spr_enemy,-1,x,y,1,1,0,c_green,0.4);
}
if (color == 4) {
draw_sprite_ext(spr_enemy,-1,x,y,1,1,0,c_red,1);
}
if (color == 5) {
draw_sprite_ext(spr_enemy,-1,x,y,1,1,0,c_yellow,1);
}

}
