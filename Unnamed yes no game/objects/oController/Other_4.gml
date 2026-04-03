switch (room)
{
	case Main_menu:
		if (current_music != -1) audio_stop_sound(current_music);
		current_music = audio_play_sound(soMain_menu_Dagored___Harlem_Heat__freetouse_com_, 100, true);
		audio_sound_gain(current_music, 1, 0);
	break;
}
