extends Node
var intervalo=0.29
var ult_disparo=0
var nave
var pre_tiro=preload("res://Cenas/Tiro2.tscn")

func _init(nave):
	self.nave=nave
	pass
	
func disp():
	if ult_disparo<=0:
		cria_tiro(nave.get_node("PoscanoC"))
		ult_disparo=intervalo
	pass


func at(delta):
	if ult_disparo>0:
		ult_disparo-=delta
	pass

func cria_tiro(node):
	var tiro = pre_tiro.instance()
	tiro.set_global_pos(node.get_global_pos())
	nave.get_owner().add_child(tiro)
	pass
