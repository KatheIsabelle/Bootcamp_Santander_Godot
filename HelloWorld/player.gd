extends Sprite2D

# @export usado para variavel velocidade aparecer no inspector.
@export var velocidade = 10.0 

# Called when the node enters the scene tree for the first time.
func _ready():
	print("hello world")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#position.x = position.x + input.x * 10.0
	#position.y = position.y + input.y * 10.0
	position += input * velocidade * delta
	
	
	
	
	

