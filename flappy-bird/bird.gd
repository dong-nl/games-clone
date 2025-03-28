extends CharacterBody2D

@export var gravity = 900
@export var jump_force = -300

var max_speed = 400

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("jump"):
		jump()
		
func jump():
	pass
