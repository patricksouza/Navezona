extends Camera2D
var vel=100

#CanvasLAyer não é afetado pelo efeito parallax

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	set_offset(get_offset()+Vector2(-0.5,0)*vel*delta)
	pass


