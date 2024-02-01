sprite_index = choose(
	spr_asteroid_med,
	spr_asteroid_huge
)

direction = irandom_range(1, 360)
image_angle = irandom_range(1, 360)

speed = 1

turn = image_angle < 180 ? 1: -1;