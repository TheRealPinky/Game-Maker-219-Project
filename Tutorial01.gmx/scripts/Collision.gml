///Collision Checking

//===Applies collision, and speed

//Environment Collision

//===Horizontal collision
if(place_meeting(x+hsp, y, obj_environment)) { 
    while(!place_meeting(x+sign(hsp), y, obj_environment)) {
        x  += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//===Vertical collision
//===Cool stuff I guess, for some reason sign is like absolute value, it will give 0, 1, or -1
if(place_meeting(x, y+vsp, obj_environment)) { 
    while(!place_meeting(x, y+sign(vsp), obj_environment)) {
        y  += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

//Enemy Collision

//Horizontal Collision
if(place_meeting(x+hsp, y, obj_enemy)) { 
    while(!place_meeting(x+sign(hsp), y, obj_enemy)) {
        x  += sign(hsp);
    }
    hsp = 0;
}


//===Vertical collision
//===Cool stuff I guess, for some reason sign is like absolute value, it will give 0, 1, or -1
if(place_meeting(x, y+vsp, obj_enemy)) { 
    while(!place_meeting(x, y+sign(vsp), obj_enemy)) {
        y  += sign(vsp);
    }
    vsp = 0;
}

