extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

signal interacted
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("enter"):
		interacted.emit()

var has_talked = false

func freeze(body: Node2D) -> void:
	body.set_physics_process(false) 
	body.set_process_input(false)
	body.set_process_unhandled_input(false)

func unfreeze(body: Node2D) -> void:
	body.set_physics_process(true) 
	body.set_process_input(true)
	body.set_process_unhandled_input(true)

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and has_talked == false:
		$"../Player".freeze()
		has_talked = true
		print("goog")
		$"../Player/Camera2D/speech".visible = true
		$"../Player/Camera2D/speech/RichTextLabel".visible = true
		for i in range(0, len(get_meta("dialogue"))):
			$"../Player/Camera2D/speech/RichTextLabel".text = get_meta("dialogue")[i]
			await interacted
		$"../Player/Camera2D/speech".visible = false
		$"../Player/Camera2D/speech/RichTextLabel".visible = false
		$"NPC/speech".visible = false
		$"../Player".unfreeze()
