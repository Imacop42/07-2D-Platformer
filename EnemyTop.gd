extends RigidBody2D

onready var Enemy = get_parent()
func _ready():
	contact_monitor = true
	set_max_contacts_reported(4)

	
func _physics_process(delta):
	var colliding = get_colliding_bodies()
	for body in colliding:
		if body.name == "Player":
			Enemy.die()
		
