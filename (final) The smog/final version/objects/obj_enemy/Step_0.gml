if (hp <= 0)
{	
	instance_destroy(); 
}
if (x=176 && y>=300 && y<=592) y+=spd;
if (y>586 && y<598 && x>=176 && x<=848) x+=spd;
if (x>845 && x<854 && y>=80 && y<=592) y-=spd;
if (y>74 && y<86 && x<856 && x>=304) x-=spd;
if (x>298 && x<309 && y>76 && y<=400) y+=spd;
if (x>300 && x<=656 && y>394 && y<406) x+=spd;
if (x>650 && x<662 && y>=272 && y<=405) y-=spd;
direction = point_direction(x,y,x+1,y);
if(distance_to_object(obj_tree) > 30)
{		spd = 5;
}
if(distance_to_object(obj_fire) <= 25){hp = 0;}
