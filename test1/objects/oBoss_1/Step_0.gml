/// @description Insert description here
// You can write your code in this editor


// Move the boss towards the protagonist with a speed of 6

if x > oProtagonista.x {
	global.lookingRight = false;
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

function attack(){
	sprite_index = boss_1_attack;
	adjustSpriteMirror();
}

function run(){
	if(isAttacking == true){
		return;
	}
	sprite_index = boss_1_run;
	adjustSpriteMirror()
	x = x + lengthdir_x(4, point_direction(x + attackRange,y, oProtagonista.x + attackRange, oProtagonista.y));
}

// returna true se il boss sta ancora eseguendo l'animazione di attacco.
// returna false altrimenti
function checkBossAttackAnimation(){
	if(isAttacking == false){
		return false;
	}
	var bossLastAttackAnimationIndex = 12;
	if(image_index < bossLastAttackAnimationIndex-1){
		return true;
	}
	return false;
}

isAttacking = checkBossAttackAnimation()

//combattimento
if abs(x - oProtagonista.x) < attackRange {
	isAttacking = true;
	attack();
}
else {
	run();
}

	
	