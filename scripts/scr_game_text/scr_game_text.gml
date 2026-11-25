// @param text id
function scr_game_text(_text_id){
switch(_text_id) {

	case "npc 1":
		obj_textbox.position = 1 // 1 = up 0 = down
		scr_textbox_functions("* hello, I'm Mister FaceBreaker!", "fb");
		scr_text_color(13,31, c_white, c_white, c_yellow, c_yellow)
		scr_text_float(13,31)
		scr_textbox_functions("* If you want to progress...", "fb")
		scr_textbox_functions("* You'll need to find the key! the key!", "fb")
		scr_textbox_functions("* ... Which is what I would say if this wasn't an early build.", "fb")	
		scr_textbox_functions("*", "fb")	
			scr_option("yes", "npc 1 - yes");
			scr_option("no", "npc 1 - no");

		break;
		case "npc 1 - yes":
			scr_textbox_functions("you are weirdly opinionated", "fb")
			break;
		case "npc 1 - no":
			scr_textbox_functions("why would you say that", "fb")
			scr_text_shake(0,40)
			obj_textbox.text_spd = .5;
			break;
		
		
		case "npc 2":
		scr_textbox_functions("hi im npc2")
		scr_textbox_functions("hi im fdsfdsfdsfdsf")

		break;
		
		case "tree":
		obj_textbox.position = 1 // 1 = up 0 = down
		scr_textbox_functions("why do you want to talk to the tree?")
		
		break;
		
		case "alice test":
		obj_textbox.position = 1 // 1 = up 0 = down
		scr_textbox_functions("Hi! It's me! Alice!", "alice")
		scr_text_color(12,18, c_white, c_white, c_yellow, c_yellow)
		scr_textbox_functions("Um, I like girls, erm!", "alice blush")
		scr_textbox_functions("...", "alice dark")
		scr_textbox_functions("I want nothing more than to see the stars some day.", "alice dark")
		scr_textbox_functions("We can make that happen, right?", "alice")
		scr_option("info", "alice - info");
		
		break;
		
		case "alice - info":
			scr_textbox_functions("Well, you're already rather familiar with me, Deliliah.", "alice")
			scr_textbox_functions("But.. if someone didn't know, I guess the way I would describe myself is...", "alice")
			scr_textbox_functions("A silly girl who is Delilah's number 1 fan! And I take a liking towards space...", "alice blush")
			break;
		



}

}