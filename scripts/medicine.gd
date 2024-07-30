extends Area2D

func _on_body_entered(_body):
	print("got medicine")
	Globals.power_up = true
	Globals.poisoned = false
	Globals.available = true
	if Globals.power_up:
		Globals.player_speed = Globals.normal_speed + 300
		Globals.player_jump_velocity = Globals.normal_jump + (-350)
	queue_free()
