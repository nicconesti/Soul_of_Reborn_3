/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

if(delay>0){
	delay=-1;
}else{
	image_xscale-=random_range(0.001,0.1);
	image_yscale=image_xscale;
	if(add_movement){
		x+=random_range(-1,0);
		y-=random_range(.25,1);
	}if(image_xscale<=0){
		instance_destroy();
	}
}














