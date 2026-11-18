var finalvolume = global.musicvolume*global.mastervolume


if songasset != targetsongasset
{
	//tell the old song to fadeout
	if audio_is_playing(songinstance) 
	{
		//add song instance to our array of songs to fade out
		array_push(fadeoutinstances, songinstance); 
		//add song instance starting volume for no abrupt volume changes
		array_push(fadeoutinstvol, fadeininstvol )
		
	//add the fade out instance fade out frames
	array_push (fadeoutinsttime, endfadeouttime) ;
	
	//reset song instance and song asset variables
	songinstance = noone;
	songasset = noone;
	}
	//play the song, if the old song has faded out
	if array_length(fadeoutinstances) = 0 or musicoverlap == true
	{
	if audio_exists(targetsongasset)
{
	//play the song and store its instance in a variable
	songinstance = audio_play_sound(targetsongasset, 4, true);
	
	//start volume at 0
	
	audio_sound_gain(songinstance, 0, 0);
	fadeininstvol = 0;
	
}
	

//set the songasset to match the targetsongasset
songasset = targetsongasset;
musicoverlap = false;
}

//volume control
	//main song volume

	if audio_is_playing(songinstance) 
	{	
		//fade the song in
		if startfadeintime > 0
	
		{
			if fadeininstvol < 1 { fadeininstvol += 1/startfadeintime } else fadeininstvol = 1;
		
	}
	//immediateley start if the fade in time is 0 frames 
		else 
	{
		fadeininstvol = 1;
	}
		//actually set the gain
		audio_sound_gain(songinstance, fadeininstvol*finalvolume, 0);  
	}
	
	//fading songs out
	for (var i = 0; i < array_length(fadeoutinstances); i++ )
	
	{
		
		//fade the volume 
		if fadeoutinsttime [i] > 0
		{
			if fadeoutinstvol[i] > 0 { fadeoutinstvol[i] -= 1/fadeoutinsttime[i]; }
			
	}
	//instantly cut vol to 0 otherwise
	else
	{
		fadeoutinstvol[i] = 0;
	}
	
	//actually set the gain
	
	audio_sound_gain(fadeoutinstances[i], fadeoutinstvol[i]*finalvolume, 0); 
	
	//stop the song when volume hits 0 and remove it from all arrays
	if fadeoutinstvol[i] <= 0
	{
		//stop the song
		if audio_is_playing (fadeoutinstances[i]) { audio_stop_sound(fadeoutinstances[i] ); }
	
	//remove it from arrays
	array_delete(fadeoutinstances, i, 1) ;
	array_delete(fadeoutinstvol, i, 1) ;
	array_delete(fadeoutinsttime, i, 1) ;
	
	//set loop back 1 since entry was deleted
	i-- 
	}
	
	}
	
}
