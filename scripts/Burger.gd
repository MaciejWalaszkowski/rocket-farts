extends Area2D

func _on_body_entered(body):
	if Globals.player_alive:
		Globals.farts_on = true
		Globals.get_food = true
		Globals.poop += 10
		body.velocity.y = -1000
		queue_free()

func _on_body_exited(_body):
	Globals.get_food = false
