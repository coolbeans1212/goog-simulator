extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	var camera = $"../Player/Camera2D"
	var tween = get_tree().create_tween()
	print("a")
	if body is not CharacterBody2D:
		return
	if get_meta("SetScale") == true:
		tween.tween_property(camera, "zoom", get_meta("Scale"), get_meta("Time"))
		print("b")
		print(camera.zoom)
