extends CharacterBody2D

@export var speed = 300

# This is a custom function that gets the input from the player
func get_input():	
	# This is a built-in function that gets the input from the player

	var input_direction = Input.get_vector("left", "right", "up", "down")
	# This is a built-in function that normalizes the input
	velocity = input_direction * speed

# This is a built-in function that is called every frame
func _physics_process(_delta):
	# This is a custom function that gets the input from the player
	get_input()
	# This is a built-in function that moves the player
	move_and_slide()
