extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var game_over = false
var level_win = false

var next_scene = "res://Bathroom_Level/Bathroom_Level.tscn"

func _process(delta):
	if !game_over && !level_win:
		if get_node("Clown").visible and get_node("mom").visible and get_node("TriggeredDog").visible:
				level_win = true