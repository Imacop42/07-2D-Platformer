extends Node2D


var s = global.score
func _ready():
	$Score.text = "Score: " + str(s)
