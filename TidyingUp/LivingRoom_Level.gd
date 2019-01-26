extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var game_over = false
var level_win = false

var next_scene = "res://Dog_Level.tscn"

func _process(delta):
	if !game_over && !level_win:
		if !(get_node("Web_Trigger").visible || get_node("Junk_Trigger").visible || get_node("Junk_Trigger2").visible || get_node("Junk_Trigger3").visible || get_node("Junk_Trigger4").visible || get_node("Junk_Trigger5").visible):
				level_win = true