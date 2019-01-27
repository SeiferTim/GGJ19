extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var game_over = false
var level_win = false

var next_scene = "res://Funeral_Level/Funeral_Level.tscn"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here

	pass
func _process(delta):
	if !game_over && !level_win:
		if !(get_node("Stand_Trigger").visible || get_node("Balloon_Trigger").visible || get_node("Balloon_Trigger2").visible || get_node("Balloon_Trigger3").visible || get_node("Juke_Trigger").visible|| get_node("Bear_Trigger").visible):
				level_win = true
