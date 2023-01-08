extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rect_global_position = Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2 - 200)
	text = "Score: " + str(Score.get_score())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
