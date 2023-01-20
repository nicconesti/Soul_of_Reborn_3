/// @description Inserisci qui la descrizione

global.hp += -10;
instance_destroy();

instance_create_layer(x,y,"Assortita",oEsplosione );

timer=3;
if(timer==0){
	instance_destroy();
}





