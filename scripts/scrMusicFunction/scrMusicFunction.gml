// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_song_ingame( song, fadeoutcurrentsong = 0, fadein = 0, songoverlap = false)

{
	
	with (obj_musicmanager)
	
	{
		targetsongasset = song;
		endfadeouttime = fadeoutcurrentsong;
		startfadeintime = fadein; 
		musicoverlap = songoverlap;
		
		
	}
	
	
}