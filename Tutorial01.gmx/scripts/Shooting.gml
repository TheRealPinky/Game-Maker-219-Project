loc_xdir = right_key - left_key; //===Local x direction for this script
loc_ydir = down_key - up_key; //===Local x direction for this script
offset = 20;
loc_dir = 0 //===Local direction
//===This is for making sure the game doesn't spawn the bullet on the player.
x_addition = 0; //===This is for adding onto the x of the spawn code.
y_addition = 0; //===This is for adding onto the y of the spawn code.

if(bullet_cooldown <=0 && (loc_xdir != 0 || loc_ydir != 0)) {
    bullet_cooldown = 15;
    if (loc_xdir = 1) { //===Fire right
        loc_dir = -sign(vsp) * offset;
        x_addition = 32;
        obj_player.angle_dir = 0;
    } else if (loc_xdir = -1) { //===Fire left
        loc_dir = sign(vsp) * offset + 180;
        x_addition = -32;
        obj_player.angle_dir = 180;
    } else if (loc_ydir = -1) { //===Fire up
        loc_dir = -sign(hsp) * offset + 90;
        y_addition = -32;
        obj_player.angle_dir = 90;
    } else if (loc_ydir = 1) { //===Fire down
        loc_dir = sign(hsp) * offset + 270;
        y_addition = 32;
        obj_player.angle_dir = 270;
    }
    
    bullet = instance_create(obj_player.x + x_addition, obj_player.y + y_addition, obj_new_bullet);
    bullet.direction = loc_dir;
    bullet.bull_dir = loc_dir; //===bull_dir under new bullet
    bullet.speed = 15;
    bullet.alignment = 1;
}
