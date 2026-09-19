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

func _on_next_level_pressed() -> void:
	get_tree().change_scene_to_file("res://Level02.tscn")


func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_button_down(button) -> void:
	button.flip_v = true

func _on_button_up(button) -> void:
	button.flip_v = false
