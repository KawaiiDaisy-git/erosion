//info for current music track that is playing

songinstance = noone;
songasset = noone; 
targetsongasset = noone;
endfadeouttime= - 0; //how many frames to fade out song currently playing
startfadeintime = 0; //how many frames to fade in new song
fadeininstvol = 1; //the volume of song instance

//global volume control
global.mastervolume = 1;
global.musicvolume = 1;

//for fading music out and stop songs that are no longer playing
fadeoutinstances = array_create(0);//the audio instances to fade out
fadeoutinstvol = array_create(0);//the volumes of each volume instance
fadeoutinsttime = array_create(0); // how fast it fades out

musicoverlap = false;



