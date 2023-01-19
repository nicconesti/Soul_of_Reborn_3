/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor



hsp=0;
vsp=0;
grv=0.3;
walksp=4;
jumpsp=9;
jumpMax = 12;
nextL=20;
dashSpd=15;
dashDuration=0;

global.vite = 100;

global.monete = 0;
//inventario e negozio
global.inv=ds_list_create();
is_swinging = false;
//sabaku
var drone=instance_create_layer(x,y,"Assortita",oSabaku);
	drone.whoFollow_Id=id;
	drone.distance_X=0;
	drone.distance_Y=-25;
	drone.HowMuchTo_Stick=0.05;

//polvere pèarticelle
