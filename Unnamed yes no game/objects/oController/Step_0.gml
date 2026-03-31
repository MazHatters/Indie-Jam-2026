if keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(vk_escape)
	game_end();

if keyboard_check_pressed(ord("R"))
	game_restart();

// Check if the window size has changed since the last frame
if (window_has_focus()) {
    var _ww = window_get_width();
    var _wh = window_get_height();

    // Only update if dimensions actually changed to save CPU cycles
    if (surface_get_width(application_surface) != _ww || surface_get_height(application_surface) != _wh) {
        
        // 1. Resize the drawing surface
        surface_resize(application_surface, _ww, _wh);
        
        // 2. Resize the GUI layer (Critical for your Buttons)
        display_set_gui_size(_ww, _wh);
        
        // 3. Update the Camera/View to prevent stretching
        camera_set_view_size(view_camera[0], _ww, _wh);
    }
}

// oController Step Event
if (keyboard_check_pressed(vk_f11)) {
    if (window_get_fullscreen()) {
        // Return to Windowed Mode
        window_set_fullscreen(false);
        // Optional: Set a specific window size for windowed mode
        window_set_size(1280, 720); 
    } else {
        // Enter Fullscreen Mode
        window_set_fullscreen(true);
    }
    
    // CRITICAL: Alarms allow the engine one frame to adjust 
    // before we recalculate the surface sizes.
    alarm[0] = 1; 
}

// Increasing NPC limit depending on the day
if (day == 1)
	npc_limit = 5;
else if (day == 2)
	npc_limit = 10;
else if (day == 3)
	npc_limit = 15;