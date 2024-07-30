extends Area2D

func _on_body_entered(body):
	body.slowdown()

func _on_body_exited(body):
	body.cancel_slowdown()
