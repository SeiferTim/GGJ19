extends Sprite

var delay = 1

func _process(delta):
	if !visible:
		if get_parent().get_node("GirlOnPhone").visible:
			delay-=delta
			if delay <=0:
				visible = true
				get_parent().game_over = true
