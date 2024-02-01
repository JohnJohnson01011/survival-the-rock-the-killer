instance_destroy()

with(other){
	//instance_destroy()
	alarm_set(0, 1)
	
	if sprite_index == spr_asteroid_huge {
		audio_play_sound(msc_hit3, 1, false)
		score += 25
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
			new_asteroid.sprite_index = spr_asteroid_med
		}
	} else if sprite_index == spr_asteroid_med {
		audio_play_sound(msc_hit2, 1, false)
		score += 10
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
			new_asteroid.sprite_index = spr_asteroid_small
		}
	} else {
		audio_play_sound(msc_hit1, 1, false)
		score += 5
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris)
	}
}