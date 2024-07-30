extends Area2D


func _ready():
	if Globals.spikes_connected:
		Globals.spikes_connected = false
		for spikes in get_tree().get_nodes_in_group("spikes"):
			spikes.body_entered.connect(Callable(self, "_on_body_entered"))


func _process(delta):
	pass


func _on_body_entered(body):
	Globals.push_back_counter2 = 4
	Globals.push_back2 = true
	if body.velocity.y != 0:
		$AudioStreamPlayer2D.play()
	Globals.pl_enter_rock_p = true


func _on_body_exited(body):
	Globals.pl_enter_rock_p = false
