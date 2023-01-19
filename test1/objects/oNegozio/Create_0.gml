/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
shopOpen=false;
global.shop=true;

selected=0;
selectedAnim=0;

items=ds_list_create();
ds_list_add(items, ["Mela",1,"Cura un cuore (consumabile solo una volta)"]);
ds_list_add(items, ["Scudo Sabaku",7,"Sabaku crea uno scudo che permette di pararti da un colpo"]);
ds_list_add(items, ["Cura Sabaku",7,"Sabaku cura un cuore"]);

itemCount=ds_list_size(items);

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth=guiWidth*0.3;
menuMargin=guiWidth*0.1;
previewWidth=(guiWidth-(menuWidth+menuMargin));

popup_id=instance_create_layer(x,y,"Instances_1",oPopUp);
has_been_interacted=false;
radius=265;


popup_id.visible=false;


