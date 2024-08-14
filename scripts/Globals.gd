extends Node

signal poop_progress_change
signal points_progress_change

var player_pos = null
var player_alive = true
var poop = 0:
	get:
		return poop
	set(value):
		poop = value
		poop_progress_change.emit()

var score:int:
	get: 
		return score
	set(value):
		score = value
		points_progress_change.emit()

var save_data: SaveData

var normal_speed
var normal_jump = -450
var player_speed
var player_jump_velocity = -450
var cactus_connected = false
var spikes_connected = false
var push_back: bool = false
#var push_back_power: float = -5
var push_back_counter: int = 0

var push_back2: bool = false
#var push_back_power: float = -5
var push_back_counter2: int = 0

var paused = false
var android: bool = true
var farts_on = false
var max_progress_farts = false
var get_food = false
var power_up = false
var available = false
var poisoned = false
var get_poisoned = false
var player = null
var random_item = false
var on_floor = false
var heavyShoes_on = false
var heavyShoes = false
var stuned = false
var pl_enter_rock_p = false
var menu_on = false
var stop_cam = false
var stop_cloud = false


func _ready():
	save_data = SaveData.load_or_create()
	if OS.get_name() != "Android":
		android = false
		normal_speed = 200
		player_speed = 200
	else:
		normal_speed = 800
		player_speed = 800
