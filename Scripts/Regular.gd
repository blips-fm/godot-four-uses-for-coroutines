extends Node2D

var cancel :bool

func toggle_visibility() -> void:
	cancel = false
	while(true):
		if (cancel):
			return
		$Icon.visible = !$Icon.visible
		yield(get_tree().create_timer(1), "timeout")

func _ready():
	toggle_visibility()

func _process(_delta):
	if (Input.is_action_just_pressed("ui_cancel")):
		cancel = true
