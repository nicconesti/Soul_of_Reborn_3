/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
pause = false;
pauseSurf = -1;
pauseSurfBuffer = -1;

resW = 12000;
resH = 1400;

text = "Esci";
font = fsilver;

draw_set_font(font);
var width = string_width(text);
var height = string_height(text);

var offset = 5;
left = x - offset;
top = y - offset;
right = left + width - 1 + offset;
bottom = top + height - 1 + offset;




