extends Sprite

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

func _input(event):
	if Input.is_action_just_pressed("left_click") && self.visible:
		self.visible = false
		self.get_parent().get_node("TrashcanLid2").visible = true
		self.get_parent().get_node('TrashbagOpen').visible = true
		