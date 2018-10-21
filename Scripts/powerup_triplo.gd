extends Area2D

const vel = 150
const dir = Vector2(0,1)
var pre_power = preload("res://Cenas/powerup_triplo.tscn")

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	translate(dir *vel *delta)
	pass

	
func _on_powerup_duplo_area_enter( area ):
	if area.is_in_group(game.GRUPO_NAVE1):
		area.troca(2)
		queue_free()
	pass


func _on_Timer_timeout():
	var power = pre_power.instance()
	get_parent().add_child(power)
	pass 