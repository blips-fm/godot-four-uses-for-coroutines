extends Node2D

var faded :bool = false

func fade(sprite :Sprite) -> void:
	var range_value :float = -100
	for x in range(range_value, 1):
		var alpha_value := x/range_value
		var color := Color(1, 1, 1, alpha_value)
		sprite.self_modulate = color
		yield(get_tree(), "idle_frame")
	if (!faded):
		fade($Icon2)
		faded = true
	
func _ready():
	fade($Icon1)

