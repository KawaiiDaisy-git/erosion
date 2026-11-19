
switch(visual_mode){
case "walking":
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
	else{
		sprite_index = spr_playerd;
	}

	if (xspd != 0 or yspd != 0){
		image_speed = 1
	}	else{
		image_speed = 0
		image_index = 0
	}
break;
case "special animation":
	sprite_index = special_animation_sprite;
default:
break;

}

x += xspd;
y += yspd;