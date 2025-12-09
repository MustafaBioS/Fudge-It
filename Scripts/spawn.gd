extends Node2D
var spawn_pos = null
var chocolate = preload("uid://dr065flhafty0")

func _ready() -> void:
		randomize()
		spawn_pos = $".".get_children()
	
func spawn():
	var index = randi() % spawn_pos.size()
	var Chocolate = chocolate.instantiate()
	Chocolate.global_position = spawn_pos[index].global_position
	add_child(Chocolate)

func _on_timer_timeout() -> void:
	spawn()
