extends Area2D

onready var player = get_node("/root/Level1/Player")
func _ready():
	pass
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene("res://Scenes/Level2.tscn")
	
	
