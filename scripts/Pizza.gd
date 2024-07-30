extends Area2D

func _on_body_entered(body):
	if Globals.player_alive:
		Globals.farts_on = true
		Globals.get_food = true
		Globals.poop += 8
		body.velocity.y = -850
		queue_free()

func _on_body_exited(_body):
	Globals.get_food = false
