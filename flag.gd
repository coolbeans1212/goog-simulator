extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for button in $"../Player/Camera2D/WinScreen".get_children():
		button.button_down.connect(_on_button_down.bind(button))
		button.button_up.connect(_on_button_up.bind(button))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		print("goog win")
		$"../Player/Camera2D/WinScreen".visible = true
		$"../Player".freeze()
		$"../Player/Camera2D".zoom = Vector2(1, 1)

func _on_next_level_pressed() -> void:
	var current_level = get_tree().current_scene.scene_file_path.get_file().get_basename().right(2)
	var next_level = str(int(current_level) + 1)
	if next_level.length() == 1:
		next_level = "0" + next_level
	get_tree().change_scene_to_file("res://Level" + next_level + ".tscn")


func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_button_down(button) -> void:
	button.flip_v = true

func _on_button_up(button) -> void:
	button.flip_v = false
