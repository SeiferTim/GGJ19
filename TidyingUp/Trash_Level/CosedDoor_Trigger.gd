extends Area2D

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over || self.get_parent().level_win:
		return
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
        self.on_click()

func on_click():
	self.visible = false
	self.get_parent().get_node("DoorOpen").visible = true
	self.get_parent().get_node("the-full-kondo").visible = true
	self.get_parent().game_over = true
	