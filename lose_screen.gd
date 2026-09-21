extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for button in self.get_children():
		button.button_down.connect(_on_button_down.bind(button))
		button.button_up.connect(_on_button_up.bind(button))
	$"restart".pressed.connect(restart.bind())
	$"quit".pressed.connect(quit.bind())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	
func restart() -> void:
	get_tree().reload_current_scene()
	
func quit() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_button_down(button) -> void:
	button.flip_v = true

func _on_button_up(button) -> void:
	button.flip_v = false
