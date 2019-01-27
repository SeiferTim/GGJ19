extends Area2D

func _ready():
	pass

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over  || self.get_parent().level_win:
		pass
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and !get_tree().is_input_handled() \
	and self.visible:
		get_tree().set_input_as_handled()
		self.on_click()

func on_click():
	self.get_node("sink opened").visible = true
	self.get_node("sink closed").visible = false