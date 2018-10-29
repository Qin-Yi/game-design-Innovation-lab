
//Draw Health and Menu
draw_sprite(spr_coin,-1,60,30);
draw_text_outlined(90,10,c_black,c_white,": "+string(money),fot_1)

draw_text_outlined(10,60,c_black,c_white,"Citizen:"+string(citizen),fot_1)
//healthbar
draw_healthbar(10, 100, 195, 108, citizen/2 , c_black, c_red, c_lime, 0, true, true)
//draw_text_color(32,64,"treepicked:"+string(treepicked),c_red,c_red,c_red,c_red,c_red)




//Draw Tower selection menu

//draw_rectangle_color(0,room_height - 40,room_width,room_height,c_black,c_black,c_black,c_black,c_black);
draw_sprite(spr_cardslot,0,75,room_height-45);
draw_sprite(spr_tree,0,60,room_height - 45);
draw_set_alpha(clamp(1-money/100, 0, 0.5));
draw_set_color(c_black);
draw_rectangle(0, room_height-90, 145, room_height,false);
draw_set_alpha(1.0);
draw_text_outlined(95,room_height-45,c_black,c_white,"100",fot_pvz);
//draw_sprite(spr_cardslot,0,60,room_height-45);

draw_sprite(spr_cardslot,0,225,room_height-45);
draw_sprite(spr_vacuum,0,250,room_height - 45);
draw_set_alpha(clamp(1-money/200, 0, 0.5));
draw_set_color(c_black);
draw_rectangle(150, room_height-90, 295, room_height,false);
draw_set_alpha(1.0);
draw_text_outlined(245,room_height-45,c_black,c_white,"200",fot_pvz);

draw_sprite(spr_cardslot,0,375,room_height-45);
draw_sprite(spr_dd,0,360,room_height - 45);
draw_set_alpha(clamp(1-money/100, 0, 0.5));
draw_set_color(c_black);
draw_rectangle(300, room_height-90, 445, room_height,false);
draw_set_alpha(1.0);
draw_text_outlined(395,room_height-45,c_black,c_white,"100",fot_pvz);

draw_sprite(spr_cardslot,0,525,room_height-45);
draw_sprite(spr_bottle,0,510,room_height - 45);
draw_set_alpha(clamp(1-money/150, 0, 0.5));
draw_set_color(c_black);
draw_rectangle(450, room_height-90, 595, room_height,false);
draw_set_alpha(1.0);
draw_text_outlined(545,room_height-45,c_black,c_white,"150",fot_pvz);

//Draw Tower carried
if (treepicked)
{
    draw_sprite(spr_cardselected,0,75,room_height-45);
	draw_sprite_ext(spr_tree,0,mouse_x,mouse_y,1,1,0,c_white,0.5);
	
	draw_circle(mouse_x,mouse_y,100,c_white);
}	

if (vacuumpicked)
{
    draw_sprite(spr_cardselected,0,225,room_height-45);
	draw_sprite_ext(spr_vacuum,0,mouse_x,mouse_y,1,1,0,c_white,0.5);
	draw_circle(mouse_x,mouse_y,100,c_white);
}	

if (ddpicked)
{
    draw_sprite(spr_cardselected,0,375,room_height-45);
	draw_sprite_ext(spr_dd,0,mouse_x,mouse_y,1,1,0,c_white,0.5);
	draw_circle(mouse_x,mouse_y,0,c_white);
}	

if (bottlepicked)
{
    draw_sprite(spr_cardselected,0,525,room_height-45);
	draw_sprite_ext(spr_bottle,0,mouse_x,mouse_y,1,1,0,c_white,0.5);
	draw_circle(mouse_x,mouse_y,100,c_white);
}	
if (islose){
	if (lose_alpha<1){
		lose_alpha+=0.02
	}
	if (lose_message_y<room_height/2){
		lose_message_y+=10

	}
	draw_set_color(c_black);
	draw_set_alpha(lose_alpha);
	draw_rectangle(0,0,1024,768,false);
	draw_set_alpha(1.0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_set_alpha(alpha);
	draw_text_outlined_scaled(room_width/2,lose_message_y,c_black,c_lime,"The smogs killed all your citizens!",fot_pvz, 1);
	draw_text_outlined_scaled(room_width/2,lose_message_y+80,c_black,c_white,"Press Enter to Retry.",fot_pvz, 0.7);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

if (no_enough_money){
	draw_tips(c_black, c_yellow, "You need more money to set it!", fot_pvz);
	//show_message("hi");
}

if (global.no_enough_money_upgrade){
	//show_message("Called")
	draw_tips(c_black, c_yellow, "You need more money to upgrade!", fot_pvz);
}

