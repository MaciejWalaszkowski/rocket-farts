extends Area2D

func _on_body_entered(_body):
	print("poison")
	if !Globals.power_up:
		Globals.poisoned = true
		Globals.get_poisoned = true
	else:
		Globals.poisoned = false
		Globals.get_poisoned = false
	queue_free()
