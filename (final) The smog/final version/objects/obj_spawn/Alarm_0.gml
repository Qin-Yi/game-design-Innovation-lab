if (facpicked=false)
{
if (point_distance(176,300,x,y)<200){

instance_create_layer(176,300, "enemy", obj_enemy);
}
if (point_distance(765,592,x,y)<200){
instance_create_layer(765,592, "enemy", obj_enemy);
}
if (point_distance(831,82,x,y)<200){
instance_create_layer(831,82, "enemy", obj_enemy);
}


}
left = clamp(left - 0.05, 0.3, 999);
right = clamp(right - 0.03,0.7, 999); 
alarm_set(0, spawnrate*facup*random_range(left, right));