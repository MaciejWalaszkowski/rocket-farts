extends CanvasLayer

@onready var poison_progress: TextureProgressBar = $MarginContainer/TextureProgressBar
@onready var percentage_of_time

func _process(_delta):
	if Globals.poisoned and Globals.get_poisoned and !Globals.power_up:
		poison_progress.visible = true
		Globals.player_speed = Globals.normal_speed / 4
		Globals.player_jump_velocity = Globals.normal_jump + 200
		Globals.player.modulate = "green"
		$TimerPoison.start()
		Globals.get_poisoned = false
	if Globals.power_up:
		poison_progress.visible = false
	if $TimerPoison.get_time_left() > 0:
		percentage_of_time = ((1 - $TimerPoison.get_time_left() / $TimerPoison.get_wait_time()) * 100)
		#var use_int = int(percentage_of_time)
		poison_progress.value = percentage_of_time

func _on_timer_poison_timeout():
	if !Globals.power_up:
		Globals.poisoned = false
		Globals.player.modulate = "white"
		Globals.player_speed = Globals.normal_speed
		Globals.player_jump_velocity = Globals.normal_jump
		$TimerPoison.stop()
	poison_progress.visible = false
