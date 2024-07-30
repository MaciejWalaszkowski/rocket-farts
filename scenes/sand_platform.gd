extends StaticBody2D

func _on_area_2d_body_entered(_body):
	if Globals.heavyShoes_on:
		if Globals.on_floor:
			$AnimationPlayer.play("destroy")
			$Timer.start()

func _on_timer_timeout():
	$Sprite2D.frame = 0
	self.visible = false
	self.set_collision_layer_value(3, false)
	$AnimationPlayer.stop()
	$Timer.stop()
