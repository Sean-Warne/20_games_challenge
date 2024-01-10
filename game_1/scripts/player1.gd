extends CharacterBody2D

const SPEED = 400.0

func _physics_process(delta):
	get_input()
	move_and_slide()

func get_input():
	var direction = Input.get_axis("Player1Up", "Player1Down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
