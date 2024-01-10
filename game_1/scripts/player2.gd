extends CharacterBody2D

const SPEED = 600.0
const clamp_vector = Vector2(35, 35)

@onready var screen_size = get_viewport_rect().size

func _ready():
	pass

func _physics_process(delta):
	get_input()
	move_and_slide()

func get_input():
	var direction = Input.get_axis("Player2Up", "Player2Down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	position = position.clamp(clamp_vector, screen_size - clamp_vector)
