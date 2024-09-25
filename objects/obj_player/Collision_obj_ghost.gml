// Collision with obj_ghost only processes if invincibility timer is 0
if(_invincibility_time == 0){
	if (_player_lives == 3) {
	    inst_393FEDF8.sprite_index = spr_heart_empty;
	    _player_lives -= 1;
		_invincibility_time = 60;
	
	} else if (_player_lives == 2) {
	    inst_64D402B3.sprite_index = spr_heart_empty;
	    _player_lives -= 1;
		_invincibility_time = 60;
	
	} else if (_player_lives == 1) {
	    inst_3317A822.sprite_index = spr_heart_empty;
	    _player_lives -= 1;
		_invincibility_time = 60;
	    // Handle game over here, as player has lost all lives
	} else if (_player_lives <= 0) {
	    // Prevent further collisions from affecting the player
	    // You might want to trigger a "game over" state here
	}
}