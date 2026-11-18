depth = -9999;

//parameters, thanks to Peyton Burnham for the code
textbox_width = 300;
textbox_height = 86;
border = 8;
line_sep = 18;
line_width = textbox_width - border*2;
txtb_spr = spr_dlg;
txtb_img = 0;
txtb_img_spd = 0;
position = 1; //is the textbox up or down? 0 = down and 1 = up
//text

page = 0;
page_number = 0;
scr_textbox_functions("* Press X to interact and hold X to run, press the Z button to go to the next textbox.");
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;