extends Area2D
var vel=700

func _ready():
	set_process(true)
	pass

func _process(delta):
	set_pos(get_pos()+Vector2(0,-1)*vel*delta)
	if get_pos().y <-950:
		queue_free()
		pass

func _on_Tiro_area_enter(area):
	if area.is_in_group(game.DESTRUTIVO):
		if area.has_method("retira_vida3"):
			area.retira_vida3(20)
		else:
			queue_free()
		queue_free()
	elif area.is_in_group(game.GRUPO_INIMIGO):
		if area.has_method("recebe_dano"):
			area.recebe_dano(35)
			print("HP do boss",area.hp)
		else:
			queue_free()
		queue_free()
	pass
