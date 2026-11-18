	//sound
	if (pos != last_selected){ audio_play_sound(mus_menumove_2, 1, false);
last_selected = pos;
	}
	
	//correct box size
	if menu_level = 0 {
		width = 85;
		height = 85;
	}
		
	//get inputs
	
	
	up_key = keyboard_check_pressed(vk_up);
	down_key = keyboard_check_pressed(vk_down);
	accept_key = keyboard_check_pressed(ord("Z"))
	back_key = keyboard_check_pressed(ord("X"))
	//store number of options in current menu
	op_length = array_length(option[menu_level]);
	
	
	//move through menu
	
	pos += down_key - up_key;
	if pos >= op_length {pos = 0};
	if pos < 0 {pos = op_length-1};
	
	//use options
			if accept_key {
		
			var _sml = menu_level;
			
			switch(menu_level) {
				
			//pause menu
			case 0:
			switch(pos)	{
			//start game
			//pause menu
			case 0:
			audio_play_sound(mus_menuselect, 1, false);
			ini_open("erosion.ini")
			room_goto(global.start_room)
			var instantiated = instance_create_layer(global.start_x, global.start_y, "Player", obj_player)
			global.new_game = false 
				break;
		
		//settings
		case 1:
		width = 85;
		height = 85;
		menu_level = 1;
		audio_play_sound(mus_menuselect, 1, false);
	
			break;
		
			//credits
		
			case 2:
			width = 170;
			height = 85;
			menu_level = 2;
			audio_play_sound(mus_menuselect, 1, false);
			break;
		
	}
	break;

	//settings
	case 1:
	case 2:
		switch(pos) {
			//window size
			case 0:
			break;
			//brightness
			case 1:
				break;
			//controls
			case 2:
			
			break;
			//back
			case 3:
				menu_level = 0;
				audio_play_sound(mus_menuselect, 1, false);
			
			break;
		}
				break;
	
	}
				
			if _sml != menu_level {pos = 0};
	
			//correct option length
			op_length = array_length(option[menu_level]);
	

		
		}
		
		
		
		
		
		
		
	
		
		