if(time <= 0)
{
	time = 60;
}

time += -1;

if(time < 30)
{
	self.x += -1;
}

if(time >= 30)
{
	self.x += 1;
}
inst = instance_nearest(x,y,obj_enemy);
if (instance_exists(inst)){
if(point_distance(x,y,inst.x,inst.y)<= range){
	temp_angle = point_direction(inst.x,inst.y,x,y);
	if (temp_angle>180){
	temp_angle -= 360;
	}
	delta = dirOfE - temp_angle;
	if (delta>0){
	dirOfE = dirOfE - min(delta,angleRate);
	}
	if (delta<=0){
	dirOfE = dirOfE - max(delta,-angleRate);
	}
//	dirOfE = dirOfE -delta;
	image_angle = dirOfE -23;
}
}