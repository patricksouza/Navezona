extends Area2D
var vel=400
var arma
var tiro_simples=preload("res://Scripts/tiro_simples2.gd")
var life=50
func _ready():
	add_to_group(game.GRUPO_NAVE2)
	arma= tiro_simples.new(self)	
	set_process(true)
	pass
	
func _process(delta):
	var d=0
	var e=0
	var c=0
	var b=0
	
	if Input.is_action_pressed("direita2"):
		d=1
	if Input.is_action_pressed("esquerda2"):
		e=-1
	if Input.is_action_pressed("baixo2"):
		c=1
	if Input.is_action_pressed("cima2"):
		b=-1
	
	if get_pos().x>610:
		d=0
	elif get_pos().x<26.6:
		e=0
	elif get_pos().y>450:
		c=0
	elif get_pos().y<25.6:
		b=0
	
	set_pos(get_pos()+Vector2(1,0)*vel*delta*(d+e))
	set_pos(get_pos()+Vector2(0,1)*vel*delta*(c+b))
	
	if Input.is_action_pressed("atirar2"):
		arma.disp()
	arma.at(delta)
	pass
	
func retira_vida2(dano):
	life-=dano
	if(life==0):
		queue_free()
	pass
