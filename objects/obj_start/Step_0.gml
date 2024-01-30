if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x,mouse_y, obj_captcha) {
	with (instance_position(mouse_x, mouse_y, obj_captcha))
	{
	    if image_index == 2 {
			room_goto(rm_game)
		} else
		{
			game_end() // trol
			//game_restart()
		}
	}
}