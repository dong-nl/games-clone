extends CharacterBody2D

@export var speed = 200
	
func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed('up'):
		velocity.y -= 1
	if Input.is_action_pressed('down'):
		velocity.y += 1
		
	velocity *= speed
	move_and_slide()
