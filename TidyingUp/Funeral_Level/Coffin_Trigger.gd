extends Area2D

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over || self.get_parent().level_win:
		return
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and !get_tree().is_input_handled() \
	and self.visible \
	and !get_parent().get_node("Stand_Trigger").visible:
		get_tree().set_input_as_handled()
		self.on_click()

func on_click():
	self.visible = false
	get_parent().get_node("OpenCoffin").visible = true
	get_parent().get_node("Coffin_Sound").position.x = position.x
	get_parent().get_node("Coffin_Sound").position.y = position.y
	get_parent().get_node("Coffin_Sound").play()
	get_parent().game_over = true