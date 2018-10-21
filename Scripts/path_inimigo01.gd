extends Path2D
#Só carrega a variaval quando a cena for carregar
#Func = ONREADY
#OFFSET = 0 a 1 
#Monitora o caminho
#exemplo 0,1 0,2 tendendo a 1
onready var follow  = get_node("follow")
var vel = 6.5

#DELTA È UM TEMPO ENTRE UM QUADRO E OUTRO 
#Usando o "delta" o godot fixara o valor usado como "velocidade" em todos os 
#pcs que o jogo for rodado
func _ready():
	set_curve(recursos.random_path())
	set_process(true)
	pass
	
func _process(delta):
	follow.set_offset(follow.get_offset() + vel + delta)
	
