extends CharacterBody2D

# Speed of the player
var speed:float = 400

# Target position
var target:Vector2 = position

# Called when input is received
func _input(event:InputEvent) -> void:
	# If the left mouse button is pressed
	if event is InputEventMouseButton:
		# If the left mouse button is pressed
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			# Set the target to the global mouse position
			target = get_global_mouse_position()
			
			# Print the target position
			print("Target position: ", target)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta:float) -> void:
	# Move the player towards the target
	velocity = position.direction_to(target) * speed

	# Move the player towards the target
	if position.distance_to(target) > 10:
		# Print the distance to the target
		print("Distance to target: ", position.distance_to(target))

		# Move the player towards the target
		move_and_slide()
	