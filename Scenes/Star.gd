extends Area2D


func _ready():
	pass
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			var hits = global.enemyhit *-10
			global.score += 50 + hits 
			global.score *= global.lives
			get_tree().change_scene("res://Scenes/Victory.tscn")
	
	
