extends Node2D #Extending a 2D or 3D node is not relevant

func wait_and_print() -> void:
	yield(get_tree().create_timer(3), "timeout")
	print("Waited for three seconds!")

func _ready():
	wait_and_print()
