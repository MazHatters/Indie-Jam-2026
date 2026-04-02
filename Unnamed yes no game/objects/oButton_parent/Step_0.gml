var _gw = display_get_gui_width();
var _gh = display_get_gui_height();

// We update our "Internal GUI Coordinates" instead of physical x/y
switch (object_index)
{
    case oButton_approve:		gui_x = (_gw / 2) - 200; gui_y = (_gh / 2) - 200; break;
    case oButton_reject:		gui_x = (_gw / 2) + 200; gui_y = (_gh / 2) - 200; break;
    case oButton_nextday:		gui_x = _gw / 2; gui_y = (_gh / 2) + 100; break;
    case oButton_restart_room:	gui_x = _gw / 2; gui_y = (_gh / 2) + 100; break;
    case oButton_mainmenu:		gui_x = _gw / 2; gui_y = (_gh / 2) + 200; break;
	case oButton_play:			gui_x = _gw / 2; gui_y = (_gh / 2) - 100; break;
	case oButton_quit:			gui_x = _gw / 2; gui_y = (_gh / 2) + 100; break;
}

// Physical x/y MUST match for point_in_rectangle to work in Global Pressed
x = gui_x;
y = gui_y;