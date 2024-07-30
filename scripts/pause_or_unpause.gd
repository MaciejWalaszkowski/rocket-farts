extends CanvasLayer

@onready var texture_pause = preload("res://graphics/pause.png")

#func _process(delta):
	#if Input.is_action_just_pressed("click"):
		#print("ugubuga")
		#if paused:
			#print("pause")
			#get_tree().paused = false
			#
			#paused = false
		#else:
			#print("unpause")
			#get_tree().paused = true
			#
			#paused = true
	#print(paused)
	
	#$HBoxContainer/MarginContainer/TouchScreenButton.texture_normal = texture_unpause
	#else:
		#Globals.paused = false
		#get_tree().paused = false
		#$HBoxContainer/MarginContainer/TouchScreenButton.texture_normal = texture_pause
