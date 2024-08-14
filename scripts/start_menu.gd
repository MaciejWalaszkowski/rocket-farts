extends Control

@onready var play_pressed = preload("res://graphics/play_pressed.png")

func _ready():
	$AudioStreamPlayer2D2.play()

func _process(_delta):
	pass

func _on_texture_button_button_down():
	$AudioStreamPlayer2D.play()
	$ColorRect/MarginContainer/HBoxContainer/TextureButton.texture_normal = play_pressed
	$ColorRect/MarginContainer/HBoxContainer/TextureButton/Label.modulate = "gray"

func _on_texture_button_button_up():
	get_tree().change_scene_to_file("res://scenes/world.tscn")


func _on_audio_stream_player_2d_2_finished():
	$AudioStreamPlayer2D2.play()
