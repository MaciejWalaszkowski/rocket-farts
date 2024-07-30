extends Area2D

func _on_body_entered(_body):
	Globals.random_item = true
	queue_free()
