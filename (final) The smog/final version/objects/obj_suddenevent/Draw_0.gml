/// @description Insert description here
// You can write your code in this editor
time += -1;
if (time <= 0)
{
	time = 300;
}
else if (time == 150)
{
	rnum += irandom_range(0,9999);
	rnum = rnum mod 100;

	if (rnum >= 95 && cd == 100)
	{
		newyear = true;
		audio_play_sound(snd_special_attack, 0, false);
	}
	else if (rnum <= 10 && cd == 100)
	{
		train = true;
		audio_play_sound(snd_special_attack, 0, false);
	}
//	if (rnum >= 50 && rnum <= 60 & cd == 100)
//	{
//		expo = true;
//	}
	
	//draw_text_outlined(room_width*0.75,room_height*0.75,c_white,c_yellow,string(time),fot_0);
    //draw_text(room_width*0.75,room_height*0.75+50,string(rnum));
	//draw_text(room_width*0.75,room_height*0.75+75,string(n));

}


if(newyear)
{
	cd += -1;
	if (alpha < 1){
		alpha += 0.1;
	}
	if (scale > 1){
		scale -= 0.2
	}
	draw_sprite(spr_fire,-1,400,400);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(alpha);
	draw_text_outlined_scaled(room_width/2,room_height/2,c_black,c_red,"New Year is Coming!!!",fot_pvz, scale);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if (( n >= 1)&&(time mod 30 = 15))
	{
		instance_create_layer(irandom_range(310,600),400,"enemy",obj_enemy);
		n -= 1;
	}
	
	if ((cd <= 0)&&(n<=0))
	{
		newyear = false;
		cd = 100;
		n = irandom_range(3,5);
		alpha = 0;
		scale = 3;
	}
	
}
//if(expo)
//{
//	cd += -1;
	//draw_text_outlined(room_width/2-200,50,c_black,c_white,"Expo",fot_2);
//	if (cd <= 0)
//	{
//		expo = false;
//		cd = 100;
//	}
//}


if(train)
{
	cd += -1;
	if (alpha < 1){
		alpha += 0.1;
	}
	if (scale > 1){
		scale -= 0.2
	}
	draw_sprite(spr_storm,-1,460-time,592);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(alpha);
	draw_text_outlined_scaled(room_width/2,room_height/2,c_black,c_yellow,"The Sand Storm is coming !!!",fot_pvz, scale);
		draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if (( n >= 1)&&(time mod 30 = 15))
	{
		instance_create_layer(irandom_range(200,600),592,"enemy",obj_enemy);
		n -= 1;
	}
	if ((cd <= 0) && (n <= 0))
	{
		train = false;
		cd = 100;
		n = irandom_range(3,5);
		alpha = 0;
		scale = 3;
	}
	
}
//draw_text_outlined(room_width*0.75,room_height*0.75,c_white,c_yellow,string(cd),fot_0);
