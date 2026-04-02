// --- GUI CLICK DETECTION ---
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

mask_index = sprite_index;

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
			instance_destroy(oButton_reject);
			instance_destroy();
		break;
		
		case oButton_reject:
			oController.player_choice = "REJECT";
			instance_destroy(oButton_approve);
			instance_destroy();
		break;
		
		case oButton_nextday:
			// Reset for next round
			oController.npc_count = 0;
			oController.show_result = false;
			oController.revenue = 0;
			oController.day += 1;
			instance_destroy();
			with(oNPC) { event_perform(ev_create, 0); }
		break;

		case oButton_restart_room:
			oController.npc_count = 0;
			oController.revenue = 0;
			oController.show_result = false;
			oController.day = 1;
			room_restart();
		break;

		case oButton_mainmenu:
			room_goto(Main_menu);
		break;
	}
}