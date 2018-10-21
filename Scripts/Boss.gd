extends Area2D

var hp=1000
var pre_tiro=preload("res://Cenas/inimigo_tiro.tscn")

func _ready():
	add_to_group(game.GRUPO_INIMIGO)
	get_node("Sprite").set_texture(recursos.random_ini_tex())
	pass
	

func recebe_dano(dano):
	hp-=dano
	if hp<=0:
		queue_free()
		get_tree().change_scene("res://Cenas/Transition.tscn")
	pass


func _on_Timer_tiro_timeout():
	var tiro=pre_tiro.instance()
	tiro.set_global_pos(get_node("tiro_pos").get_global_pos())
	game.getCamera().add_child(tiro)
	pass 