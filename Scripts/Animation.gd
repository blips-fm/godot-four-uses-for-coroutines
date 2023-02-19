extends Node2D

func fade() -> void:
	var range_value :float = -100
	for x in range(range_value, 1):
		var alpha_value := x/range_value
		var color := Color(1, 1, 1, alpha_value)
		$Icon.self_modulate = color
		yield(get_tree(), "idle_frame")

func _ready():
	fade()
