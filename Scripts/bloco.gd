extends Area2D
var lifes=500

func _ready():
	add_to_group(game.DESTRUTIVO)
	set_process(true)
	pass

func retira_vida3(dano):
	lifes-=dano
	if lifes==0:
		queue_free()
		remove_from_group(game.DESTRUTIVO)
	pass


	
