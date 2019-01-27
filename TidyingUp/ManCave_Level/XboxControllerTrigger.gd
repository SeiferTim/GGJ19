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
	var mom = self.get_parent().get_node("MomTrigger")
	if has_been_blocked:
		if mom.position != self.position:
			self.visible = false
			mom.is_blocking(null)
		else:
			send_mom_home()
	else:
		if !mom.is_blocking(self):
			mom.set_blocking(self)
			mom.position = self.position
			has_been_blocked = true


func send_mom_home():
	var mom = self.get_parent().get_node("MomTrigger")
	mom.position = mom.original_position