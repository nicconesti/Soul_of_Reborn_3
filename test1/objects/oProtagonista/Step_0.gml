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
if (place_meeting(x+hsp,y,oSpuntoneTutorial)){
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
if(place_meeting(x , y , oTerreno)) {
	for(var i = 0;i < 1000; i++) {
		//right
		if(!place_meeting(x+i , y ,oTerreno)) {
		x += i;
		break;
		}
		//left
		if(!place_meeting(x-i , y ,oTerreno)) {
		x -= i;
		break;
		}
		//Up
		if(!place_meeting(x , y-i ,oTerreno)) {
		y -= i;
		break;
		}
		//down
		if(!place_meeting(x , y+i ,oTerreno)) {
		y += i;
		break;
		}
		//top right
		if(!place_meeting(x+i , y-i ,oTerreno)) {
		x+=i;
		y -= i;
		break;
		}
		//top left
		if(!place_meeting(x-i , y-i ,oTerreno)) {
		x-=i;
		y -= i;
		break;
		}
		//bottom right
		if(!place_meeting(x+i , y+i ,oTerreno)) {
		x+=i;
		y += i;
		break;
		//borrom left
		if(!place_meeting(x-i , y+i ,oTerreno)) {
		x-=i;
		y += i;
		break;
		}
		
	}
}
}
if(place_meeting(x , y , oSottoTerreno)) {
	for(var i = 0;i < 1000; i++) {
		//right
		if(!place_meeting(x+i , y ,oSottoTerreno)) {
		x += i;
		break;
		}
		//left
		if(!place_meeting(x-i , y ,oSottoTerreno)) {
		x -= i;
		break;
		}
		//up
		if(!place_meeting(x , y-i ,oSottoTerreno)) {
		y -= i;
		break;
		}
		//down
		if(!place_meeting(x , y+i ,oSottoTerreno)) {
		y += i;
		break;
		}
		//top right
		if(!place_meeting(x+i , y-i ,oSottoTerreno)) {
		x+=i;
		y -= i;
		break;
		}
		//top left
		if( !place_meeting(x-i , y-i ,oSottoTerreno)) {
		x-=i;
		y -= i;
		break;
		}
		//bottom right
		if(!place_meeting(x+i , y+i ,oSottoTerreno)) {
		x+=i;
		y += i;
		break;
		}
		//bottom left
		if(!place_meeting(x-i , y+i ,oSottoTerreno)) {
		x-=i;
		y += i;
		break;
		}
		
	}
}
if(place_meeting(x , y , Osalto)) {
	for(var i = 0;i < 1000; i++) {
		//right
		if(!place_meeting(x+i , y ,Osalto)) {
		x += i;
		break;
		}
		//left
		if(!place_meeting(x-i , y ,Osalto)) {
		x -= i;
		break;
		}
		//up
		if(!place_meeting(x, y-i ,Osalto)) {
		y -= i;
		break;
		}
		//down
		if(!place_meeting(x, y+i ,Osalto)) {
		y += i;
		break;
		}
		//top right
		if(!place_meeting(x+i, y-i ,Osalto)) {
		x+=i;
		y -= i;
		break;
		}
		//top left
		if(!place_meeting(x-i, y-i ,Osalto)) {
		x-=i;
		y -= i;
		break;
		}
		//bottom right
		if(!place_meeting(x+i, y+i ,Osalto)) {
		x+=i;
		y += i;
		break;
		}
		//bottom left
		if(!place_meeting(x-i, y+i ,Osalto)) {
		x-=i;
		y += i;
		break;
		}
	}
}
if(place_meeting(x , y , OsuperSalto)) {
	for(var i = 0;i < 1000; i++) {
		//right
		if(!place_meeting(x+i , y ,OsuperSalto)) {
		x += i;
		break;
		}
		//left
		if(!place_meeting(x-i , y ,OsuperSalto)) {
		x -= i;
		break;
		}
		//up
		if(!place_meeting(x, y-i ,OsuperSalto)) {
		y -= i;
		break;
		}
		//down
		if(!place_meeting(x, y+i ,OsuperSalto)) {
		y += i;
		break;
		}
		//top right
		if(!place_meeting(x+i, y-i ,OsuperSalto)) {
		x+=i;
		y -= i;
		break;
		}
		//top left
		if( !place_meeting(x-i, y-i ,OsuperSalto)) {
		x-=i;
		y -= i;
		break;
		}
		//bottom right
		if( !place_meeting(x+i, y+i ,OsuperSalto)) {
		x+=i;
		y += i;
		break;
		}
		//bottom left
		if(!place_meeting(x-i, y+i ,OsuperSalto)) {
		x-=i;
		y += i;
		break;
		}
	}
}
if(place_meeting(x , y , Obj_salva)) {
	for(var i = 0;i < 1000; i++) {
		//right
		if(!place_meeting(x+i , y ,Obj_salva)) {
		x += i;
		break;
		}
		//left
		if(!place_meeting(x-i , y ,Obj_salva)) {
		x -= i;
		break;
		}
		//up
		if(!place_meeting(x , y-i ,Obj_salva)) {
		y -= i;
		break;
		}
		//down
		if(!place_meeting(x , y+i ,Obj_salva)) {
		y += i;
		break;
		}
		//top right
		if(!place_meeting(x+i , y-i ,Obj_salva)) {
		x+=i;
		y -= i;
		break;
		}
		//top left
		if( !place_meeting(x-i , y-i ,Obj_salva)) {
		x-=i;
		y -= i;
		break;
		}
		//bottom right
		if(!place_meeting(x+i , y+i ,Obj_salva)) {
		x+=i;
		y += i;
		break;
		}
		//bottom left
		if(!place_meeting(x-i , y+i ,Obj_salva)) {
		x-=i;
		y += i;
		break;
		}
	}
}
y=y+vsp;
x=x+hsp;




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

if(hsp!=0) image_xscale=sign(hsp);
//if(!keyboard_check(ord("W"))&&!keyboard_check(ord("Q"))) keyPressed=false;


//attacco1
function attack1(){
	sprite_index = sProtagonistaAttacco;
	ds_list_clear(hitByAttack)
	mask_index=sHitboxAttacco1;
	var hitByAttackNow=ds_list_create();
	var hits1=instance_place_list(x,y,oNemico1,hitByAttackNow,false);
	var hits2=instance_place_list(x,y,oNemico2,hitByAttackNow,false);
	var hits3=instance_place_list(x,y,oNemico3,hitByAttackNow,false);
	var hitsBoss=instance_place_list(x,y,oBoss_1,hitByAttackNow,false);
	if(hits1>0){
		for(var i=0;i<hits1;i++){
			var hitID=hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID);
				with(hitID){ oNemico1.hitByPG(); }	
			}
		}
	}
	if(hits2>0){
		for(var i=0;i<hits2;i++){
			var hitID=hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID);
				with(hitID){ oNemico2.hitByPG(); }				
			}
		}
	}
	if(hits3>0){
		for(var i=0;i<hits3;i++){
			var hitID=hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID);
				with(hitID){ oNemico3.hitByPG(); }	
			}
		}
	}
	if(hitsBoss>0){
		for(var i=0;i<hitsBoss;i++){
			var hitID=hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID);
				with(hitID){ oBoss_1.hitByPG(); }	
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index=sprite_index;
}
if(keyboard_check(ord("W"))&&hsp==0&&vsp==0){
	attack1();
}

//attacco2
function attack2(){
	sprite_index = sProtagonistaAttacco2;
	ds_list_clear(hitByAttack)
	mask_index=sHitboxAttacco2;
	var hitByAttackNow=ds_list_create();
	var hits1=instance_place_list(x,y,oNemico1,hitByAttackNow,false);
	var hits2=instance_place_list(x,y,oNemico2,hitByAttackNow,false);
	var hits3=instance_place_list(x,y,oNemico3,hitByAttackNow,false);
	var hitsBoss=instance_place_list(x,y,oBoss_1,hitByAttackNow,false);
	if(hits1>0){
		for(var i=0;i<hits1;i++){
			var hitID=hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID);
				with(hitID){ oNemico1.hitByPG(); }	
			}
		}
	}
	if(hits2>0){
		for(var i=0;i<hits2;i++){
			var hitID=hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID);
				with(hitID){ oNemico2.hitByPG(); }				
			}
		}
	}
	if(hits3>0){
		for(var i=0;i<hits3;i++){
			var hitID=hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID);
				with(hitID){ oNemico3.hitByPG(); }	
			}
		}
	}
	if(hitsBoss>0){
		for(var i=0;i<hitsBoss;i++){
			var hitID=hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID);
				with(hitID){ oBoss_1.hitByPG(); }	
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index=sprite_index;
}
if(keyboard_check(ord("Q"))&&hsp==0&&vsp==0){
	attack2();
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