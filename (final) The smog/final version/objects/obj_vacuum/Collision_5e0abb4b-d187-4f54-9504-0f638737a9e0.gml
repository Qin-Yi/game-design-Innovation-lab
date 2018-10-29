if(cooldown <= 0)
{
	cooldown = 7;
}
cooldown += -1;
if(cooldown == 0)
{
	with(other) {
		hp += -1;
		hurt = 1;
	}
}
