extends Control

@onready var play_pressed = preload("res://graphics/play_pressed.png")

func _ready():
	pass

func _process(_delta):
	pass

func _on_texture_button_button_down():
	$ColorRect/MarginContainer/HBoxContainer/TextureButton.texture_normal = play_pressed
	$ColorRect/MarginContainer/HBoxContainer/TextureButton/Label.modulate = "gray"

func _on_texture_button_button_up():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
