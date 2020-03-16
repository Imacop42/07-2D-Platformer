extends AudioStreamPlayer


func _ready():
	pass


func _on_Coin_body_entered(body):
	self.play()


