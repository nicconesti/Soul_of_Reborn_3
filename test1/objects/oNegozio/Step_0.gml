/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

if(!shopOpen && place_meeting(x,y+10,oProtagonista) && keyboard_check_pressed(ord("E"))){
	shopOpen=true;
	global.shop=true;
} else if(shopOpen && keyboard_check_pressed(vk_escape)){
	shopOpen=false;
	global.shop=false;
}

if(shopOpen){
	selectedAnim=lerp(selectedAnim,selected,0.1);
	
	if(keyboard_check_pressed(vk_down)){
		selected++;
		if(selected==itemCount) selected=0;
	}
	
	if(keyboard_check_pressed(vk_up)){
		selected--;
		if(selected<0) selected =itemCount-1;
	}

var arr=items[| selected];
var item=arr[0];
var price=arr[1];

if(keyboard_check_pressed(vk_enter)&&global.monete>=price){
	ds_list_add(global.inv,item);
	global.monete-=price;
	}
}

if(!has_been_interacted){
	if(collision_circle(x,y,radius,oProtagonista,false,true)){
		popup_id.visible	=true;
	}else{
		popup_id.visible	=false;
	}
}























