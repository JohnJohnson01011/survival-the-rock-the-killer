/// @description Invincibility frames

invincibility_count += 1

if invincibility_count < 9 {
	self.image_alpha = (invincibility_count % 2) * 0.5
	alarm_set(0, alpha_frequency)
} else {
	self.image_alpha = 1
	invincibility_count = 0
	ship_speed = 0.32
}