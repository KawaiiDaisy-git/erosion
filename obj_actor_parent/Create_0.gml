//Object created by DistortedAngela
xspd = 0;
yspd = 0;

visual_mode = "walking";

special_Animation = false;
special_animation_sprite = spr_default_sprite;

special_animation_timer = 0;

function recieve_move_order(move_order){
	xspd = move_order.xVel;
	yspd = move_order.yVel;
	alarm[0] = move_order.time;
}
function recieve_animation_order(animation_order){
	alarm[1] = animation_order.time_before_animation 
	special_animation_timer = animation_order.animation_time;
	special_animation_sprite = animation_order.animation_sprite;
}