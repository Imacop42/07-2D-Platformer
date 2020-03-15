extends Node2D


func _ready():
	pass


func _on_Player_score_changed():
	var s = get_node("/root/Level1/Player").score
	$Score.text = "Score: " + str(s)
	var s2 = get_node("/root/Level2/Player").score
	$Score.text = "Score: " + str(s2)
	
	
