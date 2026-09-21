extends Camera2D

var fixed_position: Vector2

func _ready():
	fixed_position = global_position

func _process(_delta):
	global_position = fixed_position
