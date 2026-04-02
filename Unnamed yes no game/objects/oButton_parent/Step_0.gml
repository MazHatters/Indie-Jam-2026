// --- HITBOX SYNCHRONIZATION ---
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

// Identify which child is calling this and set its position
switch (object_index)
{
	case oButton_nextday:
		x = _gw / 2;
		y = (_gh / 2) + 100;
	break;
	
	case oButton_restart_room:
		x = (_gw / 2) - 150;
		y = (_gh / 2) + 150;
	break;
	
	case oButton_mainmenu:
		x = (_gw / 2) + 150;
		y = (_gh / 2) + 150;
	break;
}