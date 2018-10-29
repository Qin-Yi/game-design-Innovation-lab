//draw_text_outlined(x, y, outline color, string color, string,font name)  
var xx,yy;  
xx = room_width/2;  
yy = 2*room_height/3 + 40;  
//show_message(room_width);
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 2*room_height/3, room_width, 2*room_height/3+80, false);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(argument[3])
//Outline  
draw_set_color(argument[0]);  
draw_text(xx+1, yy+1, argument[2]);  
draw_text(xx-1, yy-1, argument[2]);  
draw_text(xx,   yy+1, argument[2]);  
draw_text(xx+1,   yy, argument[2]);  
draw_text(xx,   yy-1, argument[2]);  
draw_text(xx-1,   yy, argument[2]);  
draw_text(xx-1, yy+1, argument[2]);  
draw_text(xx+1, yy-1, argument[2]);  

//Text  
draw_set_color(argument[1]);  
draw_text(xx, yy, argument[2]); 
draw_set_halign(fa_left);
draw_set_valign(fa_top);