/// @description Insert description here
// You can write your code in this editor
if(facup == 1){
//	draw_sprite(spr_fac2,-1,x,y);
	color = 1;
	draw_sprite_ext(spr_polluted,-1,x,y,1,1,0,c_gray,1);
}
if(facup > 1.2 && facup < 2.2){
//	draw_sprite(spr_fac1,-1,x,y);
	color =2;
	draw_sprite_ext(spr_polluted,-1,x,y,1,1,0,c_gray,0.5);
}
if(facup > 2.2 && facup <3.2){
	color =3;
	draw_sprite(spr_fac,-1,x,y);
}

if(time >15){
if(facup ==1){
draw_sprite_ext(spr_coin,-1,x,y-45,1,1,0,c_white,1);
}
if(facup > 1.2 && facup < 2.2){
draw_sprite_ext(spr_coin,-1,x-20,y-45,1,1,0,c_white,1);
draw_sprite_ext(spr_coin,-1,x+20,y-45,1,1,0,c_white,1);
}
if(facup > 2.2 && facup <3.2){
draw_sprite_ext(spr_coin,-1,x,y-70,1,1,0,c_white,1);
draw_sprite_ext(spr_coin,-1,x-20,y-45,1,1,0,c_white,1);
draw_sprite_ext(spr_coin,-1,x+20,y-45,1,1,0,c_white,1);
}
}

if((time<=15)&& time>5){

if(facup ==1){
draw_sprite_ext(spr_coin,-1,x,y+time*3-90,1,1,0,c_white,(time)/15);
}
if(facup > 1.2 && facup < 2.2){
draw_sprite_ext(spr_coin,-1,x-20,y+time*3-90,1,1,0,c_white,(time)/15);
draw_sprite_ext(spr_coin,-1,x+20,y+time*3-90,1,1,0,c_white,(time)/15);
}
if(facup > 2.2 && facup <3.2){
draw_sprite_ext(spr_coin,-1,x,y+time*3-90-25,1,1,0,c_white,(time)/15);
draw_sprite_ext(spr_coin,-1,x-20,y+time*3-90,1,1,0,c_white,(time)/15);
draw_sprite_ext(spr_coin,-1,x+20,y+time*3-90,1,1,0,c_white,(time)/15);

}
}


if (mouse_check_button_released(mb_right))
	{
	if (mouse_x >= x-80 && mouse_x <= x+80)
		if (mouse_y >=y-60&& mouse_y <= y+60)
			{
			event = 1;
			subtimer = 30;
			}
}
if (mouse_check_button_released(mb_left))
	{
		if (mouse_x >= x-80 && mouse_x <= x+80)
			if (mouse_y >=y-60&& mouse_y <= y+60)
				{
				event = 2;
				subtimer = 30
				}
	}
if (mouse_check_button_released(mb_middle))
	{
	if (mouse_x >= x-80 && mouse_x <= x+80)
		if (mouse_y >=y-60&& mouse_y <= y+60)
			{
			event = 3;
			subtimer = 30;
			}
}	


if (subtimer >= 0 ){
subtimer -= 1;
if (event = 1){
		draw_text_outlined(x-50,y-subtimer*3,c_white,c_green,"Pause!",fot_pvz);}
if (event = 2){
		draw_text_outlined(x-50,y+subtimer*3,c_white,c_yellow,"Start!",fot_pvz);}
if (event = 3 ){
	if(facup ==1.5){
		draw_text_outlined(x-50,y+subtimer*3-60,c_white,c_navy,"Level 2!",fot_pvz);
		if (subtimer < 1){
facup+= 0.5;
}
	}
	if(facup ==2.5){
		draw_text_outlined(x-50,y+subtimer*3-60,c_white,c_olive,"Level 3!",fot_pvz);
		if (subtimer < 1){
facup+= 0.5;
}
	}

}
if (subtimer <1){
event = 0;
}
}


