/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


if x > oNemico2.x {
	lookingRight1 = true;
}
else {
	lookingRight1 = false;
}


function attack(){
	if lookingRight1 == false {
		image_index = sNemico2Attacco;
	}
	else {
		image_index = sNemico2AttaccoDx;
	}
	
}

function run(){
	if(isAttacking == true){
		return;
	}
	if lookingRight1 == false {
		image_index = sNemico2Walk;
	}
	else {
		image_index = sNemico2WalkDx;
	}
	x = x + lengthdir_x(4, point_direction(x + attackRange,y, oProtagonista.x + attackRange, oProtagonista.y));
}
function checkBossAttackAnimation(){
	if(isAttacking == false){
		return false;
	}
	if lookingRight1 == false {
		image_index = sNemico2;
	}
	else {
		image_index = sNemico2Dx;
	}
	var nemLastAttackAnimationIndex = 12;
	if(image_index < nemLastAttackAnimationIndex-1){
		return true;
	}
	return false;
}

isAttacking = checkBossAttackAnimation()
// returna true se il boss sta ancora eseguendo l'animazione di attacco.
// returna false altrimenti


//combattimento
if abs(x - oProtagonista.x) < attackRange {
	attack();
}
else {
	run();
}













