var _s = id;

if	keyboard_check_pressed(ord("X")) && distance_to_object(obj_player) < 10 and !instance_exists(obj_textbox)
{
	with (instance_create_depth(0,0,-9999,obj_textbox))
	{
		position = 0; //is the textbox up or down? 0 = down and 1 = up
//text
		scr_game_text(_s.text_id);
}

}