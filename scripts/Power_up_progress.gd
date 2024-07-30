extends CanvasLayer

@onready var power_up_progress: TextureProgressBar = $MarginContainer/TextureProgressBar
@onready var percentage_of_time

func _process(_delta):
	if Globals.available:
		power_up_progress.visible = true
		$TimerPowerUp.start()
		Globals.available = false
		Globals.power_up = true
		Globals.poisoned = false
		Globals.player.modulate = "white"
	if $TimerPowerUp.get_time_left() > 0:
		percentage_of_time = ((1 - $TimerPowerUp.get_time_left() / $TimerPowerUp.get_wait_time()) * 100)
		#var use_int = int(percentage_of_time)
		power_up_progress.value = percentage_of_time

func _on_timer_power_up_timeout():
	Globals.player_speed = Globals.normal_speed
	Globals.player_jump_velocity = Globals.normal_jump
	Globals.power_up = false
	power_up_progress.visible = false
	$TimerPowerUp.stop()
