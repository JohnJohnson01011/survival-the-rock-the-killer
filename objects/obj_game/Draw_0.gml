switch(room) {
	case rm_game:
		draw_set_halign(fa_left)
		draw_text(15, 15, "score: " + string(score))
		draw_text(15, 40, "health: " + string(health))
		break
	case rm_start:
		draw_set_halign(fa_center)
		
		draw_text_transformed_color(
			room_width/2, 100, "survival the rock the killer",
			2, 2, 0, c_lime, c_aqua, c_lime, c_yellow, 1
		)
		
		draw_text(
			room_width/2, 200,
@" score 952 for a minor dopamine hit

WASD: Move
Hold Space: Shoot
Mouse: Aim ship

Click the triangle to start
"
		)
		break
	case rm_lose:
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, 100, endText,
			2.5, 2.5, 0, c_red, c_red, c_yellow, c_yellow, 1
		)
		draw_text(
			room_width/2, 200,
			"your score: "+string(score)
		)
		draw_text(
			room_width/2, 250,
			"click to restart"
		)
		break
	case rm_win:
		draw_set_halign(fa_center)
		draw_text_transformed_color(
			room_width/2, 100, "you did it !!",
			2.5, 2.5, 0, c_lime, c_aqua, c_lime, c_yellow, 1
		)
		draw_text(
			room_width/2, 200,
			"click to restart"
		)
		break
}