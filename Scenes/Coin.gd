extends Area2D


func _ready():
	pass
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			global.score += 25
			queue_free()
