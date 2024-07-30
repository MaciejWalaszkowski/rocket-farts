extends CharacterBody2D

var speed = 200
var player_in_notice_area = false
var player_in_attack_area = false
var player = null
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var golem = $"."
@onready var anim = $AnimatedSprite2D
@onready var body_coll = $CollisionShape2D
@onready var notice_coll = $NoticeArea/CollisionShape2D
@onready var attack_coll = $AttackArea/CollisionShape2D

func _ready():
	anim.play("idle")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
		move_and_slide()
	if player_in_notice_area and !player_in_attack_area:
		if Globals.player.global_position.x > golem.global_position.x:
			golem.global_position.x += (golem.global_position.x + Globals.player.global_position.x) / 500
			anim.flip_h = false
			body_coll.position.x = -20
			body_coll.position.y = 69
			notice_coll.position.x = -24
			notice_coll.position.y = 0
			attack_coll.position.x = -23
			attack_coll.position.y = 0
		else:
			golem.global_position.x += (Globals.player.global_position.x - golem.global_position.x) / 100
			anim.flip_h = true
			body_coll.position.x = 18
			body_coll.position.y = 69
			notice_coll.position.x = 10
			notice_coll.position.y = 0
			attack_coll.position.x = 10
			attack_coll.position.y = 0
		anim.play("move")
		move_and_slide()
	elif player_in_attack_area and is_on_floor():
		anim.play("attack")

func _on_notice_area_body_entered(body):
	player_in_notice_area = true

func _on_notice_area_body_exited(_body):
	anim.play("idle")
	body_coll.position.x = 0
	body_coll.position.y = 69
	notice_coll.position.x = 0
	notice_coll.position.y = 0
	attack_coll.position.x = 0
	attack_coll.position.y = 0
	player_in_notice_area = false

#func _physics_process(_delta):
	#if player_in_notice_zone and !player_in_attack_zone:
		#look_at(Global.player_pos)
		#position += (Global.player_pos - position) / speed
		#anim.play("walk")
		#move_and_slide()
	#else:
		#anim.play("attack")
	#if !player_in_notice_zone and !player_in_attack_zone:
		#anim.stop()

func _on_attack_area_body_entered(body):
	player_in_attack_area = true
	player = body

func _on_attack_area_body_exited(body):
	player_in_attack_area = false

func _on_animated_sprite_2d_animation_finished():
	if player_in_attack_area:
		player.position.y += 100
		if anim.flip_h:
			player.position.x -= 50
		else:
			player.position.x += 50
