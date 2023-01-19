/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

scelta_Sabaku(
	mouse_x,
	mouse_y,
	[
		["Attacco Sabaku",AttaccoSabaku],
		["Scudo Sabaku",ScudoSabaku],
		["Cura Sabaku",CuraSabaku]
	],
	"Scegli un potere per Sabaku!"
);

function AttaccoSabaku(){
	instance_create_layer(x,y,"Assortita",oSabaku);
}
function ScudoSabaku(){
	instance_create_layer(x,y,"Assortita",oSabakuScudo)	;
}
function CuraSabaku(){
	instance_create_layer(x,y,"Assortita",oSabakuCura)	;
}









