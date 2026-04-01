// Check if we have anyone left in the pool
if (array_length(oController.npc_master_list) > 0)
{
	// "Pop" the first NPC off the list (removes them from the array)
	var chosen = array_shift(oController.npc_master_list);

	identity = chosen.name;
	text1 = chosen.dialogue1;
	text2 = chosen.dialogue2;
	text3 = chosen.dialogue3;
	yes_text = chosen.approve;
	no_text = chosen.reject;
	profit = chosen.gain;
	lose = chosen.lost;
	sprite_index = chosen.sprite;
	oController.npc_count += 1;
}
else
{
	// Mission Complete: No more NPCs left in the deck
	instance_destroy();
	exit; 
}

// --- STATE MACHINE INITIALIZATION ---
state = "ENTERING";
dialogue_step = 1;
current_response = "";
walk_speed = 4;
target_x = 544;

// Position Reset for New Identity
x = 1408;
y = 512;

//depth = -1;

// --- TYPEWRITER CONFIG ---
char_count = 0;           // How many characters to show right now
type_speed = 0.5;         // Speed of text (higher = faster)
box_height = 150;         // Height of the black dialogue bar
text_padding = 40;        // Space from the edge of the box
full_text = "";           // The complete string we are currently typing