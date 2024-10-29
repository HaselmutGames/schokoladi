// Collision with obj_ghost only processes if invincibility timer is 0
if(_invincibility_time == 0){
	if (_player_lives == 3) {
	    hearts[0].sprite_index = spr_heart_empty;
	    _player_lives -= 1;
		_invincibility_time = 60;
	
	} else if (_player_lives == 2) {
	    hearts[1].sprite_index = spr_heart_empty;
	    _player_lives -= 1;
		_invincibility_time = 60;
	
	} else if (_player_lives == 1) {
	    hearts[2].sprite_index = spr_heart_empty;
	    _player_lives -= 1;
		_invincibility_time = 60;
	    instance_destroy(obj_player);
		// implement game over "window"
	}
	
	// Reverse the ghost's direction upon collision
	other.direction += 180; // reverse the ghost's direction
	other.direction = other.direction mod 360; // Ensure direction stays within
}