extends Area2D

const vel = 500
const dir = Vector2(0,1)
func _ready():
	add_to_group(game.TIRO_INIMIGO)	
	set_process(true)
	pass

func _process(delta):
	translate(dir *vel *delta)
	pass


func _on_inimigo_tiro_area_enter( area ):
	if area.is_in_group(game.GRUPO_NAVE1):
		if area.has_method("retira_vida1"):
			area.retira_vida1(15)
			print("acertou mizeravi!")
			print("hp nave1",area.life)
		else:
			queue_free()
		queue_free()
	elif area.is_in_group(game.GRUPO_NAVE2):
		if area.has_method("retira_vida2"):
			area.retira_vida2(15)
			
		else:
			queue_free()
		queue_free()
	elif area.is_in_group(game.DESTRUTIVO):
		if area.has_method("retira_vida3"):
			area.retira_vida3(10)
		else:
			queue_free()
		queue_free()
	pass 
