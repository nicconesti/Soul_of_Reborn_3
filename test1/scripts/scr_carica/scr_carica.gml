// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function scr_carica() {
	var currentRoom;
	if(file_exists("Save.ini")) {
	ini_open("Save.ini");
	currentRoom = ini_read_real("Save1" , "room" , 0);
	global.monete = ini_read_real("Save1" , "points" , 0);
	global.vite = ini_read_real("Save1" , "Vita" , 0);
	oProtagonista.x = ini_read_real("Save1" , "posizione_x" , 0);
	oProtagonista.y = ini_read_real("Save1" , "posizione_y" , 0);
	ini_close();
	room_goto(currentRoom);
	
}
}