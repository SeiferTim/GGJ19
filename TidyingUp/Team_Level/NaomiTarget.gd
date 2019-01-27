extends Area2D

var trashed = false

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over:
		pass
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
		get_tree().set_input_as_handled()
		self.on_click()

func on_click():
	if !trashed:
		self.position = Vector2(807, 400)
		self.rotate(deg2rad(180))
		self.get_parent().move_child(self, 0)
		trashed = true