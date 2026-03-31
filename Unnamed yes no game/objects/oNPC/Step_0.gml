if (!instance_exists(oController)) exit;

switch (state)
{
	case "ENTERING":
		image_xscale = 1;
		if (x > target_x)
			x -= walk_speed;
		else
		{
			state = "TALKING";
			dialogue_step = 1;
			char_count = 0;
		}
	break;

	case "TALKING":
		if (dialogue_step == 1) full_text = text1;
		if (dialogue_step == 2) full_text = text2;
		if (dialogue_step == 3) full_text = text3;

		if (char_count < string_length(full_text)) char_count += type_speed;

		if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
		{
			if (char_count < string_length(full_text))
			{
				char_count = string_length(full_text);
			}
			else
			{
				dialogue_step++;
				if (dialogue_step > 3)
				{
					state = "DECIDING";
					instance_create_layer(352, 256, "Dialog_and_choice", oButton_approve);
					instance_create_layer(800, 256, "Dialog_and_choice", oButton_reject);
				}
				else
				{
					char_count = 0;
				}
			}
		}
	break;

	case "DECIDING":
		if (oController.player_choice == "APPROVE")
		{
			current_response = yes_text;
			full_text = current_response; // Set typewriter to response text
			char_count = 0;
			state = "RESPONSE";
			io_clear();
		} 
		else if (oController.player_choice == "REJECT")
		{
			current_response = no_text;
			full_text = current_response;
			char_count = 0;
			state = "RESPONSE";
			io_clear();
		}
	break;

	case "RESPONSE":
		if (char_count < string_length(full_text)) char_count += type_speed;
		
		if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
		{
			if (char_count < string_length(full_text)) char_count = string_length(full_text);
			else state = "EXITING";
		}
	break;

	case "EXITING":
	image_xscale = -1;
		x += walk_speed;
		if (x >= 1408)
		{
			oController.player_choice = "WAITING";
			event_perform(ev_create, 0);
		}
	break;
}