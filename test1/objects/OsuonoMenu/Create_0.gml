/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor



	audio_play_sound(musicaMenu,10,true);
	if(audio_is_paused(musicaMenu)){
		audio_resume_sound(musicaMenu);
	}else{
		audio_pause_sound(musicaMenu);
	}






