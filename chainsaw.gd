extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_meta("CounterClockwise") == true:
		self.rotation = self.rotation - deg_to_rad(get_meta("DegreesPerSecond")) * delta
	else:
		self.rotation = self.rotation + deg_to_rad(get_meta("DegreesPerSecond")) * delta


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../Player".die()
