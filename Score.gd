extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var score = 0

func reset_score():
	score = 0

func add_score():
	score += 1
	
func get_score():
	return score
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
