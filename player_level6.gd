extends CharacterBody2D


const SPEED = 200.0

func _ready():
	var tween = get_tree().create_tween()
	var current_pos = self.position
	tween.tween_property(self, "position", Vector2(50000, 0) + current_pos, 500)


func win():
	print("goog win")
	$"Camera2D".zoom = Vector2(1, 1)
	$"Camera2D/WinScreen".visible = true
	self.freeze()

func freeze() -> void:
	self.set_physics_process(false) 
	self.set_process_input(false)
	self.set_process_unhandled_input(false)

func unfreeze() -> void:
	self.set_physics_process(true) 
	self.set_process_input(true)
	self.set_process_unhandled_input(true)
