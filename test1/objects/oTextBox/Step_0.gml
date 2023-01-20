/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if(keyboard_check_pressed(interact_key)){
	if(page<array_length(text)-1){
		page++;
		}
	else { instance_destroy(); }
}

