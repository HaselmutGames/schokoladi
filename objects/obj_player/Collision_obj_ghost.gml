var _player_lives = 3;
// Collision with obj_ghost
if (_player_lives == 3) {
    inst_393FEDF8.sprite_index = spr_heart_empty;
    _player_lives -= 1;
	
} else if (_player_lives == 2) {
    inst_64D402B3.sprite_index = spr_heart_empty;
    _player_lives -= 1;
	
} else if (_player_lives == 1) {
    inst_3317A822.sprite_index = spr_heart_empty;
    _player_lives -= 1;
    // Handle game over here, as player has lost all lives
} else if (_player_lives <= 0) {
    // Prevent further collisions from affecting the player
    // You might want to trigger a "game over" state here
}