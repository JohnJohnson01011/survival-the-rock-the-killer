if ship_speed == 0.32 {
	health -= 1
	image_index += 1
	
	repeat(25) {
		instance_create_layer(x, y, "Instances", obj_debris)
	}

	ship_speed = 0.12
	alarm_set(0, alpha_frequency)

	with(other){
		instance_destroy()
	}

	if health <= 0 {
		instance_destroy()
	}
}