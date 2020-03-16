extends Node2D

var s = global.score
var l = global.lives
func _ready():
	pass

	
	


func _on_Timer_timeout():
	var s = global.score
	$Score.text = "Score: " + str(s)
	if global.score < 0:
		global.score = 0
	var l = global.lives
	$Lives.text = "Lives: " + str(l)
	#print(global.level)


func _on_SaveButton_pressed():
	savestuff.save_settings()


func _on_LoadButton_pressed():
	savestuff.load_settings()
