extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if !get_parent().get_node("Balloon_Trigger").visible && !get_parent().get_node("Balloon_Trigger2").visible && !get_parent().get_node("Balloon_Trigger3").visible:
		visible = false