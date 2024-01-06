extends CharacterBody2D

const SPEED = 400.0

func _physics_process(delta):
	var direction = Input.get_axis("Player2Up", "Player2Down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
