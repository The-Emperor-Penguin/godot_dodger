extends KinematicBody2D

const MAXSPEED = 75
const accel = 5

var motion = Vector2(0, 0)


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	motion.x = clamp(motion.x,-MAXSPEED,MAXSPEED)
	
	
	position.x = clamp(position.x, 32, get_viewport_rect().size.x - 32)
	
	if Input.is_action_pressed("ui_right"):
		motion.x += MAXSPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x -= MAXSPEED
	else:
		motion.x = lerp(motion.x, 0, .2)
	motion = move_and_slide(motion)
	
"""	for i in get_slide_count():
		var collision = get_slide_collision(i)
		print_debug(collision.collider.name)
		if "Bomb" in collision.collider.name:
			get_tree().quit()"""
