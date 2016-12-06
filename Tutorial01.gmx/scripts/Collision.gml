///Collision Checking

//===Applies collision, and speed

//Environment Collision

//===Horizontal collision, integrated collision with enemy as well
if(place_meeting(x+hsp, y, obj_environment) || place_meeting(x+hsp, y, obj_enemy)) { 
    while(!place_meeting(x+sign(hsp), y, obj_environment) && !place_meeting(x+sign(hsp), y, obj_enemy)) {
        x  += sign(hsp);
        if place_meeting(x, y+vsp, obj_bit)
            {
            if (obj_player.iframes <= 0)
                {
                obj_player.iframes = 15;
                global.player_health -= 100;
                obj_player.draw_check = 1;
                }
            }
    }
    hsp = 0;
}
x += hsp;

//===Vertical collision, integrated collision with enemy as well
if(place_meeting(x, y+vsp, obj_environment) || place_meeting(x, y+vsp, obj_enemy)) { 
    while(!place_meeting(x, y+sign(vsp), obj_environment) && !place_meeting(x, y+sign(vsp), obj_enemy)) {
        y  += sign(vsp);
        if place_meeting(x, y+vsp, obj_bit)
        {
        if (obj_player.iframes <= 0)
            {
            obj_player.iframes = 15;
            global.player_health -= 100;
            obj_player.draw_check = 1;
            }
        }
    }
    vsp = 0;
}
y += vsp;

