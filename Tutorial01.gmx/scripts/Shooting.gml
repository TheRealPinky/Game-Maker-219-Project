xdir = right_key - left_key;
ydir = down_key - up_key;
dir = 0;
offset = 20;

if(bullet_cooldown <=0 && (xdir != 0 || ydir != 0)) {
    bullet = instance_create(obj_player.x, obj_player.y, obj_bullet);
    bullet_cooldown = 15;
    if (xdir = 1) {
        dir = -sign(obj_player.vsp) * offset;
        obj_player.image_angle = 0;
    } else if (xdir = -1) {
        dir = sign(obj_player.vsp) * offset + 180;
        obj_player.image_angle = 180;
    } else if (ydir = -1) {
        dir = -sign(obj_player.hsp) * offset + 90;
        obj_player.image_angle = 90;
    } else if (ydir = 1) {
        dir = sign(obj_player.hsp) * offset + 270;
        obj_player.image_angle = 270;
    }
    bullet.direction = dir; 
    bullet.speed = 15;
    bullet.alignment = 1;
}
