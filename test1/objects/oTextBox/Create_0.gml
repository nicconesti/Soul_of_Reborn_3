/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
box=textBox;
name=nameBox;
portrait=FineLivello;
game_width=1320;
game_height=768;
display_set_gui_size(game_width, game_height);

box_width=sprite_get_width(box);
box_height=sprite_get_height(box);
port_width=sprite_get_width(portrait);
port_height=sprite_get_height(portrait)
name_width=sprite_get_width(name);
name_height=sprite_get_height(name);

port_x=(game_width-box_width-box_width)*0.5;
port_y=(game_height*0.98)-box_height;
box_x=port_x+port_width;
box_y=port_y;
name_x=box_x;
name_y=box_y-name_height;

x_buffer=12;
y_buffer= 8;
text_x=box_x+x_buffer;
text_y=box_y+y_buffer;
name_text_x=name_x+(name_width/2);
name_text_y=name_y+(name_height/2);
text_max_width=box_width-(2*x_buffer);


name_text[0]="Narratore";
name_text[1]="Narratore";
name_text[2]="Titto";
name_text[3]="Narratore";
name_text[4]="???";
name_text[5]="Titto";
name_text[6]="Sabaku";
name_text[7]="Sabaku";
name_text[8]="Narratore";
name_text[9]="Tutorial";
text[0]="Al suo risveglio, Titto si ritrova all'interno di un cimitero, un luogo inquietante ricco di lapidi. Non ricorda come vi sia arrivato e neanche cosa sia successo precedentemente. Ben presto si accorge che anche il suo corpo risulta essere strano.";
text[1]="Non corrisponde infatti a quello con cui era nato. Si tratta forse dello scheletro di un guerriero deceduto in battaglia? L'armatura di acciaio e lo scricchiolio che emette il suo corpo muovendosi lo hanno fatto riflettere su questa ipotesi.";
text[2]="Dove mi trovo? Non ricordo di aver mai visitato un luogo simile durante i miei viaggi. Neanche questo corpo mi appartiene... Cosa sta succedendo? Forse sono morto?";
text[3]="D'un tratto Titto nota una luce abbagliante, poco distante da lui. Sembra l'elmo di un guerriero decaduto. Improvvisamente, quell'oggetto apparentemente inanimato, si rivolge a lui, con voce calma, saggia e potente.";
text[4]="Prode guerriero, non pensavo che qualcuno fosse sopravvissuto a questa strage... Pare proprio che la profezia si stia avverando...";
text[5]="Chi sei tu? Un abitante di questo luogo? Come sono finito qui? Di quale profezia stai parlando?";
text[6]="Comprendo la tua confusione guerriero ma tutto si rivela chiaro a tempo debito. Per il momento, posso solo presentarmi: sono Sabaku e sono destinato ad accompagnarti durante il tuo viaggio per questa terra, Lorien.";
text[7]="Se declinerai la mia offerta, temo che rimarrai bloccato qui a lungo, senza alcun aiuto. Se accetterai, al contrario, tramite i miei poteri ti condurranno alla meta finale del tuo viaggio."
text[8]="Titto, ancora confuso, accetta l'offerta di quel misterioso elmo chiamato Sabaku: sembrava l'unica alternativa.";
text[9]="Quando Sabaku entra nel raggio di un nemico, spara cinque colpi che infliggono danno e che seguono il puntatore del mouse. Dopo aver sparato, un breve tempo di ricarica gli permette di sparare nuovamente."
page=0;
nPage=0;
interact_key=ord("E");
text_col=c_black;
name_col=c_black;
font=fsilver;
draw_set_font(font);
text_height=string_height("M");