extends CharacterBody2D


const SPEED = 600.0


func _physics_process(delta: float) -> void:

	# Handle jump.
	var directiony := Input.get_axis("up", "down")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx := Input.get_axis("left", "right")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	

	move_and_slide()
	is_touching_danger()

func is_touching_danger():
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider() == $"../Danger":
			die()
func die():
	print("fsdjsfdjoisfdoisdfo")
	
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
