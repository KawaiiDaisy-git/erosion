//thank you noelle again for the code, i am a fraud
global.start_room = RoomHub
global.start_x = 160
global.start_y = 200
global.new_game = false

if (file_exists("erosion.ini")){
	
	ini_open("erosion.ini")
	global.start_room = ini_read_real("Save1", "room", RoomHub)
	global.start_x = ini_read_real("Save1", "x", 160)
	global.start_y = ini_read_real("Save1", "y", 140)
	ini_close()
	
}