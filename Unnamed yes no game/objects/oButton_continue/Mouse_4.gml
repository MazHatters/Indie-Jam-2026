// Inherit the parent event
event_inherited();

oController.npc_count = 0; oController.revenue = 0; oController.show_result = false; instance_destroy(); with (oButton_parent) { if (object_index == oButton_continue) instance_destroy(); } with(oNPC) { event_perform(ev_create, 0); }
