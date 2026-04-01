// Inherit the parent event
event_inherited();

oController.day += 1; oController.npc_count = 0; oController.revenue = 0; oController.can_vote = true; oController.show_result = false; instance_destroy(); with(oNPC) { event_perform(ev_create, 0); }
