extends CharacterBody2D

# The speed of the player
@export var speed = 400

# The speed of the player rotation
@export var rotation_speed = 4.0

# Called when the node enters the scene tree for the first time.
func get_input():
	# Move the player to the mouse position
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

	# Get right stick input for rotation
	var right_stick_x = Input.get_action_strength("right_stick_right") - Input.get_action_strength("right_stick_left")
	var right_stick_y = Input.get_action_strength("right_stick_down") - Input.get_action_strength("right_stick_up")

	# Check if the right stick is being moved
	if right_stick_x != 0 or right_stick_y != 0:
		# Calculate the angle based on the right stick position
		var stick_direction = Vector2(right_stick_x, right_stick_y)
		var target_rotation = stick_direction.angle()

		# Smooth rotation towards the target angle
		rotation = lerp_angle(rotation, target_rotation, rotation_speed * get_process_delta_time())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	# Get the player input
	get_input()

	# Move the player
	move_and_slide()
