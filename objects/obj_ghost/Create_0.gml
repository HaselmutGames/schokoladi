move_speed = 0.4;
direction = choose(0, 90, 180, 270);
move_timer = irandom_range(15, 30);

// Array of colors for different ghost types
var _colors = [c_red, c_blue, c_green, c_yellow];
image_blend = _colors[irandom(array_length(_colors) - 1)]; // Randomly choose a color for the ghost