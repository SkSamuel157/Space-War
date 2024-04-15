if (y >= 10) {
	instance_create_layer(x,y, layer, Obj_TiroInimigo)
}

alarm[0] = room_speed * random_range(1,3)