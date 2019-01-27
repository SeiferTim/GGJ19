extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _input_event(viewport, event, shape_idx):
	if self.get_parent().game_over || self.get_parent().level_win:
		pass
	if event is InputEventMouseButton \
    and event.button_index == BUTTON_LEFT \
    and event.is_pressed() \
	and !get_tree().is_input_handled() \
	and self.visible:
		get_tree().set_input_as_handled()
		self.on_click()

func on_click():
	var wreckingBall = get_parent().get_node("WreckingBallTrigger")
	if !wreckingBall.hasBeenTapped:
		wreckingBall.hasBeenTapped = true