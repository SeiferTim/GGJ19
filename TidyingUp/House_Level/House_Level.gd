extends Sprite

var game_over = false
var level_win = false

var next_scene = "res://Team_Level/Team_Level.tscn"

func _process(delta):
	if !game_over && !level_win:
		if !(get_node("HouseLeftSideTrigger").visible || get_node("HouseRightSideTrigger").visible):
				level_win = true