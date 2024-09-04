extends CharacterBody2D

# Speed of the player
var speed = 400

# Target position
var target = position

# Called when input is received
func _input(event):
	# If the left mouse button is pressed
	if event is InputEventMouseButton:
		# If the left mouse button is pressed
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			# Set the target to the global mouse position
			target = get_global_mouse_position()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	# Move the player towards the target
	velocity = position.direction_to(target) * speed

	# Move the player towards the target
	if position.distance_to(target) > 10:
		move_and_slide()
	