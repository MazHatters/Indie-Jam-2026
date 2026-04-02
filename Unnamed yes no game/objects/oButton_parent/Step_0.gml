// --- SYNC HITBOX TO GUI ---
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

if (object_index == oButton_nextday) {
	x = _gw / 2;
	y = (_gh / 2) + 100;
}
else if (object_index == oButton_restart_room) {
	x = (_gw / 2) - 150;
	y = (_gh / 2) + 150;
}
else if (object_index == oButton_mainmenu) {
	x = (_gw / 2) + 150;
	y = (_gh / 2) + 150;
}