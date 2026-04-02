if (!instance_exists(oController)) exit; // <- Unlikely possible as oController is persistent

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
					instance_create_layer(352, 256, "Dialog_choice_revenue", oButton_approve);
					instance_create_layer(800, 256, "Dialog_choice_revenue", oButton_reject);
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
			oController.revenue += profit;
			var _ft = instance_create_layer(156, 350, "Dialog_choice_revenue", oFloatingText);
			_ft.text = (profit >= 0 ? "+" : "") + string(profit);
			_ft.text_color = c_yellow;
			_ft.float_direction = 1;
			io_clear();
		} 
		else if (oController.player_choice == "REJECT")
		{
			current_response = no_text;
			full_text = current_response;
			char_count = 0;
			state = "RESPONSE";
			oController.revenue += lose;
			var _ft = instance_create_layer(156, 350, "Dialog_choice_revenue", oFloatingText);
			_ft.text = string(lose);
			_ft.text_color = c_red;
			_ft.float_direction = -1;
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
			if (oController.npc_count >= oController.npc_limit)
			{
				if (!oController.show_result)
					oController.show_result = true;
			}
			else
				event_perform(ev_create, 0);
		}
	break;
}