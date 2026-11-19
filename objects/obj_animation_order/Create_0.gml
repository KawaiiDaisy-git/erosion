time_before_animation = 0;
animation_time = 0;
animation_sprite = spr_default_sprite;
function define_animation_order(t_bef,a_t,a_s){
	time_before_animation = t_bef;
	animation_time = a_t;
	animation_sprite = a_s;
}