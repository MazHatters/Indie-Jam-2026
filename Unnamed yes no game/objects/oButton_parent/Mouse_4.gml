// --- GUI CLICK DETECTION ---
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

// Check if the GUI mouse is over THIS specific button instance
if (position_meeting(_mx, _my, id))
{
	switch (object_index)
	{
		case oButton_play:
			room_goto_next();
		break;
		
		case oButton_quit:
			game_end(0);
		break;
		
		case oButton_approve:
			oController.player_choice = "APPROVE";
			oController.can_vote = false;
			instance_destroy(oButton_reject);
			instance_destroy();
		break;
		
		case oButton_reject:
			oController.player_choice = "REJECT";
			oController.can_vote = false;
			instance_destroy(oButton_approve);
			instance_destroy();
		break;
		
		case oButton_nextday:
			// Reset for next round
			oController.show_result = false;
			oController.revenue = 0;
			oController.day += 1;
			room_restart();
		break;

		case oButton_restart_room:
			room_restart();
		break;

		case oButton_mainmenu:
			room_goto(rm_MainMenu); // Ensure your room name is correct
		break;
	}
}