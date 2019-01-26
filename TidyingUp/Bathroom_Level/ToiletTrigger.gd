extends Area2D

func _ready():
	pass

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over:
		pass
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
        self.on_click()

func on_click():
	if get_parent().get_node("PlungerTrigger").picked_up == true:
		self.get_parent().level_win = true
	else:
		self.get_node("toilet opened marie").visible = true
		self.get_node("toilet opened").visible = false
		self.get_parent().game_over = true