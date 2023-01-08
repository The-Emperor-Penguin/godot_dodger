extends "res://Bomb.gd"




# Called when the node enters the scene tree for the first time.
func _ready():
	maxspeed = 500
	gravity = 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position.x = clamp(position.x, 32, get_viewport_rect().size.x - 32)
	if position.y > get_viewport().size.y - 32:
		motion.y = -1000
