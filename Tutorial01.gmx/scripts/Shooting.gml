loc_xdir = right_key - left_key;
loc_ydir = down_key - up_key;
offset = 20;
loc_dir = 0

if(bullet_cooldown <=0 && (loc_xdir != 0 || loc_ydir != 0)) {
    bullet = instance_create(obj_player.x, obj_player.y, obj_bullet);
    bullet_cooldown = 15;
    if (loc_xdir = 1) { //===Fire right
        loc_dir = -sign(vsp) * offset;
        obj_player.angle_dir = 0;
    } else if (loc_xdir = -1) { //===Fire left
        loc_dir = sign(vsp) * offset + 180;
        obj_player.angle_dir = 180;
    } else if (loc_ydir = -1) { //===Fire up
        loc_dir = -sign(hsp) * offset + 90;
        obj_player.angle_dir = 90;
    } else if (loc_ydir = 1) { //===Fire down
        loc_dir = sign(hsp) * offset + 270;
        obj_player.angle_dir = 270;
    }
    bullet.direction = loc_dir; 
    bullet.speed = 15;
    bullet.alignment = 1;
}
