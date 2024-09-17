extends CharacterBody2D

@export var speed = 400
@onready var player = $"."
@onready var animation_player = $AnimationPlayer

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
	# Check if the player is moving
	if velocity.length() > 0:
		animation_player.play("walk")  # Play the walk animation
	else:
		animation_player.stop()  # Stop the animation when not moving	

func _physics_process(delta):
	get_input()
	move_and_slide()
