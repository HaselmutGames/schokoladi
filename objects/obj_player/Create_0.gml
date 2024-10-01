xspeed = 0;
yspeed = 0;

move_speed = 1;

// Initial lives count
_player_lives = 3;
// Invincibility timer
_invincibility_time = 0;
// Initial direction
_player_direction = 0;
// Storing heart spirte instances in an array
hearts[0] = instance_find(obj_heart, 0);
hearts[1] = instance_find(obj_heart, 1);
hearts[2] = instance_find(obj_heart, 2);