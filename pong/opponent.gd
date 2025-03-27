extends CharacterBody2D

@export var speed = 200
var ball

func _ready() -> void:
	velocity = Vector2.ZERO

func _physics_process(delta: float) -> void:
	if abs(ball.position.x - position.x) < 80:
		if ball.position.y < position.y:
			velocity.y = -1
		elif ball.position.y > position.y:
			velocity.y = 1
	
	velocity *= speed
	
	move_and_slide()
