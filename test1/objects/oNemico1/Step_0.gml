hspd = dir *spd;
vspd = vspd + grv;


//Collisioni orizzontali
if(place_meeting(x+hspd , y , oTerreno_inv)) {
	while(!place_meeting(x+sign(hspd) , y , oTerreno_inv)) {
		x = x+ sign(hspd);
	}
	dir = dir*-1;
	hspd = 0;
	image_xscale = 1
}
x= x +hspd;

if(place_meeting(x+hspd , y , oTerreno_inv2)) {
	while(!place_meeting(x+sign(hspd) , y , oTerreno_inv2)) {
		x = x+ sign(hspd);
	}
	dir = dir*-1;
	hspd = 0;
	image_xscale = -1
}
x= x +hspd;

//Collisioni verticali
if(place_meeting(x , y+vspd , oTerreno)) {
	while(!place_meeting(x , y+sign(vspd) , oTerreno)) {
		y = y + sign(vspd);
	}
	vspd = 0 ;
	
	/*if(dont_fall && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+7, oTerreno)) {
		dir = dir*-1;
	}*/
}
y = y+vspd;
if(place_meeting(x , y , oTerreno_inv)) {
	for(var i = 0;i < 1000; i++) {
		//right
		if(!place_meeting(x+i , y ,oTerreno_inv)) {
		x += i;
		break;
		}
		//left
		if(!place_meeting(x-i , y ,oTerreno_inv)) {
		x -= i;
		break;
		}
		//Up
		if(!place_meeting(x , y-i ,oTerreno_inv)) {
		y -= i;
		break;
		}
		//down
		if(!place_meeting(x , y+i ,oTerreno_inv)) {
		y += i;
		break;
		}
		//top right
		if(!place_meeting(x+i , y-i ,oTerreno_inv)) {
		x+=i;
		y -= i;
		break;
		}
		//top left
		if(!place_meeting(x-i , y-i ,oTerreno_inv)) {
		x-=i;
		y -= i;
		break;
		}
		//bottom right
		if(!place_meeting(x+i , y+i ,oTerreno_inv)) {
		x+=i;
		y += i;
		break;
		//borrom left
		if(!place_meeting(x-i , y+i ,oTerreno_inv)) {
		x-=i;
		y += i;
		break;
		}
		
	}
}
}

if(place_meeting(x , y , oTerreno_inv2)) {
	for(var i = 0;i < 1000; i++) {
		//right
		if(!place_meeting(x+i , y ,oTerreno_inv2)) {
		x += i;
		break;
		}
		//left
		if(!place_meeting(x-i , y ,oTerreno_inv2)) {
		x -= i;
		break;
		}
		//Up
		if(!place_meeting(x , y-i ,oTerreno_inv2)) {
		y -= i;
		break;
		}
		//down
		if(!place_meeting(x , y+i ,oTerreno_inv2)) {
		y += i;
		break;
		}
		//top right
		if(!place_meeting(x+i , y-i ,oTerreno_inv2)) {
		x+=i;
		y -= i;
		break;
		}
		//top left
		if(!place_meeting(x-i , y-i ,oTerreno_inv2)) {
		x-=i;
		y -= i;
		break;
		}
		//bottom right
		if(!place_meeting(x+i , y+i ,oTerreno_inv2)) {
		x+=i;
		y += i;
		break;
		//borrom left
		if(!place_meeting(x-i , y+i ,oTerreno_inv2)) {
		x-=i;
		y += i;
		break;
		}
		
	}
}
}







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

function hitByPG(){
	hp=hp-50;
}