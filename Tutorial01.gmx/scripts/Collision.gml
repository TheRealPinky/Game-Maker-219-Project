///Collision Checking

//===Applies collision, and speed

//Environment Collision

//===Horizontal collision integrated collision with enemy as well
if(place_meeting(x+hsp, y, obj_environment) || place_meeting(x+hsp, y, obj_enemy)) { 
    while(!place_meeting(x+sign(hsp), y, obj_environment) || !place_meeting(x+sign(hsp), y, obj_enemy)) {
        x  += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//===Vertical collision integratedcollision with enemy as well
if(place_meeting(x, y+vsp, obj_environment) || place_meeting(x, y+vsp, obj_enemy)) { 
    while(!place_meeting(x, y+sign(vsp), obj_environment) || !place_meeting(x, y+sign(vsp), obj_enemy)) {
        y  += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

