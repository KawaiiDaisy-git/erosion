if (place_meeting(x, y, obj_player)) {
	ini_open("erosion.ini")
	ini_write_real("save1", "room", room)
	ini_write_real("save1", "x", obj_player.x)
	ini_write_real("save1", "y", obj_player.y)
	ini_write_real("save1", "facing", obj_player. facing_direction) 
	ini_close()
}