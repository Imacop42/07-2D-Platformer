extends KinematicBody2D

var JUMP_FORCE = 200
const GRAVITY = 500.0
const WALK_SPEED = 100
var velocity = Vector2()
var is_grounded = false
var parent = get_parent()
onready var raycast = $ray
signal jumping


func _ready():
	#var parent = get_parent()
	#if parent.name == "Level1":
	#	print("bro")
	#if parent.name == "Level2":
	#	print("bruh")
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
			emit_signal("jumping")
	else:
		$Sprite.play("jump")
		#death
	if position.y > 526:
		queue_free()
		var lives = global.lives
		global.lives -= 1
		global.score -= 25
		#reload
		var parent = get_parent()
		if parent.name == "Level1":
			get_tree().change_scene("res://Scenes/Level1.tscn")
		if parent.name == "Level2":
			get_tree().change_scene("res://Scenes/Level2.tscn")
			if global.score < 50:
				global.score = 50
		#game over
		if lives == 1:
			queue_free()
			get_tree().change_scene("res://Scenes/GameOver.tscn")
		
		
	

	move_and_slide(velocity, Vector2(0, -1))

func _check_is_grounded():
	if raycast.is_colliding():
			return true
			$land.autoplay()
	
	return false
	
	






