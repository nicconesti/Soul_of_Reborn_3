 /// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

//input player
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right =keyboard_check(ord("D"))|| keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_attack=keyboard_check(ord("W"));
key_attack2=keyboard_check(ord("Q"));
key_dash=keyboard_check_pressed(vk_shift);

dashDuration=max(dashDuration-1,0);

//calcolo movimento
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

if(place_meeting(x,y+1,oTerreno)) && (key_jump){
	vsp=-jumpsp;
}
if(place_meeting(x,y+1,Osalto)) && (key_jump){
	vsp=-jumpMax;
}
if(place_meeting(x,y+1,OsuperSalto)) && (key_jump){
	vsp=-nextL;
}
if(place_meeting(x,y+1,oSottoTerreno)) && (key_jump){
	vsp=-jumpsp;
}
if(place_meeting(x,y+1,Obj_salva)) && (key_jump){
	vsp=-jumpsp;
}

//collisioni orizzontali
if (place_meeting(x+hsp,y,oTerreno)){
	if(floor(vsp)>7){
		repeat(7){
			var xx=x+random_range(-16,-16	);
			var yy=y+random_range(12,18);
			var obj=instance_create_layer(xx,yy,"Assortita",oParticellePolvere);
			obj.add_movement=true;
			obj.delay=0;
		}
	}
	while(!place_meeting(x+sign(hsp),y,oTerreno)){
		x=x+sign(hsp);
	}
	hsp=0;
}
if (place_meeting(x+hsp,y,oSottoTerreno)){
	if(floor(vsp)>7){
		repeat(7){
			var xx=x+random_range(-16,-16	);
			var yy=y+random_range(12,18);
			var obj=instance_create_layer(xx,yy,"Assortita",oParticellePolvere);
			obj.add_movement=true;
			obj.delay=0;
		}
	}
	while(!place_meeting(x+sign(hsp),y,oSottoTerreno)){
		x=x+sign(hsp);
	}
	hsp=0;
}
if (place_meeting(x+hsp,y,Osalto)){
	if(floor(vsp)>7){
		repeat(7){
			var xx=x+random_range(-16,-16	);
			var yy=y+random_range(12,18);
			var obj=instance_create_layer(xx,yy,"Assortita",oParticellePolvere);
			obj.add_movement=true;
			obj.delay=0;
		}
	}
	while(!place_meeting(x+sign(hsp),y,Osalto) ){
		x=x+sign(hsp);
	}
	hsp=0;
}
if (place_meeting(x+hsp,y,OsuperSalto)){
	
	while(!place_meeting(x+sign(hsp),y,OsuperSalto) ){
		x=x+sign(hsp);
	}
	hsp=0;
}
if (place_meeting(x+hsp,y,Obj_salva)){
	if(floor(vsp)>7){
		repeat(7){
			var xx=x+random_range(-16,-16	);
			var yy=y+random_range(12,18);
			var obj=instance_create_layer(xx,yy,"Assortita",oParticellePolvere);
			obj.add_movement=true;
			obj.delay=0;
		}
	}
	while(!place_meeting(x+sign(hsp),y,Obj_salva) ){
		x=x+sign(hsp);
	}
	hsp=0;
}

x=x+hsp;




//collisioni verticali
if (place_meeting(x,y+vsp,oTerreno)){
	
	while(!place_meeting(x,y+sign(vsp),oTerreno)){
		y=y+sign(vsp);
	}
	vsp=0;
}
if (place_meeting(x,y+vsp,oSottoTerreno)){
	
	while(!place_meeting(x,y+sign(vsp),oSottoTerreno)){
		y=y+sign(vsp);
	}
	vsp=0;
}

if (place_meeting(x,y+vsp,Osalto) ){
	
	while(!place_meeting(x,y+sign(vsp),Osalto)){
		y=y+sign(vsp);
	}
	vsp=0;
}
if (place_meeting(x,y+vsp,Obj_salva)){
	
	while(!place_meeting(x,y+sign(vsp),Obj_salva)){
		y=y+sign(vsp);
	}
	vsp=0;
}
y=y+vsp;


//animazioni movimento

if(!place_meeting(x,y+1,oTerreno)&&(!place_meeting(x,y+1,Osalto)) && (!place_meeting(x,y+1,oSottoTerreno)) && (!place_meeting(x,y+1,Obj_salva))){

	if(vsp>0)  sprite_index = sProtagonistaCaduta; else if(vsp<0) sprite_index = sProtagonistaSalto;
	
}else{//animazione statica o corsa
	image_speed = 1;
	if (hsp == 0){
		sprite_index = sProtagonistaFermo;
	} else{
		sprite_index = sProtagonistaCorsa;
	}
}

if(!keyboard_check_pressed(key_attack)&&hsp==0){
		sprite_index = sProtagonistaAttacco;
}
if (hsp!= 0) image_xscale = sign(hsp);

if(!keyboard_check_pressed(key_attack2)&&hsp==0){
		sprite_index = sProtagonistaAttacco2;
}
if (hsp!= 0) image_xscale = sign(hsp);


//suono

if (place_meeting(x,y, Obj_DeathPit) || (place_meeting(x,y, Ospuntone)))  {
	audio_play_sound(danno_per_il_meme, 8, false);

}
	
if place_meeting(x,y, oMoneta){
	audio_play_sound(moneta, 10, false);
}
/*if place_meeting(x,y, Obj_checkpoint){
	audio_play_sound(checkpoint, 10, false);
}*/

//dash
if(dashDuration>0) {
	vsp=0;
	sprite_index=sProtagonistaDash;
}
if(key_dash){
		dashDuration=20;
		hsp=image_xscale*dashSpd;
		with(instance_create_depth(x,y,depth+1,oTrail)){
			sprite_index=other.sprite_index;
			image_blend=c_grey;
			image_alpha=1.7;
		}
	}
	
	
if(hsp!=0){
	instance_create_layer(x,y+random_range(10,16),"Assortita",oParticellePolvere);
}