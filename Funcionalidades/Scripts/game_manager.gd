extends Node

# objetos do prefab a serem criados com clique do mouse
@export var object_templates: Array[PackedScene] 

#Capturando Clique de Mouse User
func _input(event: InputEvent):
	#Filtrando eventos do mouse com condicionais
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				spawn_object(event.position)
				print("Clique esquerdo ok, infos:", event)

#Funcao para spawn de objetos, usa posicao do mouse para criar o prefab box_regular
func spawn_object(position: Vector2):
	#valor aleatorio do index do array
	var index: int = randi_range(0,object_templates.size()-1)
	var object_template = object_templates[index]
	
	#clone do objeto 
	var object = object_template.instantiate()
	
	#posicao de criação do objeto 
	object.position = position 
	
	#inserir no mundo
	add_child(object)
	
