/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_released(mb_right))
	{
	if (mouse_x >= x-80 && mouse_x <= x+80)
		if (mouse_y >=y-60&& mouse_y <= y+60)
			{
			facpicked = true;
			}
}
if (mouse_check_button_released(mb_left))
	{
		if (mouse_x >= x-80 && mouse_x <= x+80)
			if (mouse_y >=y-60&& mouse_y <= y+60)
				{
				facpicked = false;
				}
	}
if (mouse_check_button_released(mb_middle)){
	if (mouse_x >= x-80 && mouse_x <= x+80){
		if (mouse_y >=y-60&& mouse_y <= y+60){
			if (facup<3){
				if (facup=1){
					if (obj_controllerparent.money>=500){
						obj_controllerparent.money-=500;

						facup+=0.5;
						obj_controllerparent.level_up -=1;
					}else {
						//show_message("Called!")
						global.no_enough_money_upgrade = true;
						alarm_set(1, 150);
					}
				}else if (facup=2){
					if (obj_controllerparent.money>=1000){
						obj_controllerparent.money-=1000;

						facup+=0.5;
						obj_controllerparent.level_up -=1;
							
					}else {
						global.no_enough_money_upgrade = true;
						alarm_set(1, 150);
					}
				}	
			}
		}
	}
}

if (facpicked = false)
{
if (time=0)
	time=30
time-=1
if (time=0)
{	if (self.facup=1)
		with(obj_controllerparent)
			money+=10;
	if (self.facup=2)
		with(obj_controllerparent)
			money+=20;
	if (self.facup=3)
		with(obj_controllerparent)
			money+=30;
}
}