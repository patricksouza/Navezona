extends Node

const GRUPO_NAVE1= "nave1"
const GRUPO_NAVE2="nave2"
const DESTRUTIVO= "quebra"
const TIRO_INIMIGO= "GTI"
const GRUPO_INIMIGO="inimigo"


func _ready():
	randomize()
	pass
	
func getCamera():
	return get_tree().get_root().get_node("main").get_node("Cam")
	pass

