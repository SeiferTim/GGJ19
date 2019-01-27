extends Area2D

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over || self.get_parent().level_win:
		return
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and !get_tree().is_input_handled() \
	and self.visible:
		get_tree().set_input_as_handled()
		self.on_click()

func on_click():
	var mom = self.get_parent().get_node("MomTrigger")
	if mom.is_blocking(self) && mom.is_home():
		self.visible = false
		mom.is_blocking(null)
	if !mom.is_blocking(self):
		mom.set_blocking(self)