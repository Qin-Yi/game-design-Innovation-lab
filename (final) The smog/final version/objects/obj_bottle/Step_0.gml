cooldown -= 1;
//angle = image_angle;
target = instance_nearest(self.x, self.y, obj_enemy);
	if(instance_exists(target)){
		if (point_distance(self.x, self.y, target.x, target.y) <= 125)
			{
			//angle = point_direction(self.x, self.y, target.x, target.y);
			//if (angle > 30){
			//	angle = 30;
			//} else if (angle < -30){
			//	angle = -30;
			//}
			//image_angle = angle;
			
			if (cooldown <=0){
				cooldown = 8;
				instance_create_layer(self.x , self.y , "measures", obj_bullet);

			}
		}
		
	}
