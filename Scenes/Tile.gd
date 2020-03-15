extends RigidBody2D


func _ready():
	contact_monitor = true
	set_max_contacts_reported(4)

	
func _physics_process(delta):
	var colliding = get_colliding_bodies()
	for c in colliding:
		print("bro")
