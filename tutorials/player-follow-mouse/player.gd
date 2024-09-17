extends CharacterBody2D

# The speed of the player
@export var speed = 400

# Called when the node enters the scene tree for the first time.
func get_input():
	# Move the player to the mouse position
	look_at(get_global_mouse_position())

	# Change the velocity of the player
	velocity = transform.x * Input.get_axis("down", "up") * speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	# Get the player input
	get_input()

	# Move the player
	move_and_slide()
