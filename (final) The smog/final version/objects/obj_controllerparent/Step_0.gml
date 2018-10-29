time+=1;

if (mouse_check_button_released(mb_left))
	{
	if (mouse_x >= 0 && mouse_x < 150)
		if (mouse_y >=room_height - 100 && mouse_y <= room_height)
			{
				treepicked = true;
				//show_message(sprite_index);
				//sprite_delete(sprite_index);
				//show_message("Delete Success");
			}
}

if (mouse_check_button_released(mb_left))
	{
	if (mouse_x >= 150 && mouse_x < 300)
		if (mouse_y >=room_height - 100 && mouse_y <= room_height)
			{
			vacuumpicked = true;
			}
}

if (mouse_check_button_released(mb_left))
	{
	if (mouse_x >= 300 && mouse_x < 450)
		if (mouse_y >=room_height - 100 && mouse_y <= room_height)
			{
			ddpicked = true;
			}
}

if (mouse_check_button_released(mb_left))
	{
	if (mouse_x >= 450 && mouse_x < 600)
		if (mouse_y >=room_height - 100 && mouse_y <= room_height)
			{
			bottlepicked = true;
			}
}

if (citizen <= 0)
{
	if !islose{

		audio_stop_sound(battle);
		audio_play_sound(snd_lose,1,false);
		islose = true;
		instance_deactivate_all(true);
		//room_goto(3);
	}

//game_restart()
}
if(level_up <= 0){
		
		audio_stop_sound(battle);
		audio_play_sound(snd_clear, 0, false);
		iswin=true;
		room_goto(2);
		
		//game_restart();
}
