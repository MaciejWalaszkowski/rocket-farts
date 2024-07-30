extends CanvasLayer

@onready var heavy_shoes_progress: TextureProgressBar = $MarginContainer/TextureProgressBar
@onready var percentage_of_time

func _process(_delta):
	if Globals.heavyShoes_on and Globals.heavyShoes:
		Globals.heavyShoes = false
		heavy_shoes_progress.visible = true
		$TimerHeavyShoes.start()
	if Globals.power_up or Globals.poisoned:
		$MarginContainer.position.y = 180
	else:
		$MarginContainer.position.y = 110
	if $TimerHeavyShoes.get_time_left() > 0:
		percentage_of_time = ((1 - $TimerHeavyShoes.get_time_left() / $TimerHeavyShoes.get_wait_time()) * 100)
		#var use_int = int(percentage_of_time)
		heavy_shoes_progress.value = percentage_of_time

func _on_timer_heavy_shoes_timeout():
	$TimerHeavyShoes.stop()
	Globals.heavyShoes_on = false
	heavy_shoes_progress.visible = false
