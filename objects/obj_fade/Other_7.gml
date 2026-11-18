room_goto(target_room)

obj_player.x = target_x


//facing 

if (facing = 0)  {
	obj_player.sprite_index = spr_playerr

}

if (facing = 1)  {
	obj_player.sprite_index = spr_playerl
	
}

if (facing = 2)  {
	obj_player.sprite_index = spr_playerd

}

if (facing = 3)  {
	obj_player.sprite_index = spr_playeru
	
}







// fade out
image_speed = -1

if (obj_player.move_spd = 0 or obj_player.xspd = 0 or obj_player.yspd = 0) and obj_player.sprite_index = spr_playeru  {
	
	obj_player.image_index = 0
	
}





