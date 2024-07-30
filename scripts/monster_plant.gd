extends Area2D
var stuned = false
@onready var anim = $AnimatedSprite2D
@onready var plant = $"."
var speed
var jump

func _physics_process(_delta):
	stun()

func _on_body_entered(body):
	if !stuned:
		speed = Globals.player_speed
		jump = Globals.player_jump_velocity
	stuned = true
	Globals.stuned = true
	$AudioStreamPlayer2D.play()
	anim.play("attack")
	$Timer.start()
	if body.global_position.x > plant.global_position.x:
		anim.flip_h = true
	else:
		anim.flip_h = false

func _on_body_exited(_body):
	stuned = false
	Globals.stuned = false
	
	Globals.player_speed = speed
	Globals.player_jump_velocity = jump
	if !Globals.power_up:
		if !Globals.poisoned:
			Globals.player_speed = Globals.normal_speed
			Globals.player_jump_velocity = Globals.normal_jump
		else:
			Globals.player_speed = Globals.normal_speed / 4
			Globals.player_jump_velocity = Globals.normal_jump + 200
	elif !Globals.poisoned:
		if !Globals.power_up:
			Globals.player_speed = Globals.normal_speed
			Globals.player_jump_velocity = Globals.normal_jump
		else:
			Globals.player_speed = Globals.normal_speed + 300
			Globals.player_jump_velocity = Globals.normal_jump + (-350)
	anim.play("default")

func stun():
	if stuned and anim.frame == 4:
		Globals.player_speed = Globals.player_speed * 0
		Globals.player_jump_velocity *= 0
		await get_tree().create_timer(2).timeout
		stuned = false
		Globals.stuned = false
		if !stuned:
			Globals.player_speed = speed
			Globals.player_jump_velocity = jump
			if !Globals.power_up:
				if !Globals.poisoned:
					Globals.player_speed = Globals.normal_speed
					Globals.player_jump_velocity = Globals.normal_jump
				else:
					Globals.player_speed = Globals.normal_speed / 4
					Globals.player_jump_velocity = Globals.normal_jump + 200
			elif !Globals.poisoned:
				if !Globals.power_up:
					Globals.player_speed = Globals.normal_speed
					Globals.player_jump_velocity = Globals.normal_jump
				else:
					Globals.player_speed = Globals.normal_speed + 300
					Globals.player_jump_velocity = Globals.normal_jump + (-350)
			#anim.play("default")


func _on_timer_timeout():
	anim.play("default")
