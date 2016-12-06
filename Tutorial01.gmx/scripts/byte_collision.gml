
//===get direction here in .1 value for addition.
temp_hspeed = sign(hspeed) * .1;   
temp_vspeed = sign(vspeed) * .1;
while(!place_meeting(x + temp_hspeed, y,obj_environment)) {
    temp_hspeed = temp_hspeed + (sign(temp_hspeed) * .1);
}
while(!place_meeting(x, y + temp_vspeed, obj_environment)) {
    temp_vspeed = temp_vspeed + (sign(temp_vspeed) * .1);
}
//===For Debugging, un comment for cool shit
/*
show_message("hspeed = " + string(hspeed) + " vspeed = " + string(vspeed)
    + " temp_hspeed = " + string(temp_hspeed) + " temp_vspeed = " + string(temp_vspeed)
    + " abs temp_h = " + string(abs(temp_hspeed)) + " abs temp_v = " + string(abs(temp_vspeed)));
*/
//===Needs work but almost done.
if (abs(temp_hspeed) < abs(temp_vspeed)) {
    x += temp_hspeed;
    //===y = a formula which takes in direction
    y += vspeed;
} else if (abs(temp_vspeed) < abs(temp_hspeed)) {
    y += temp_vspeed;
    //===x = a formula which takes in direction
    x += hspeed
} else if (abs(temp_hspeed) == abs(temp_vspeed)) {
    x += temp_hspeed;
    y += temp_vspeed;
}
speed = 0;

