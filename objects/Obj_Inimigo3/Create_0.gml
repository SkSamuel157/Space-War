velocidade = irandom_range(2, 2.5)
xdirecao = irandom_range(1, -1)

direcao = room_speed * irandom_range(.5, 1)
delay = direcao

stop = true
xstop = choose(150,250,350,450,550,650)
delay_stop = room_speed * choose(4,5,6)

alarm[0] = room_speed * irandom_range(1, 3)

HP = 3