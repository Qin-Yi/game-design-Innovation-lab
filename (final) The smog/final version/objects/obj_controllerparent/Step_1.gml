if (mouse_check_button_pressed(mb_right))
{
	towerid = collision_point(mouse_x,mouse_y,obj_tree,true,true);
	if (towerid)
	{
		if(towerid.object_index == obj_tree)
		{
			money += 60;
			with (towerid)
				{
				instance_destroy();
				}
		}
	}
}
if (mouse_check_button_pressed(mb_right))
{
	towerid = collision_point(mouse_x,mouse_y,obj_vacuum,true,true);
	if (towerid)
	{
		if(towerid.object_index == obj_vacuum)
		{
			money += 120;
			with (towerid)
				{
				instance_destroy();
				}
		}
	}
}

if (mouse_check_button_pressed(mb_right))
{
	towerid = collision_point(mouse_x,mouse_y,obj_bottle,true,true);
	if (towerid)
	{
		if(towerid.object_index == obj_bottle)
		{
			money += 90;
			with (towerid)
				{
				instance_destroy();
				}
		}
	}
}

//Place Tower at mouse position
if (treepicked)
{
	if 	(mouse_check_button(mb_left))
		{
			treepicked = false;
			if (money >= treecost)
				{
				towerid = collision_point(mouse_x,mouse_y,obj_tree,true,true);
				var xplace = (mouse_x div 32) * 32 + 16;
				var yplace = (mouse_y div 32) * 32 + 16;
				
				if (place_empty(xplace,yplace))
					{
					instance_create_layer(xplace,yplace,"measures",obj_tree)
					money -= treecost;
					}
				}else{
				no_enough_money = true;
				alarm_set(0, 150);
			}	
		}
}
if (vacuumpicked)
{
	if 	(mouse_check_button(mb_left))
		{
			vacuumpicked = false;
			if (money >= vacuumcost)
				{
				towerid = collision_point(mouse_x,mouse_y,obj_vacuum,true,true);
				var xplace = (mouse_x div 32) * 32 + 16;
				var yplace = (mouse_y div 32) * 32 + 16;
				
				if (place_empty(xplace,yplace))
					{
					instance_create_layer(xplace,yplace,"measures",obj_vacuum)
					money -= vacuumcost;
					}
				}else{
				no_enough_money = true;
				alarm_set(0, 150);
			}	
		}
}

if (ddpicked)
{
	if 	(mouse_check_button(mb_left))
		{
			ddpicked = false;
			if (money >= ddcost)
				{
				towerid = collision_point(mouse_x,mouse_y,obj_dd,true,true);
				var xplace = (mouse_x div 32) * 32 + 16;
				var yplace = (mouse_y div 32) * 32 + 16;
				
				if (place_empty(xplace,yplace))
					{
					instance_create_layer(xplace,yplace,"measures",obj_dd)
					money -= ddcost;
					}
				}else{
				no_enough_money = true;
				alarm_set(0, 150);
			}	
		}
}
if (bottlepicked)
{
	if 	(mouse_check_button(mb_left))
		{
			bottlepicked = false;
			if (money >= bottlecost)
				{
				towerid = collision_point(mouse_x,mouse_y,obj_bottle,true,true);
				var xplace = (mouse_x div 32) * 32 + 16;
				var yplace = (mouse_y div 32) * 32 + 16;
				
				if (place_empty(xplace,yplace))
					{
					instance_create_layer(xplace,yplace,"measures",obj_bottle)
					money -= bottlecost;
					}
				}else{
				no_enough_money = true;
				alarm_set(0, 150);
			}	
		}
}

