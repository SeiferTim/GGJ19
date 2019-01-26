extends Area2D


func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over:
		pass
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
        self.on_click()

func on_click():
	self.visible = false
	self.get_parent().get_node("DoorClosed_Trigger").visible = false
	self.get_parent().get_node("DoorOpen").visible = true
	self.get_parent().get_node("DeleriousKid").visible = true
	self.get_parent().level_win = true