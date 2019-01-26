extends Sprite

var hopTimer = 1

var word = 0
var words = ["Bork2", "Yip2", "Ruff2"]

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if self.visible:
		if hopTimer > 0:
			hopTimer-=delta
		else:
			if (hopTimer > -1000):
				hopTimer = -1000
				get_node(words[word]).visible = false
				word+=1
				if word > 2:
					word = 0
				get_node(words[word]).visible = true
			else:
				hopTimer = 1
				
	pass
