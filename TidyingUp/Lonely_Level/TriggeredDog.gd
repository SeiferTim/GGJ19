extends Sprite

var delay = 1

func _process(delta):
	if !visible:
		if get_parent().get_node("DogTreat").visible:
			delay-=delta
			if delay <=0:
				visible = true
				get_parent().get_node("Dog_Sound").position.x = position.x
				get_parent().get_node("Dog_Sound").position.y = position.y
				get_parent().get_node("Dog_Sound").play()
