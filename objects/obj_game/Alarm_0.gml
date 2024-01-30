if room != rm_game {exit}

if choose(0, 1) == 0 {
	instance_create_layer(
		choose(0, room_width), irandom_range(0, room_height),
		"Instances", obj_asteroid
	)
} else {
	instance_create_layer(
		irandom_range(0, room_width), choose(0, room_height),
		"Instances", obj_asteroid
	)
}

alarm[0] = room_speed * 3