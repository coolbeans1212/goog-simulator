extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween = get_tree().create_tween()
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.set_trans(Tween.TRANS_SINE)
	var vector = Vector2(0, 0)
	var originalposition = self.position
	if get_meta("Vertical") == true:
		vector = Vector2(0, get_meta("Distance")) + self.position
	else:
		vector = Vector2(get_meta("Distance"), 0) + self.position
	tween.set_loops()
	tween.tween_property(self, "position", vector, get_meta("Time"))
	tween.tween_property(self, "position", originalposition,  get_meta("Time"))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
