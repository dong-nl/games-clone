extends CharacterBody2D

@export var speed = 200

func _physics_process(delta: float) -> void:	
	var collition_obj = move_and_collide(velocity * speed * delta)
	if collition_obj:
		velocity = velocity.bounce(collition_obj.get_normal())

func stop():
	speed = 0
	
func reset():
	speed = 200
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]	
