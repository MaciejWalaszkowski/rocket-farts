extends StaticBody2D

func _ready():
	pass # Replace with function body.

func _process(_delta):
	pass

func _on_area_2d_body_entered(_body):
	if Globals.heavyShoes_on:
		if Globals.on_floor:
			$AnimationPlayer.play("destroy")
			$Timer.start()

func _on_timer_timeout():
	$AnimationPlayer.stop()
	$Sprite2D.frame = 0
	$Timer.stop()
	self.visible = false
	self.set_collision_layer_value(3, false)
