extends Sprite

var game_over = false
var level_win = false

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if !game_over && !level_win:
		if !(get_node("HouseLeftSideTrigger").visible || get_node("HouseRightSideTrigger").visible):
				level_win = true