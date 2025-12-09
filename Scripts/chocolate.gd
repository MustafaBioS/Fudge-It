extends RigidBody2D

var speed = 5

func _physics_process(delta: float) -> void:
	if State.paused:
		freeze = true
		return
	else:
		freeze = false
		
	move_and_collide(Vector2(0, speed + delta))

func _on_catch_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		State.score += 1
		queue_free()
