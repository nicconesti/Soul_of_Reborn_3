/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

/*x=oProtagonista.x-10;
y=oProtagonista.y-40;
*/
	if(!keyboard_check_pressed(keyboard_check(ord("D")) || keyboard_check(vk_right))){
		sprite_index = sSabakuDxCura;
}else	if(!keyboard_check_pressed(keyboard_check(ord("A")) || keyboard_check(vk_left))){
	sprite_index = sSabakuSxCura;
}

#region ai

	if(instance_exists(oNemico1)){
		var nearestEnemy=instance_nearest(x,y, oNemico1);
		if(attackRange> point_distance(x,y, nearestEnemy.x,nearestEnemy.y)){
			attack_timer--;
			if(attack_timer<=0and ammo>0){ammo--;
				attack_timer=attackTime;
				var bullet = instance_create_layer(x,y,"Assortita",	oProiettileSabaku);
				bullet.direction=point_direction(x,y,mouse_x,mouse_y );
				bullet.speed=1;
				bullet.direction=point_direction(x,y,mouse_x,mouse_y );
			}
		}
		
	}
	
	if(instance_exists(oNemico2)){
		var nearestEnemy=instance_nearest(x,y, oNemico2);
		if(attackRange> point_distance(x,y, nearestEnemy.x,nearestEnemy.y)){
			attack_timer--;
			if(attack_timer<=0 and ammo>0){ammo--;
				attack_timer=attackTime;
				var bullet = instance_create_layer(x,y,"Assortita",	oProiettileSabaku);
				bullet.direction=point_direction(x,y,mouse_x,mouse_y );
				bullet.image_angle=point_direction(x,y,mouse_x,mouse_y );
				bullet.speed=1;
			}
		}
		
	}
if(ammo<=0){
	reloadTimer--;
	if(reloadTimer<=0){
		reloadTimer=reloadTime;
		ammo=5;
	}
}

#endregion







