// Inherit the parent event
event_inherited();

oController.player_choice = "APPROVE";
oController.can_vote = false; // Mission accomplished, lock the vote

// Destroy both buttons so they vanish from the screen
instance_destroy(oButton_reject);
instance_destroy();