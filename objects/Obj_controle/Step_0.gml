if (mouse_check_button(mb_left) && !instance_exists(Obj_Nave)){
	instance_create_layer(10, 10, layer, Obj_Nave)
	pode_criar_inimigos = true
	level_start = true
	global.gamestart = true
}

if (level_start && !instance_exists(Obj_Inimigo) && !instance_exists(Obj_Inimigo2) && !instance_exists(Obj_Inimigo3)){
	delay_start -= 1
	
	if (delay_start <= 0) {
		inimigo_liberado = true
		delay_start = delay
		pode_criar_inimigos = true
	}
}

if (pode_criar_inimigos && global.gamestart) {
	var repetir = 2 * global.level
	repeat(repetir) {
		criar_inimigos()
	}
	
	pode_criar_inimigos = false
	inimigo_liberado = false
	global.level++
}
//criar_inimigos()