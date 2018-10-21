extends Area2D
var vel=400
var life =200
var arma
var tiro_simples=preload("res://Scripts/tiro_simples.gd")
var tiro_duplo=preload("res://Scripts/tiro_duplo.gd")
var tiro_triplo=preload("res://Scripts/tiro_triplo.gd")

var armas= [tiro_simples.new(self),tiro_duplo.new(self),tiro_triplo.new(self)]

func _ready():
	add_to_group(game.GRUPO_NAVE1)
	arma=tiro_simples.new(self)
	set_process(true)	
	pass
	
func _process(delta):
	var d=0
	var e=0
	var c=0
	var b=0
	
	if Input.is_action_pressed("direita"):
		d=1
	if Input.is_action_pressed("esquerda"):
		e=-1
	if Input.is_action_pressed("cima"):
		c=-1
	if Input.is_action_pressed("baixo"):
		b=1
	
	if get_pos().x>600.9:
		d=0
	elif get_pos().x<38.9:
		e=0
	elif get_pos().y>445:
		b=0
	elif get_pos().y<25.6:
		c=0
	set_pos(get_pos()+Vector2(1,0)*vel*delta*(d+e))
	set_pos(get_pos()+Vector2(0,1)*vel*delta*(c+b))
	
	if Input.is_action_pressed("atirar"):
		arma.disp()
		pass
	arma.at(delta)
	pass
	
func troca(valor):
	arma=armas[valor]
	pass
	
func retira_vida1(dano):
	life-=dano
	if(life==0):
		queue_free()
	pass
	
func cura(cura):
	life+=cura
	pass