global.vite += -1;

if(global.vite < 0)
{
	room_goto(game_over);
	audio_stop_sound(MusicaLivello1);
}