x = mouse_x
y = mouse_y

if (mouse_check_button(mb_left)) {
	if (disparo = 0) {
		a = instance_create_depth(x, y, depth, Obj_Tiro)
		disparo = 15
		a.image_xscale = 1
		a.image_yscale = 1

}}
if (disparo > 0 ) {
	disparo -= 1
}


if(global.HP <= 0){
	instance_destroy()
}