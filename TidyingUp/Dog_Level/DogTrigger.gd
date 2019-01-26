extends Area2D

func _input_event(viewport, event, shape_idx):
	if self.get_parent().get_parent().game_over || self.get_parent().get_parent().level_win:
		pass
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.get_parent().visible:
        self.on_click()

func on_click():
	self.get_parent().visible = false
	get_parent().get_parent().get_node("DeleriousKid").visible = true
	get_parent().get_parent().level_win = true