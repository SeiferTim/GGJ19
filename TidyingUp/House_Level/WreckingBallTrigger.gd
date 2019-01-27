extends RigidBody2D

var hasBeenTapped = false
var goingForward = false

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if hasBeenTapped:
		if goingForward:
			self.rotate(deg2rad(4.5))
		else:
			self.rotate(deg2rad(-1))
			if self.rotation_degrees < -40:
				goingForward = true