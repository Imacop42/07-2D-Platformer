extends Area2D


func _ready():
	pass
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			global.score += 50
			get_tree().change_scene("res://Scenes/Victory.tscn")
	
	
