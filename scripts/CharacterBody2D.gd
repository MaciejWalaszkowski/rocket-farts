extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var anim = $AnimatedSprite2D
var body_entered = false
var start_scene = true
var kupa = false
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if !body_entered:
		velocity.x += 40
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	change_anim(delta)
	if $chmurka.frame == 5:
		var parent = $chmurka.get_children()
	
		for child in parent:
			child.visible = true
		await get_tree().create_timer(2).timeout
		if $"../Camera2D".position.y > -10000 and !Globals.stop_cam:
			$"../Camera2D".position.y -= 100
		elif $"../Camera2D".position.y <= -10000:
			Globals.stop_cam = true
	if Globals.stop_cloud:
		$chmurka.visible = false
		$AnimationPlayer2.stop()
		Globals.player_alive = true
		start_scene = false
	if $"../Camera2D".position.y < -9990 and Globals.stop_cam and !Globals.stop_cloud:
		$"../FinałowaPlatforma0".global_position.y = -10600
		$"../Camera2D".position.y = $"../FinałowaPlatforma0".global_position.y + (-300)
		Globals.stop_cam = false
		#$"../Camera2D".zoom.x = 1
		#$"../Camera2D".zoom.y = 1
		await get_tree().create_timer(4).timeout
		Globals.stop_cloud = true
		get_tree().change_scene_to_file("res://scenes/start_menu.tscn")

func change_anim(delta):
	if !body_entered:
		if is_on_floor() and velocity.x == 0 and velocity.y == 0:
			anim.play("idle")
		elif not is_on_floor():
			velocity.y += gravity * delta
			if velocity.x == 0:
				anim.play("idle_jump")
			else:
				anim.play("jump")
		else:
				anim.play("move")
		move_and_slide()
	else:
		if anim.frame == 6 and kupa:
			await get_tree().create_timer(1).timeout
			$chmurka.visible = true
			$AnimationPlayer2.play("chmurka")
			kupa = false

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2d_body_entered(body):
	body_entered = true
	anim.play("lornetka")
	kupa = true
