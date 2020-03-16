extends Node2D






func _ready():
	pass

	

func die():
	queue_free()
	print(global.enemyhit)
