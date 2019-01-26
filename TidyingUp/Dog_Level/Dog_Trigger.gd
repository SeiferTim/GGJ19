extends KinematicBody2D


var hopTimer = 1
var flipTimer = 3
var flipped = 1
var word = 0
var words = ["Bork", "Yip", "Ruff"]

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
				move_and_collide(Vector2(20 * flipped,-20))
				get_node(words[word]).visible = false
				word+=1
				if word > 2:
					word = 0
				get_node(words[word]).position.x = get_node("TriggeredDog").position.x + (120 * flipped)
				get_node(words[word]).position.y = get_node("TriggeredDog").position.y - 60
				get_node(words[word]).visible = true
			else:
				hopTimer = 1
				move_and_collide(Vector2(20 * flipped,20))
		if flipTimer > 0:
			flipTimer-=delta
		else:
			flipTimer = 3
			flipped *= -1
			get_node("TriggeredDog").scale.x *= -1
	
	pass
	

