extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

var jump: bool = false
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var player = $"."
var player_alive = true
@onready var cam = get_viewport().get_camera_2d()
var timer = 0
var start = false
var threshold_time = 0.2
var is_on_screen = true
var time_to_die = false
var push_back_power: float = -5
var push_back_power2 = 1
var random_velocity = ["1", "2", "3", "4", "5"]
var audio_Fart_on = false

func _ready():
	Globals.player = $"."
	$Farts.visible = false

func _physics_process(delta):
	Globals.player_pos = global_position
	camera_move(delta)
	change_location()
	change_anim(delta)
	defeat()
	movement(delta)
	jumper(delta)
	score()
	farts_anim()
	overload_farts_points()
	player_is_on_floor()

func player_is_on_floor():
	if is_on_floor():
		Globals.on_floor = true
	else:
		Globals.on_floor = false

func overload_farts_points():
	if Globals.max_progress_farts:
		$".".rotation += 0.04
		$AnimationPlayer.play("Farts")
		$FartsTimer.start()
		random_pick_velocity()
		Globals.poop -= 1
		$"../Max_progress_text".visible = true
		if Globals.poop == 0 and Globals.max_progress_farts:
			$".".rotation = 0
			Globals.max_progress_farts = false
			await get_tree().create_timer(2).timeout
			$"../Max_progress_text".visible = false

func random_pick_velocity():
	var random_pick_vel = random_velocity.pick_random()
	if random_pick_vel == "1":
		velocity.x = 500
		velocity.y = 200
		velocity.x = -200
		velocity.y = -100
	elif random_pick_vel == "2":
		velocity.y = 400
		velocity.x = -350
		velocity.y = -200
		velocity.x = 200
		$Farts.position.x = 43
		$Farts.position.y = 51
		$Farts.rotation = 213
	elif random_pick_vel == "3":
		velocity.x = -400
		velocity.y = -300
		velocity.x = 350
		velocity.y = 100
		$Farts.position.x = 43
		$Farts.position.y = 51
		$Farts.rotation = 213
	elif random_pick_vel == "4":
		velocity.y = -300
		velocity.x = 300
		velocity.y = 350
		velocity.x = -300
	elif random_pick_vel == "5":
		velocity.x = 300
		velocity.y = -400
		velocity.y = 200
		velocity.x = -100
		$Farts.position.x = 43
		$Farts.position.y = 51
		$Farts.rotation = 213
	$FartAudio.play()
	if Globals.poop > 0:
		$Farts.visible = true

func farts_anim():
	if Globals.get_food:
		$FartAudio.play()
	if Globals.farts_on:
		$Farts.visible = true
		$AnimationPlayer.play("Farts")
		$FartsTimer.start()
		if audio_Fart_on:
			audio_Fart_on = false
	else:
		audio_Fart_on = true
		$Farts.visible = false
		#$GasAudio.stop()
	if is_on_floor() or Globals.poop == 0:
		$FartsTimer.stop()
		Globals.farts_on = false

func score():
	if player.position.y - 50:
		var i : int = abs(player.position.y - 969)/10
		if Globals.score < i:
			Globals.score = i

func jumper(delta):
	if Globals.player_alive:
		if Input.is_action_just_pressed("jump"):
			if !Globals.stuned:
				$JumpAudio.play()
			$Timer.start()
			start = true
			if Globals.farts_on:
				$FartAudio.play()
				#$GasAudio.play()
		if Input.is_action_pressed("jump") and start:
			timer += delta
		if timer >= threshold_time and start:
			#print("hold")
			if Globals.poop < 1:
				start = false
				timer = 0
				if is_on_floor():
					$Farts.visible = false
				#print("poop = 0")
			elif Globals.poop >= 1:
				## rakieta
				Globals.farts_on = true
				$Farts.visible = true
				jump = true
				$AnimationPlayer.play("Farts")
				$FartsTimer.start()
				camera_move(delta)
				if cam.position.y > player.position.y - 400:
					cam.position.y = player.position.y - 150
				velocity.y = -600
				Globals.poop -= 1
				#print("fly!")
		if Input.is_action_just_released("jump"):
			if is_on_floor():
				velocity.y = Globals.player_jump_velocity
				#Globals.poop += 1
			if timer < threshold_time and start:
				#print("press")
				start = false
				timer = 0
			else:
				#print("hold and released")
				start = false
				timer = 0

func stats_reset():
	await get_tree().create_timer(0.01).timeout
	get_tree().reload_current_scene()
	Globals.poop = 0
	Globals.score = 0
	Globals.player_alive = true
	Globals.normal_jump = -450
	Globals.player_speed = Globals.normal_speed
	Globals.player_jump_velocity = -450
	Globals.power_up = false
	Globals.available = false
	Globals.heavyShoes_on = false
	Globals.heavyShoes = false
	Globals.poisoned = false

func defeat():
	var player_pos_y = $".".position.y
	if !is_on_screen:
		if player_pos_y > $"../Camera2D".get_screen_center_position().y:
			player.visible = false 
			Globals.player_alive = false
			$"../Label".visible = true
			if Input.is_action_just_pressed("jump") and $"../PauseMenu".visible == false:
				stats_reset()
		$"../Max_progress_text".visible = false

func change_anim(delta):
	if is_on_floor() and velocity.x == 0 and velocity.y == 0:
		if !Globals.power_up:
			if !Globals.heavyShoes_on:
				anim.play("idle")
			else:
				anim.play("idle_heavy_shoes")
		else:
			if !Globals.heavyShoes_on:
				anim.play("idle_power_up")
			else:
				anim.play("idle_pow_up_heavy_shoes")
		$Farts.visible = false
	elif not is_on_floor():
		velocity.y += gravity * delta
		if velocity.x == 0:
			if !Globals.power_up:
				if !Globals.heavyShoes_on:
					anim.play("idle_jump")
				else:
					anim.play("idle_jump_heavy_shoes")
			else:
				if !Globals.heavyShoes_on:
					anim.play("idle_jump_power_up")
				else:
					anim.play("idle_jump_pow_up_heavy_shoes")
			$Farts.position.x = 0
			$Farts.position.y = 62
			$Farts.rotation = 0
			if velocity.y > 0:
				$Farts.visible = false
		else:
			if !Globals.power_up:
				if !Globals.heavyShoes_on:
					anim.play("jump")
				else:
					anim.play("jump_heavy_shoes")
			else:
				if !Globals.heavyShoes_on:
					anim.play("jump_power_up")
				else:
					anim.play("jump_pow_up_heavy_shoes")
	else:
		if !Globals.power_up:
			if !Globals.heavyShoes_on:
				anim.play("move")
			else:
				anim.play("move_heavy_shoes")
		else:
			if !Globals.heavyShoes_on:
				anim.play("move_power_up")
			else:
				anim.play("move_pow_up_heavy_shoes")
		if !jump:
			$Farts.visible = false
	move_and_slide()

func change_location():
	if self.position.x < 253:
		position.x += get_viewport().content_scale_size.x
	elif self.position.x > 900:
		position.x -= get_viewport().content_scale_size.x

func camera_move(delta):
	if Globals.player_alive:
		if player.position.y <= 0:
			cam.position.y -= 75 * delta
			if player.position.y <= cam.position.y:
				cam.position.y = player.position.y
		elif player.position.y > 0 and time_to_die:
			cam.position.y -= 75 * delta
		if Globals.farts_on:
			if cam.position.y + 100 > player.position.y:
				cam.position.y = player.position.y - 150

func movement(_delta):
	if Globals.player_alive:
		if Globals.android:
			movement_on_android()
		else:
			movement_on_cp()

func movement_on_android():
	velocity.x = Input.get_accelerometer().normalized().x * Globals.player_speed
	if velocity.x > 40:
		anim.flip_h = false
		$CollisionShape2D.position.x = 10
		$Farts.position.x = -27
		$Farts.position.y = 54
		$Farts.rotation = 214
	elif velocity.x < -40:
		anim.flip_h = true
		$CollisionShape2D.position.x = 0
		$Farts.position.x = 43
		$Farts.position.y = 51
		$Farts.rotation = 213
	else:
		anim.flip_h = true
		$CollisionShape2D.position.x = 0
		velocity.x = 0

	if Globals.push_back:
		Globals.push_back_counter -= 1
		velocity.x *= push_back_power
		if Globals.push_back_counter > 8:
			Globals.push_back_counter = 8
		elif Globals.push_back_counter < 1:
			Globals.push_back = false
	
	if Globals.push_back2:
		Globals.push_back_counter2 -= 1
		velocity.y = abs(velocity.y) * push_back_power2
		velocity.x = abs(velocity.x) * -2
		if Globals.push_back_counter2 > 2:
			Globals.push_back_counter2 = 2
		elif Globals.push_back_counter2 < 1:
			Globals.push_back2 = false
	move_and_slide()

func movement_on_cp():
	print(velocity.y)
	if Input.get_action_strength("right"):
		velocity.x = Globals.player_speed
		anim.flip_h = false
		$CollisionShape2D.position.x = 10
		$Farts.position.x = -27
		$Farts.position.y = 54
		$Farts.rotation = 214
	elif Input.get_action_strength("left"):
		velocity.x = -Globals.player_speed
		anim.flip_h = true
		$CollisionShape2D.position.x = 0
		$Farts.position.x = 43
		$Farts.position.y = 51
		$Farts.rotation = 213
	else:
		anim.flip_h = true
		$CollisionShape2D.position.x = 0
		velocity.x = 0
	if Globals.push_back:
		Globals.push_back_counter -= 1
		velocity.x *= push_back_power
		if Globals.push_back_counter > 8:
			Globals.push_back_counter = 8
		elif Globals.push_back_counter < 1:
			Globals.push_back = false
	
	if Globals.push_back2:
		Globals.push_back_counter2 -= 1
		velocity.y = abs(velocity.y) * push_back_power2
		velocity.x = abs(velocity.x) * -2
		if Globals.push_back_counter2 > 2:
			Globals.push_back_counter2 = 2
		elif Globals.push_back_counter2 < 1:
			Globals.push_back2 = false
	move_and_slide()

func _on_farts_timer_timeout():
	jump = false
	$FartsTimer.stop()
	$Farts.visible = false
	Globals.farts_on = false

func _on_visible_on_screen_notifier_2d_screen_exited():
	is_on_screen = false

func _on_visible_on_screen_notifier_2d_screen_entered():
	is_on_screen = true

func slowdown():
	if !Globals.power_up:
		if !Globals.poisoned:
			Globals.player_speed = Globals.normal_speed / 2
			Globals.player_jump_velocity = Globals.normal_jump + 200
		else:
			Globals.player_speed = Globals.normal_speed / 4
			Globals.player_jump_velocity = Globals.normal_jump + 300
	elif !Globals.poisoned:
		if !Globals.power_up:
			Globals.player_speed = Globals.normal_speed / 2
			Globals.player_jump_velocity = Globals.normal_jump + 200
		else:
			Globals.player_speed = Globals.player_speed / 5
			Globals.player_jump_velocity = Globals.normal_jump + (-100)
			print(Globals.player_jump_velocity)

func cancel_slowdown():
	if !Globals.power_up:
		if !Globals.poisoned:
			Globals.player_speed = Globals.normal_speed
			Globals.player_jump_velocity = Globals.normal_jump
		else:
			Globals.player_speed = Globals.normal_speed / 2
			Globals.player_jump_velocity = Globals.normal_jump + 200
	else:
		if !Globals.poisoned:
			Globals.player_speed = Globals.normal_speed + 300
			Globals.player_jump_velocity = Globals.normal_jump + (-350)

func _on_restart_pressed():
	get_tree().paused = false
	stats_reset()

func _on_timer_timeout():
	time_to_die = true
	$Timer.stop()
