move_speed = 0.4;
direction = choose(0, 90, 180, 270);
move_timer = irandom_range(60, 90);

// Array of colors for different ghost types
var colors = [c_red, c_blue, c_green, c_yellow];
image_blend = colors[irandom(array_length(colors) - 1)]; // Randomly choose a color for the ghost