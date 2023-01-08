extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Score.reset_score()

onready var score_label = get_node("Score_Label")
var enemys = []
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if len(enemys) < 5 + (int(Score.get_score()) / 20):
		var bomb = preload("Bomb.tscn")
		var new_bomb = bomb.instance()
		add_child(new_bomb)
		var bomb_node = get_node(new_bomb.get_path())
		
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		bomb_node.maxspeed = bomb_node.maxspeed * (Score.get_score() / 10) + 500 + rng.randi_range(0, 100)
		bomb_node.gravity = bomb_node.gravity * (Score.get_score() / 100) + 5
		enemys.append(new_bomb)
	for enemy in enemys:
		if enemy.position.y > get_viewport().size.y - 32:
			enemys.erase(enemy)
			enemy.queue_free()
			Score.add_score()
	score_label.set_text("Score: " + str(Score.get_score()))
