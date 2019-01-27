extends Area2D

var original_position
var blocking_object

func _init():
	original_position = self.position

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over || self.get_parent().level_win:
		return
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
		self.on_click()

func on_click():
	if blocking_object != null && !is_home():
		self.position = original_position
		
func is_home():
	return self.position == original_position

func is_blocking(object):
	return blocking_object == object

func set_blocking(object):
	blocking_object = object
