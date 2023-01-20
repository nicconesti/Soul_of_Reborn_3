/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
draw_sprite(box, 0, box_x, box_y);
draw_sprite(name, 0, name_x, name_y);
draw_set_font(font);


//draw name
var c=name_col;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(name_text_x, name_text_y, name_text[page], c, c, c, c, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//draw text
draw_text_ext_color(text_x, text_y, text[page], text_height, text_max_width, c, c, c, c, 1);