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






if x > oNemico2.x {
	lookingRight1 = true;
}
else {
	global.lookingRight = true
}

function adjustSpriteMirror(){
	//if isAttacking == true {
	//	return;
	//}
	if global.lookingRight == false {
		image_xscale = -1;
	}
	else {
		image_xscale = 1;
	}
}

function attack(attackChosen){
	sprite_index = attackChosen;
	adjustSpriteMirror();
}

function run(){
	if(isAttacking == true){
		return;
	}
	sprite_index = sNemico2Walk;
	adjustSpriteMirror()
	x = x + lengthdir_x(1, point_direction(x + attackRange,y, oProtagonista.x + attackRange, oProtagonista.y));
}

// returna true se il boss sta ancora eseguendo l'animazione di attacco.
// returna false altrimenti
function checkBossAttackAnimation(){
	if(isAttacking == false){
		return false;
	}

	if(image_index < global.bossLastAttackAnimationIndex-1){
		return true;
	}
	return false;
}

isAttacking = checkBossAttackAnimation()

function walkAround(){
}

//combattimento
if abs(x - oProtagonista.x) < attackRange {
	isAttacking = true
	global.bossLastAttackAnimationIndex = 15
	attack(sNemico2Attacco);
}
else if abs(x - oProtagonista.x) < global.triggerRange {
	run();
}
else {
	walkAround();
}