extends StaticBody2D

@onready var anim = $AnimatedSprite2D
var hided = true
var attack = false
var glued = false
var player = null
var audio = false

func _ready():
	pass # Replace with function body.

func _process(_delta):
	if Globals.player_pos.y < anim.global_position.y:
		if global_position.x + 45 > Globals.player_pos.x and global_position.x - 70 < Globals.player_pos.x:
			anim.global_position.x += (Globals.player_pos.x - anim.global_position.x) / 20
			
	if attack == true:
		anim.play("attack")
		if anim.frame == 5 and glued:
			
			if !audio:
				$AudioStreamPlayer2D.play()
				audio = true
			$AnimatedSprite2D/Area_glued_to_tongue/CollisionShape2D.visible = true
			if player != null:
				player.position.y += (anim.global_position.y - player.position.y) / 100
		elif anim.frame == 6:
			audio = false
			$AnimatedSprite2D/Area_glued_to_tongue/CollisionShape2D.visible = false
			
func _on_area_notice_body_entered(_body):
	if hided == true:
		anim.visible = true
		anim.play("default")
		hided = false

func _on_area_2d_body_entered(_body):
	attack = true

func _on_area_attack_body_exited(_body):
	attack = false
	anim.play_backwards("default")
	
func _on_area_glued_to_tongue_body_entered(body):
	glued = true
	player = body
	
func _on_area_glued_to_tongue_body_exited(_body):
	glued = false
