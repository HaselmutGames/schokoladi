// Spawn player at the default position
instance_create_layer(43, 114, "Instances", obj_player);

global.ghost_spawn_points = [
	[45, 50],
	[80, 89],
	[165, 145],
	[220, 106]
];
var _num_ghosts = 4; // Number of ghosts to spawn
var _used_positions = []; // Array to track already-used positions
var _ghost_width = sprite_width;
var _ghost_height = sprite_height;

for (var _i = 0; _i < _num_ghosts; _i++) {
	var _valid_spawn = false; // Flag for valid spawn position
	var _index, _spawn_x, _spawn_y;
	
	while(!_valid_spawn){
		// Select a random spawn point from the global array
		_index = irandom(array_length(global.ghost_spawn_points) - 1);
		_spawn_x = global.ghost_spawn_points[_index][0];
		_spawn_y = global.ghost_spawn_points[_index][1];
		
		// Ensure the position is not already used and is valid
		if (!array_contains(_used_positions, _index) && 
			!collision_rectangle(
				_spawn_x, _spawn_y, 
				_spawn_x + _ghost_width, 
				_spawn_y + _ghost_height, 
				obj_map_walls, false, true
			)
		){
			_valid_spawn = true;		
		}
	}
    
	// Spawn the ghost and mark the position as used
	instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_ghost);
	array_push(_used_positions, _index);
	show_debug_message("Spawn point: (" + string(_spawn_x) + ", " + string(_spawn_y) + ")");

}