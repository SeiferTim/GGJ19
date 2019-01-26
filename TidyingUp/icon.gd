extends KinematicBody2D

var moving = false
var move_speed = 1000

#onready var next_scene = preload("Scene1")

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	if moving && self.position.x < self.get_viewport_rect().size.x:
#		set_position(Vector2(self.position.x + (move_speed * delta), self.position.y))
#
func _physics_process(delta):
	var right = (self.get_viewport_rect().size.x/2) - (self.get_node("icon2").texture.get_width()/2)
	if moving:
		if self.position.x < right:
			move_and_collide(Vector2(move_speed * delta, 0))
		if self.position.x > right:
			self.position.x = right
			

#	get_tree().change_scene_to(next_scene)
#
func _input(event):
	if Input.is_action_just_pressed("left_click") && !moving:
		moving = true