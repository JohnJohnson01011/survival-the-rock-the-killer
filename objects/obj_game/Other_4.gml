if room == rm_game {
	audio_play_sound(msc_start, 1, false)
	audio_play_sound(msc_theme, 3, true)
	repeat(6) {
		instance_create_layer(
			choose(irandom_range(0, room_width * .3), irandom_range(room_width * .7, room_width)),
			choose(irandom_range(0, room_height * .3), irandom_range(room_height * .7, room_height)),
			"Instances", obj_asteroid
		)
	}
	
	alarm[0] = 60
}