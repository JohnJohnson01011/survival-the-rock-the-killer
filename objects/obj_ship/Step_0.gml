/// @description Movement

image_angle = point_direction(x, y, mouse_x, mouse_y)

if keyboard_check(ord("W")) {
	motion_add(90, ship_speed)
}

if keyboard_check(ord("A")) {
	motion_add(180, ship_speed)
}

if keyboard_check(ord("S")) {
	motion_add(270, ship_speed)
}

if keyboard_check(ord("D")) {
	motion_add(0, ship_speed)
}

speed = lerp(speed, 0, 0.075)
move_wrap(true, true, 16) // sprite_width/2

if keyboard_check(vk_space) {
	if count == 0 {
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet)
		bullet.direction = image_angle
		bullet.speed = bullet_speed
	}
	count = (count + 1) % reload_speed
} else {count = (count + 1) % reload_speed}