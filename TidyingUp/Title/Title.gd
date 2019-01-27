extends Sprite

var delay = 1
var step = 0

func _process(delta):
	if delay > -1000:
		delay -= delta
		if delay <= 0:
			delay = .5
			if step == 0:
				get_node("Label").visible = true
			if step == 1:
				get_node("Label2").visible = true
			if step == 2:
				get_node("the-full-kondo").visible = true
			if step == 3:
				get_node("Start_Trigger").visible  = true
				delay = -1000
			step+=1