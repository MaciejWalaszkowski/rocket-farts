extends Area2D

func _ready():
	if Globals.cactus_connected:
		Globals.cactus_connected = false
		for cactus in get_tree().get_nodes_in_group("cactus"):
			cactus.body_entered.connect(Callable(self, "_on_cactus_body_entered"))

func _on_cactus_body_entered(body):
	Globals.push_back_counter = 4
	Globals.push_back = true
	if body.velocity.x != 0:
		$AudioStreamPlayer2D.play()
