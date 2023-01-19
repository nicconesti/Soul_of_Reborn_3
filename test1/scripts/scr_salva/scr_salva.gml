// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function scr_salva() {
if(file_exists("Save.ini")) file_delete("Save.ini");
ini_open("Save.ini");
ini_write_real("Save1" , "room" , room);
ini_write_real("Save1" , "points" , global.monete);
ini_write_real("Save1" , "Vita" , global.vite);
ini_write_real("Save1" , "posizione_x" , oProtagonista.x);
ini_write_real("Save1" , "posizione_y" , oProtagonista.y);
ini_close();
}