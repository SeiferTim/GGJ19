extends Area2D


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
		get_tree().set_input_as_handled()
		self.on_click()

func on_click():
	get_tree().change_scene(get_parent().get_parent().next_scene)