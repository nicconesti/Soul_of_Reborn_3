/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

x += 8;
sprite_index = boss_1_hurt;
global.hp = global.hp - 20;
if(global.hp <= 0){
	sprite_index = boss_1_death;
	instance_deactivate_object(oBoss_1);
	room_goto(negozio);
}


