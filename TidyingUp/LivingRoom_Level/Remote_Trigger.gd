extends Area2D

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over || self.get_parent().level_win:
		pass
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
        self.on_click()

func on_click():
	get_parent().get_node("tv off").visible = false
	get_parent().get_node("tv stand").visible = true
	get_parent().game_over = true
