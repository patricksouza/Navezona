extends Node

#Vetor 
var paths= []
var ini_tex=[]
var powerups=[]
const path_dir= "res://Paths/"
const init_tex_dir="res://Sprites/Bosses/"
const power_dir="res://Cenas/Powerups/"

func _ready():
	carregaPaths()
	carregaTexturasInimigos()
	carregaPowerups()
	pass

	
func random_path():
	#Gera um numero randomico de 0 ao tamanho do vetor
	return paths[randi()%paths.size()]	
	pass

func random_ini_tex():
	return ini_tex[randi()%ini_tex.size()]
	pass
	
func carregaPaths():
	#Criando um novo diretorio na memoria
	#É um objeto/classe que lerá um diretorio
	var dir = Directory.new()
	dir.change_dir(path_dir)
	#Cria uma lista do diretorio/lê
	dir.list_dir_begin()
	#get_next() = leia o proximo arquivo
	var path_file = dir.get_next()
	#Enquanto o diretorio nao e vazio...
	while path_file != "":
		var path = load( path_dir+ path_file)
		if path && path extends Curve2D:
			#LOAD = carrega durante a execuçã
			#Carrega o que esta no path_dir concatenado com path_file
			paths.append(path)#Guarda no vetor PATHS
		path_file = dir.get_next()
			
	pass
	
	
func carregaTexturasInimigos():
	var dir = Directory.new()
	dir.change_dir(init_tex_dir)
	dir.list_dir_begin()
	var path_file = dir.get_next()
	while path_file != "":
		var path = load( init_tex_dir+ path_file)
		if path && path extends Texture:
			ini_tex.append(path)
		path_file = dir.get_next()
	pass
	
func carregaPowerups():
	var dir = Directory.new()
	dir.change_dir(power_dir)
	dir.list_dir_begin()
	var path_file = dir.get_next()
	while path_file != "":
		var path = load( power_dir+ path_file)
		if path && path extends Area2D:
			 powerups.append(path)
		path_file = dir.get_next()
	pass