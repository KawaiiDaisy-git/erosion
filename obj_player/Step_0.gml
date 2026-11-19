var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);
var left_key = keyboard_check(vk_left);
var right_key = keyboard_check(vk_right);


if (keyboard_check_pressed(ord("R"))) {
    game_restart();
}
//movement
if(keyboard_check(vk_shift) or keyboard_check(ord("X"))){
	move_spd = run_spd
	
} else{
	move_spd = walk_spd
}

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//collision
if(place_meeting(x + xspd, y, objWall)){
	xspd = 0
}
if(place_meeting(x, y + yspd, objWall)){
	yspd = 0
}

x += xspd;
y += yspd;

//animations

if(xspd > 0){
	sprite_index = spr_playerr
} else if(xspd < 0){
	sprite_index = spr_playerl
}
	else if(yspd > 0){
	sprite_index = spr_playerd
}
else if(yspd < 0){
	sprite_index = spr_playeru
}

if (xspd != 0 or yspd != 0){
	image_speed = 1
}	else{
	image_speed = 0
	image_index = 0
}
	
	//track direction
	if (sprite_index = spr_playerd) {
		facing_direction = 2
	}
		if (sprite_index = spr_playeru) {
		facing_direction = 3
	}
	if (sprite_index = spr_playerr) {
		facing_direction = 0
	}
	if (sprite_index = spr_playerl) {
		facing_direction = 1
	}

//stop player when dialogue

if can_move = false {
	xspd = 0;
	yspd = 0;
	walk_spd = 0;
	run_spd = 0;
}

if can_move = true {
	xspd = 0;
	yspd = 0;
	walk_spd = 2;
	run_spd = 4;
	move_spd = 2;
}

if instance_exists(obj_textbox) {
	can_move = false
}

else {
	can_move = true
}