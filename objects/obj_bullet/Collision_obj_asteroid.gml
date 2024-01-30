instance_destroy()

with(other){
	instance_destroy()
	
	if sprite_index == spr_asteroid_huge {
		score += 25
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
			new_asteroid.sprite_index = spr_asteroid_med
		}
	} else if sprite_index == spr_asteroid_med {
		score += 10
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
			new_asteroid.sprite_index = spr_asteroid_small
		}
	} else {score += 5}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris)
	}
}