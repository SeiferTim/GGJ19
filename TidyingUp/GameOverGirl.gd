extends Sprite

var gaming_over = false
var countdown = 1

func _process(delta):
	if self.get_parent().game_over && !gaming_over:
		gaming_over = true
	if gaming_over:
		if countdown > 0:
			countdown -= delta
		else: 
			if !self.visible:
				self.visible = true	
	pass
