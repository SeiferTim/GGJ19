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
	if get_parent().get_node("PlungerTrigger").picked_up == true:
		self.get_parent().level_win = true
		self.get_parent().get_node("PlungerTrigger").hide()
	else:
		self.get_node("toilet opened marie").visible = true
		#self.get_node("toilet opened").visible = false
		get_parent().get_node("Plunge_Sound").position.x = position.x
		get_parent().get_node("Plunge_Sound").position.y = position.y
		get_parent().get_node("Plunge_Sound").play()
		self.get_parent().game_over = true