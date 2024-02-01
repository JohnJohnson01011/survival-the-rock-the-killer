if mouse_check_button_pressed(mb_left) {
	switch(room) {
		case rm_win:
			game_restart()
			break
		case rm_lose:
			game_restart()
			break
	}
}


if room == rm_game {
	if score >= 752 {
		audio_play_sound(msc_win, 1, false)
		audio_pause_sound(msc_theme)
		room_goto(rm_win)
	}
	if health <= 0 {
		audio_play_sound(msc_death, 1, false)
		endText = endTexts[irandom(array_length(endTexts) - 1)]
		room_goto(rm_lose)
	}
}