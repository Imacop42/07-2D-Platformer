extends KinematicBody2D

var JUMP_FORCE = 200
const GRAVITY = 500.0
const WALK_SPEED = 100
var velocity = Vector2()
var is_grounded = false

onready var raycast = $ray




func _ready():
	pass
	
	
func _physics_process(delta):
	
	velocity.y += delta * GRAVITY
	
	move_and_slide(velocity, Vector2(0, -1))
	
	is_grounded = _check_is_grounded()
	
	if is_grounded:
		if Input.is_action_pressed("JUMP") && is_grounded:
			velocity.y = -JUMP_FORCE
		else:
			$Sprite.play("jump")
	
		
	
	
	if Input.is_action_pressed("LEFT"):
		velocity.x = -WALK_SPEED
		$Sprite.flip_h = false
		$Sprite.play("Run")
	elif Input.is_action_pressed("RIGHT"):
		velocity.x =  WALK_SPEED
		$Sprite.flip_h = true
		$Sprite.play("Run")
	else:
		velocity.x = 0
		$Sprite.play("idle")
	if is_grounded:
		if Input.is_action_pressed("JUMP") && is_grounded:
			velocity.y = -JUMP_FORCE
	else:
		$Sprite.play("jump")
	if position.y > 526:
		queue_free()
	

	move_and_slide(velocity, Vector2(0, -1))

func _check_is_grounded():
	if raycast.is_colliding():
			return true
	
	return false
	






