depth = -9999;

//parameters, thanks to Peyton Burnham for the code
textbox_width = 300;
textbox_width_portrait = 225;
textbox_height = 86;
border = 8;
line_sep = 18;
line_width = textbox_width - border*2;
txtb_spr[0] = spr_dlg;
txtb_img = 0;
txtb_img_spd = 3/30;
position = 1; //is the textbox up or down? 0 = down and 1 = up
//text

page = 0;
page_number = 0;
text[0] = ""
text_length[0] = string_length(text[0]);


char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;

draw_char = 0;
text_spd = 1;
//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;

//sound
snd_delay = 2;
snd_count = snd_delay;

//effects
scr_set_defaults_for_text()
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 7;