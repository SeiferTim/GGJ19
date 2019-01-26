extends Area2D

var has_been_blocked = false

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over || self.get_parent().level_win:
		return
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
        self.on_click()

func on_click():
	if !has_been_blocked:
		has_been_blocked = true
		var mom = self.get_parent().get_node("MomTrigger")
		mom.position = self.position
		mom.set_blocking(self)
	else:
		if !self.get_parent().get_node("MomTrigger").is_blocking(self):
			self.visible = false