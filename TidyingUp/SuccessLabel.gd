extends Label

var gaming_over = false
var countdown = 1

func _process(delta):
	if self.get_parent().level_win && !gaming_over:
		gaming_over = true
	if gaming_over:
		if countdown > 0:
			countdown -= delta
		else: 
			if !self.visible:
				self.visible = true	
	pass
