//draw menu and shoutouts peyton burnham for the code

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw options

draw_set_font(fText);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++)
{
	var _c = c_white;
	if pos == i {_c = c_yellow};
	if menu_level < 2 {
	draw_text_color(x + op_border - 40, y + op_border - 40 + op_space*i, option[menu_level, i], _c, _c, _c, _c,1);
	}
	//change text postion for credits
	if menu_level = 2 {
		draw_text_color(x + op_border - 80, y + op_border - 40 + op_space*i, option[menu_level, i], _c, _c, _c, _c,1);
}

}