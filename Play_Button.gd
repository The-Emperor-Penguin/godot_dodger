extends LinkButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var sprite = get_parent()
# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.position = get_viewport_rect().size / 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_hovered():
		sprite.frame = 1
	else:
		sprite.frame = 0
	if pressed or Input.is_action_pressed("ui_accept"):
		get_tree().change_scene("res://Game.tscn")
