extends StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.pl_enter_rock_p:
		$CollisionShape2D.one_way_collision = false
	else:
		$CollisionShape2D.one_way_collision = true

func _on_area_2d_body_entered(body):
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
