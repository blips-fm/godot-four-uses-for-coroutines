extends Node2D

var cancel := false

func toggle_visibility() -> void:
	while(!cancel):
		$Icon.visible = !$Icon.visible
		yield(get_tree().create_timer(1), "timeout")

func _ready():
	toggle_visibility()

func _process(_delta):
	if (Input.is_action_just_pressed("ui_cancel")):
		cancel = true
