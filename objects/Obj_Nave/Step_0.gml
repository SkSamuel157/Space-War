x = mouse_x
y = mouse_y

if (mouse_check_button(mb_left)) {
	a = instance_create_depth(x, y, depth, Obj_Tiro)
	a.image_xscale = 0.5
	a.image_yscale = 0.5
}