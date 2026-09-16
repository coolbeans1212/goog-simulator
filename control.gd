extends Control
var tweening := false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for button in self.get_children():
		button.button_down.connect(_on_button_down.bind(button))
		button.button_up.connect(_on_button_up.bind(button))
		if button.name.left(5) == 'Level':
			button.pressed.connect(_on_level_button_pressed.bind(button))

func _on_button_down(button) -> void:
	button.flip_v = true
	

func _on_button_up(button) -> void:
	button.flip_v = false
	

func tween_camera_down(px: int, time: float) -> int:
	if tweening:
		return -1
	tweening = true
	var tween = get_tree().create_tween()
	var camera: Camera2D = get_node("../Camera2D")
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.set_trans(Tween.TRANS_SINE)
	tween.tween_property(camera, "position", camera.position + Vector2(0, px), time)
	await tween.finished
	tweening = false
	return 0

func _on_play_button_pressed() -> void:
	print("goog")
	tween_camera_down(1400, 2.0)

func _on_go_back_button_pressed_level() -> void:
	tween_camera_down(-1400, 2.0)

func go_to_level(level) -> void:
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://" + level + ".tscn")
	$"../Camera2D".position = Vector2(0, 0)
	

func _on_level_button_pressed(button) -> void:
	print(button.name.left(7))
	if await tween_camera_down(999999, 0) == 0:
		 # black screen :)
		var boomaudio = $"../boom"
		boomaudio.play()
		boomaudio.connect("finished", go_to_level.bind(button.name.left(7)))
		
