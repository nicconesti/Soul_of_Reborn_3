/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
hspd = dir *spd;
vspd = vspd + grv;

//Collisioni orizzontali
if(place_meeting(x+hspd , y , Ospuntone)) {
	while(!place_meeting(x+sign(hspd) , y , Ospuntone)) {
		x = x+ sign(hspd);
	}
	dir = dir*-1;
	hspd = 0;
}
x= x +hspd;

//Collisioni verticali
if(place_meeting(x , y+vspd , oTerreno)) {
	while(!place_meeting(x , y+sign(vspd) , oTerreno)) {
		y = y + sign(vspd);
	}
	vspd = 0 ;
	
	if(dont_fall && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+7, oTerreno)) {
		dir = dir*-1;
	}
}
y = y+vspd;





































































