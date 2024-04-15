if (pode_piscar) && !instance_exists(Obj_Nave) {
	draw_set_font(Ft_jogo)
	draw_set_color(c_red)
	draw_text(100, 100, "CLIQUE PARA \nJOGAR")
	//PRIMEIRO VALOR DO X DEPOIS Y
	// \n PULA LINHA
}

if (pode_piscar && level_start && global.gamestart && instance_exists(Obj_Inimigo) && instance_exists(Obj_Inimigo2) && instance_exists(Obj_Inimigo3)){
	draw_set_font(Ft_jogo)
	draw_set_color(c_white)
	draw_text(250, 200, "LEVEL "+string(global.level-1))
}

if (instance_exists(Obj_Nave)){
	draw_set_font(Ft_jogo)
	draw_set_color(c_white)
	draw_text(90, 70, "PONTOS: "+string(global.pontos))
}

if(global.pontos >= 100){
	instance_destroy(Obj_Inimigo)
	instance_destroy(Obj_Inimigo2)
	instance_destroy(Obj_Inimigo3)
	instance_destroy(Ft_jogo)
	draw_text(130, 300, "VIVA! GANHOU!!")
	pode_piscar = false
	alarm[0] = -1
}