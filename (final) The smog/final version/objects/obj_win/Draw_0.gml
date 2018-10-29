/// @description Insert description here
// You can write your code in this editor

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_set_alpha(alpha);
	draw_text_outlined_scaled(room_width/2,room_height/2,c_black,c_red,"You Win!",fot_pvz, 1);
	//draw_text_outlined_scaled(room_width/2,lose_message_y+80,c_black,c_white,"Press Enter to Retry.",fot_pvz, 0.7);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

