extends Area2D

var picked_up = false

func _ready():
	pass
	

func _process(delta):
	if picked_up:
		self.position = get_viewport().get_mouse_position()

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over || self.get_parent().level_win:
		return
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and self.visible:
		self.on_click()

func on_click():
	picked_up = true