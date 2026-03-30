// Ensure the Controller exists to avoid a crash
if (!instance_exists(oController)) exit;

switch (state)
{
    
    case "ENTERING":
        if (x > target_x)
            x += -walk_speed;
        else if (x >= target_x)
		{
            state = "TALKING";
            dialogue_step = 1;
        }
    break;

    case "TALKING":
        // Player advances text with Space or Left Click
        if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
		{
            dialogue_step++;
            if (dialogue_step > 3)
			{
                state = "DECIDING";
				instance_create_layer(352, 256, "Dialog_and_choice", oButton_approve);
				instance_create_layer(800, 256, "Dialog_and_choice", oButton_reject);
            }
        }
    break;

    case "DECIDING":
        // NPC is IDLE. It waits for the Controller's state change.
        if (oController.player_choice == "APPROVE")
		{
            current_response = yes_text;
            state = "RESPONSE";
        } 
        else if (oController.player_choice == "REJECT")
		{
            current_response = no_text;
            state = "RESPONSE";
        }
    break;

    case "RESPONSE":
        // Wait for player to continue the dialogue
        if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
            state = "EXITING";
    break;

    case "EXITING":
        x += walk_speed;
        if (x == 1408) {
            // Reset Controller for the next cycle
            oController.player_choice = "WAITING";
            
            // Identity Swap: Re-run the Create Event
            event_perform(ev_create, 0);
        }
    break;
}