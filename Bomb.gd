extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var gravity = 5
var maxspeed = 50


var motion = Vector2()



# Called when the node enters the scene tree for the first time.
func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	position = Vector2(rng.randi_range(64, get_viewport().size.x) - 64, rng.randi_range(-400, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	motion.y += gravity
	position.x = clamp(position.x, 32, get_viewport_rect().size.x - 32)
	motion.y = clamp(motion.y, -maxspeed, maxspeed)
	motion = move_and_slide(motion)
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if "Player" == collision.collider.name:
			get_tree().change_scene("res://game_over.tscn")
