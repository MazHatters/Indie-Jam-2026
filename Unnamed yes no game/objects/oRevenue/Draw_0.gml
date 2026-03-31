draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (instance_exists(oController))
{
	var _quota = 0;
	if (oController.day == 1) _quota = oController.day1_quota;
	else if (oController.day == 2) _quota = oController.day2_quota;
	else if (oController.day == 3) _quota = oController.day3_quota;
	else _quota = oController.day3_quota;

	draw_text(x, y, "Revenue: " + string(oController.revenue) + " / " + string(_quota));
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
