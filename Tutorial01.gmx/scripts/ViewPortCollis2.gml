

ramming = false;
//===get direction here in .1 value for addition.
temp_hspeed = sign(hspeed) * .1;   
temp_vspeed = sign(vspeed) * .1;
while(!place_meeting(x + temp_hspeed, y, damage_field)) {
    temp_hspeed = temp_hspeed + (sign(temp_hspeed) * .1);
}
while(!place_meeting(x, y + temp_vspeed, damage_field)) {
    temp_vspeed = temp_vspeed + (sign(temp_vspeed) * .1);
}
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
//===Add field here of something.
inst = instance_create(x,y,damage_field);
obj_viewport_protector_boss.var_created += 1;
inst.created = obj_viewport_protector_boss.var_created;
run = false;
