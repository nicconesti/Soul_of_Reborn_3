global.vite += -5;

if(global.vite < 0)
{
	room_goto(game_over);
	instance_destroy(oProtagonista);
	instance_destroy(oSabaku);
	instance_destroy(Obj_vita_punt);
	audio_stop_sound(MusicaLivello1);
	instance_destroy(oParticellePolvere);
}