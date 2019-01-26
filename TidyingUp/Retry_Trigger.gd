extends Area2D

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initial
	pass


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
        self.on_click()

func on_click():
	get_tree().reload_current_scene()