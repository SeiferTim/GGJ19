extends Sprite

var game_over = false
var level_win = false

var next_scene = "res://EndGame/EndGame.tscn"

func _process(delta):
	if !game_over && !level_win:
		if (get_node("TimTarget").trashed
		 && get_node("NaomiTarget").trashed
		 && get_node("MichaelTarget").trashed
		 && get_node("LarayTarget").trashed
		 && get_node("WesTarget").trashed
		 && get_node("JevionTarget").trashed
		 ):
			level_win = true