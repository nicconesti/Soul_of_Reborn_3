/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


var hover=point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right, bbox_bottom);
if(hover==1){
image_xscale=lerp(image_scale,start_scaleMax,stretchSpeed);
image_yscale=lerp(image_scale, start_scaleMax,stretchSpeed);
}else{
image_xscale=lerp(image_scale,start_scale,stretchSpeed);
image_yscale=lerp(image_scale, start_scale,stretchSpeed);
}











