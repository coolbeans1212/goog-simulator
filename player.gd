extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -600.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	is_touching_danger()

func is_touching_danger():
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		if collision.get_collider() == $"../Danger":
			print("fsdjsfdjoisfdoisdfo")
			die()
func die():
	print("fsdjsfdjoisfdoisdfo")

func freeze() -> void:
	self.set_physics_process(false) 
	self.set_process_input(false)
	self.set_process_unhandled_input(false)

func unfreeze() -> void:
	self.set_physics_process(true) 
	self.set_process_input(true)
	self.set_process_unhandled_input(true)
