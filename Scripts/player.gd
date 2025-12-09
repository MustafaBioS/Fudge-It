extends CharacterBody2D
@onready var score = $"../Score"

const SPEED = 500.0
const JUMP_VELOCITY = -400.0
	
func player():
	pass

func _process(delta: float) -> void:
	print(State.score)
	score.text = str(State.score)
	
func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("a", "d")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
