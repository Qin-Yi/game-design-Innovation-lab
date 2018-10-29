image_angle = -90;
image_xscale = 0.5;
image_yscale = 0.5;
directionSleep = 5;
bulletSpeed = 15;

bottle = instance_nearest(self.x, self.y, obj_bottle);
target = bottle.target;
if (instance_exists(target)){
angle = bottle.image_angle;
move_towards_point(target.x, target.y, bulletSpeed)
image_angle=angle;
}