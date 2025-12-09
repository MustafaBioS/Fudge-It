extends CharacterBody2D
@onready var score = $"../Score"
@onready var pause = $"../Pause"

const SPEED = 500.0
const JUMP_VELOCITY = -400.0
	
func player():
	pass

func _ready() -> void:
	pause.visible = false

func _process(delta: float) -> void:
	print(State.score)
	score.text = str(State.score)
	if State.paused == false:
		if Input.is_action_just_pressed("pause"):
			State.paused = true
			pause.visible = true
	elif State.paused == true:
		if Input.is_action_just_pressed("pause"):
			State.paused = false
			pause.visible = false
	
func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("a", "d")
	if direction and State.paused == false:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if State.paused == false:
		move_and_slide()
