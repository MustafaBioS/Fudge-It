extends ParallaxLayer

var speed = Vector2(50, 0)

func _process(delta: float) -> void:
	if State.paused == false:
		motion_offset += speed * delta
