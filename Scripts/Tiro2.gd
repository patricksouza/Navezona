extends Area2D

var vel=550

func _ready():
	set_process(true)
	get_node("laser").play("Tiro_simples")
	pass
	
func _process(delta):
	set_pos(get_pos()+Vector2(0,-1)*vel*delta)
	if get_pos().y<-950:
		queue_free()
		pass




func _on_Tiro2_area_enter( area ):
	if area.is_in_group(game.GRUPO_NAVE1):
		if area.has_method("cura"):
			area.cura(10)
			print("HP da nave1: ",area.life)
		else:
			area.queue_free()
		queue_free()
	if area.is_in_group(game.DESTRUTIVO):
		if area.has_method("retira_vida3"):
			area.retira_vida3(10)
			print("acertou bloco mizeravi")
		else:
			area.queue_free()
		queue_free()
	pass 
