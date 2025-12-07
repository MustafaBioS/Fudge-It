extends ParallaxLayer

var speed = Vector2(50, 0)

func _process(delta: float) -> void:
	motion_offset += speed * delta
