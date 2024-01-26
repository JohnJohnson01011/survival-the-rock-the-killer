switch(room) {
	case rm_game:
		draw_text(15, 15, "score: " + string(score))
		draw_text(15, 35, "health: " + string(health))
		break
	case rm_start:
		var color = c_lime;
		
		draw_set_halign(fa_center)
		
		draw_text_transformed_color(
			room_width/2, 100, "survival the rock the killer",
			2, 2, 0, color, c_aqua, color, c_yellow, 1
		)
		
		draw_text(
			room_width/2, 200,
@" score 500 for a minor dopamine hit

WASD: Move
Hold Space: Shoot
Mouse: Aim ship

Click on the hexagon to start (captcha)
"
		)
		
		draw_set_halign(fa_left)
		break
	case rm_lose:
		
		break
	case rm_win:
		
		break
}