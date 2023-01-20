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

function attack(attackChosen){
	sprite_index = attackChosen;
	adjustSpriteMirror();
}

function run(){
	if(isAttacking == true){
		return;
	}
	sprite_index = sNemico1;
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
	if(isAttacking == true){ return }
	var randomNumber = irandom(1);
	if(randomNumber == 0){
		global.bossLastAttackAnimationIndex = 6
		attack(sNemico1Attacco1);
	}
	else{
		global.bossLastAttackAnimationIndex = 6
		attack(sNemico1Attacco2)
	}
}
else if abs(x - oProtagonista.x) < global.triggerRange {
	run();
}
else {
	walkAround();
}