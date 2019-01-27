extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var game_over = false
var level_win = false

var next_scene = "res://Dog_Level/Dog_Level.tscn"

func _process(delta):
	if !game_over && !level_win:
		if !(get_node("XboxControllerTrigger").visible || get_node("TVRemoteTrigger").visible || get_node("BBQPitTrigger").visible):
			level_win = true