extends Node2D

const gap: float = 150
var is_on_screen1 = true
var is_on_screen2 = true
var is_on_screen3 = true
var is_on_screen4 = true
var is_on_screen5 = true
var is_on_screen6 = true
var is_on_screen7 = true
var is_on_screen8 = true
var is_on_screen9 = true
var is_on_screen10 = true
var is_on_screen11 = true
var is_on_screen12 = true
var is_on_screen13 = true
var is_on_screen14 = true
var is_on_screen15 = true
var is_on_screen16 = true
var is_on_screen17 = true
var is_on_screen18 = true
var is_on_screen19 = true
var is_on_screen20 = true

var lowest = 0
var highest = 6

@onready var normal_platform = preload("res://scenes/normal_platform.tscn")
@onready var sand_platform = preload("res://scenes/sand_platform.tscn")
@onready var rock_platform = preload("res://scenes/rock_platform.tscn")

@onready var monster_plant = preload("res://scenes/monster_plant.tscn")
@onready var sandstorm = preload("res://scenes/sandstorm.tscn")
@onready var cactus = preload("res://scenes/cactus.tscn")
@onready var chameleon = preload("res://scenes/chameleon.tscn")
@onready var golem = preload("res://scenes/golem.tscn")
@onready var spikes = preload("res://scenes/spikes.tscn")

@onready var bean = preload("res://scenes/bean.tscn")
@onready var pizza = preload("res://scenes/pizza.tscn")
@onready var burger = preload("res://scenes/burger.tscn")

@onready var power_up = preload("res://scenes/medicine.tscn")
@onready var poison = preload("res://scenes/poison.tscn")
@onready var random_item_box = preload("res://scenes/random_item.tscn")

var random_trap = ["monster_plant", "nothing", "nothing", "nothing", "nothing", "nothing", "chameleon"]
var random_beans = ["bean", "nothing", "bean", "nothing", "pizza", "nothing", "burger", "nothing", "nothing", "nothing"]
var random_item = ["power_up", "poison", "heavy_shoes"]

var is_platform1_1_free = 0
var is_platform1_2_free = 0
var is_platform1_3_free = 0
var is_platform2_1_free = 0
var is_platform2_2_free = 0
var is_platform2_3_free = 0
var is_platform3_1_free = 0
var is_platform3_2_free = 0
var is_platform3_3_free = 0
var is_platform4_1_free = 0
var is_platform4_2_free = 0
var is_platform4_3_free = 0
var is_platform5_1_free = 0
var is_platform5_2_free = 0
var is_platform5_3_free = 0
var is_platform6_1_free = 0
var is_platform6_2_free = 0
var is_platform6_3_free = 0
var is_platform7_1_free = 0
var is_platform7_2_free = 0
var is_platform7_3_free = 0
var is_platform8_1_free = 0
var is_platform8_2_free = 0
var is_platform8_3_free = 0
var is_platform9_1_free = 0
var is_platform9_2_free = 0
var is_platform9_3_free = 0
var is_platform10_1_free = 0
var is_platform10_2_free = 0
var is_platform10_3_free = 0
var is_platform11_1_free = 0
var is_platform11_2_free = 0
var is_platform11_3_free = 0
var is_platform12_1_free = 0
var is_platform12_2_free = 0
var is_platform12_3_free = 0
var is_platform13_1_free = 0
var is_platform13_2_free = 0
var is_platform13_3_free = 0
var is_platform14_1_free = 0
var is_platform14_2_free = 0
var is_platform14_3_free = 0
var is_platform15_1_free = 0
var is_platform15_2_free = 0
var is_platform15_3_free = 0
var is_platform16_1_free = 0
var is_platform16_2_free = 0
var is_platform16_3_free = 0
var is_platform17_1_free = 0
var is_platform17_2_free = 0
var is_platform17_3_free = 0
var is_platform18_1_free = 0
var is_platform18_2_free = 0
var is_platform18_3_free = 0
var is_platform19_1_free = 0
var is_platform19_2_free = 0
var is_platform19_3_free = 0
var is_platform20_1_free = 0
var is_platform20_2_free = 0
var is_platform20_3_free = 0

var monster_plant1_1 = null
var sandstorm1_1 = null
var cactus1_1 = null
var chameleon1_1 = null
var golem1_1 = null
var spikes1_1 = null
var monster_plant1_2 = null
var sandstorm1_2 = null
var cactus1_2 = null
var chameleon1_2 = null
var golem1_2 = null
var spikes1_2 = null
var monster_plant1_3 = null
var sandstorm1_3 = null
var cactus1_3 = null
var chameleon1_3 = null
var golem1_3 = null
var spikes1_3 = null
var monster_plant2_1 = null
var sandstorm2_1 = null
var cactus2_1 = null
var chameleon2_1 = null
var golem2_1 = null
var spikes2_1 = null
var monster_plant2_2 = null
var sandstorm2_2 = null
var cactus2_2 = null
var chameleon2_2 = null
var golem2_2 = null
var spikes2_2 = null
var monster_plant2_3 = null
var sandstorm2_3 = null
var cactus2_3 = null
var chameleon2_3 = null
var golem2_3 = null
var spikes2_3 = null
var monster_plant3_1 = null
var sandstorm3_1 = null
var cactus3_1 = null
var chameleon3_1 = null
var golem3_1 = null
var spikes3_1 = null
var monster_plant3_2 = null
var sandstorm3_2 = null
var cactus3_2 = null
var chameleon3_2 = null
var golem3_2 = null
var spikes3_2 = null
var monster_plant3_3 = null
var sandstorm3_3 = null
var cactus3_3 = null
var chameleon3_3 = null
var golem3_3 = null
var spikes3_3 = null
var monster_plant4_1 = null
var sandstorm4_1 = null
var cactus4_1 = null
var chameleon4_1 = null
var golem4_1 = null
var spikes4_1 = null
var monster_plant4_2 = null
var sandstorm4_2 = null
var cactus4_2 = null
var chameleon4_2 = null
var golem4_2 = null
var spikes4_2 = null
var monster_plant4_3 = null
var sandstorm4_3 = null
var cactus4_3 = null
var chameleon4_3 = null
var golem4_3 = null
var spikes4_3 = null
var monster_plant5_1 = null
var sandstorm5_1 = null
var cactus5_1 = null
var chameleon5_1 = null
var golem5_1 = null
var spikes5_1 = null
var monster_plant5_2 = null
var sandstorm5_2 = null
var cactus5_2 = null
var chameleon5_2 = null
var golem5_2 = null
var spikes5_2 = null
var monster_plant5_3 = null
var sandstorm5_3 = null
var cactus5_3 = null
var chameleon5_3 = null
var golem5_3 = null
var spikes5_3 = null
var monster_plant6_1 = null
var sandstorm6_1 = null
var cactus6_1 = null
var chameleon6_1 = null
var golem6_1 = null
var spikes6_1 = null
var monster_plant6_2 = null
var sandstorm6_2 = null
var cactus6_2 = null
var chameleon6_2 = null
var golem6_2 = null
var spikes6_2 = null
var monster_plant6_3 = null
var sandstorm6_3 = null
var cactus6_3 = null
var chameleon6_3 = null
var golem6_3 = null
var spikes6_3 = null
var monster_plant7_1 = null
var sandstorm7_1 = null
var cactus7_1 = null
var chameleon7_1 = null
var golem7_1 = null
var spikes7_1 = null
var monster_plant7_2 = null
var sandstorm7_2 = null
var cactus7_2 = null
var chameleon7_2 = null
var golem7_2 = null
var spikes7_2 = null
var monster_plant7_3 = null
var sandstorm7_3 = null
var cactus7_3 = null
var chameleon7_3 = null
var golem7_3 = null
var spikes7_3 = null
var monster_plant8_1 = null
var sandstorm8_1 = null
var cactus8_1 = null
var chameleon8_1 = null
var golem8_1 = null
var spikes8_1 = null
var monster_plant8_2 = null
var sandstorm8_2 = null
var cactus8_2 = null
var chameleon8_2 = null
var golem8_2 = null
var spikes8_2 = null
var monster_plant8_3 = null
var sandstorm8_3 = null
var cactus8_3 = null
var chameleon8_3 = null
var golem8_3 = null
var spikes8_3 = null
var monster_plant9_1 = null
var sandstorm9_1 = null
var cactus9_1 = null
var chameleon9_1 = null
var golem9_1 = null
var spikes9_1 = null
var monster_plant9_2 = null
var sandstorm9_2 = null
var cactus9_2 = null
var chameleon9_2 = null
var golem9_2 = null
var spikes9_2 = null
var monster_plant9_3 = null
var sandstorm9_3 = null
var cactus9_3 = null
var chameleon9_3 = null
var golem9_3 = null
var spikes9_3 = null
var monster_plant10_1 = null
var sandstorm10_1 = null
var cactus10_1 = null
var chameleon10_1 = null
var golem10_1 = null
var spikes10_1 = null
var monster_plant10_2 = null
var sandstorm10_2 = null
var cactus10_2 = null
var chameleon10_2 = null
var golem10_2 = null
var spikes10_2 = null
var monster_plant10_3 = null
var sandstorm10_3 = null
var cactus10_3 = null
var chameleon10_3 = null
var golem10_3 = null
var spikes10_3 = null
var monster_plant11_1 = null
var sandstorm11_1 = null
var cactus11_1 = null
var chameleon11_1 = null
var golem11_1 = null
var spikes11_1 = null
var monster_plant11_2 = null
var sandstorm11_2 = null
var cactus11_2 = null
var chameleon11_2 = null
var golem11_2 = null
var spikes11_2 = null
var monster_plant11_3 = null
var sandstorm11_3 = null
var cactus11_3 = null
var chameleon11_3 = null
var golem11_3 = null
var spikes11_3 = null
var monster_plant12_1 = null
var sandstorm12_1 = null
var cactus12_1 = null
var chameleon12_1 = null
var golem12_1 = null
var spikes12_1 = null
var monster_plant12_2 = null
var sandstorm12_2 = null
var cactus12_2 = null
var chameleon12_2 = null
var golem12_2 = null
var spikes12_2 = null
var monster_plant12_3 = null
var sandstorm12_3 = null
var cactus12_3 = null
var chameleon12_3 = null
var golem12_3 = null
var spikes12_3 = null
var monster_plant13_1 = null
var sandstorm13_1 = null
var cactus13_1 = null
var chameleon13_1 = null
var golem13_1 = null
var spikes13_1 = null
var monster_plant13_2 = null
var sandstorm13_2 = null
var cactus13_2 = null
var chameleon13_2 = null
var golem13_2 = null
var spikes13_2 = null
var monster_plant13_3 = null
var sandstorm13_3 = null
var cactus13_3 = null
var chameleon13_3 = null
var golem13_3 = null
var spikes13_3 = null
var monster_plant14_1 = null
var sandstorm14_1 = null
var cactus14_1 = null
var chameleon14_1 = null
var golem14_1 = null
var spikes14_1 = null
var monster_plant14_2 = null
var sandstorm14_2 = null
var cactus14_2 = null
var chameleon14_2 = null
var golem14_2 = null
var spikes14_2 = null
var monster_plant14_3 = null
var sandstorm14_3 = null
var cactus14_3 = null
var chameleon14_3 = null
var golem14_3 = null
var spikes14_3 = null
var monster_plant15_1 = null
var sandstorm15_1 = null
var cactus15_1 = null
var chameleon15_1 = null
var golem15_1 = null
var spikes15_1 = null
var monster_plant15_2 = null
var sandstorm15_2 = null
var cactus15_2 = null
var chameleon15_2 = null
var golem15_2 = null
var spikes15_2 = null
var monster_plant15_3 = null
var sandstorm15_3 = null
var cactus15_3 = null
var chameleon15_3 = null
var golem15_3 = null
var spikes15_3 = null
var monster_plant16_1 = null
var sandstorm16_1 = null
var cactus16_1 = null
var chameleon16_1 = null
var golem16_1 = null
var spikes16_1 = null
var monster_plant16_2 = null
var sandstorm16_2 = null
var cactus16_2 = null
var chameleon16_2 = null
var golem16_2 = null
var spikes16_2 = null
var monster_plant16_3 = null
var sandstorm16_3 = null
var cactus16_3 = null
var chameleon16_3 = null
var golem16_3 = null
var spikes16_3 = null
var monster_plant17_1 = null
var sandstorm17_1 = null
var cactus17_1 = null
var chameleon17_1 = null
var golem17_1 = null
var spikes17_1 = null
var monster_plant17_2 = null
var sandstorm17_2 = null
var cactus17_2 = null
var chameleon17_2 = null
var golem17_2 = null
var spikes17_2 = null
var monster_plant17_3 = null
var sandstorm17_3 = null
var cactus17_3 = null
var chameleon17_3 = null
var golem17_3 = null
var spikes17_3 = null
var monster_plant18_1 = null
var sandstorm18_1 = null
var cactus18_1 = null
var chameleon18_1 = null
var golem18_1 = null
var spikes18_1 = null
var monster_plant18_2 = null
var sandstorm18_2 = null
var cactus18_2 = null
var chameleon18_2 = null
var golem18_2 = null
var spikes18_2 = null
var monster_plant18_3 = null
var sandstorm18_3 = null
var cactus18_3 = null
var chameleon18_3 = null
var golem18_3 = null
var spikes18_3 = null
var monster_plant19_1 = null
var sandstorm19_1 = null
var cactus19_1 = null
var chameleon19_1 = null
var golem19_1 = null
var spikes19_1 = null
var monster_plant19_2 = null
var sandstorm19_2 = null
var cactus19_2 = null
var chameleon19_2 = null
var golem19_2 = null
var spikes19_2 = null
var monster_plant19_3 = null
var sandstorm19_3 = null
var cactus19_3 = null
var chameleon19_3 = null
var golem19_3 = null
var spikes19_3 = null
var monster_plant20_1 = null
var sandstorm20_1 = null
var cactus20_1 = null
var chameleon20_1 = null
var golem20_1 = null
var spikes20_1 = null
var monster_plant20_2 = null
var sandstorm20_2 = null
var cactus20_2 = null
var chameleon20_2 = null
var golem20_2 = null
var spikes20_2 = null
var monster_plant20_3 = null
var sandstorm20_3 = null
var cactus20_3 = null
var chameleon20_3 = null
var golem20_3 = null
var spikes20_3 = null

var random_bool = [false, false, false, false, true]

@onready var platform1_1 = $platforms/platform1/Normal_platform1
@onready var platform1_2 = $platforms/platform1/Normal_platform2
@onready var platform1_3 = $platforms/platform1/Normal_platform3
@onready var platform2_1 = $platforms/platform2/Normal_platform1
@onready var platform2_2 = $platforms/platform2/Normal_platform2
@onready var platform2_3 = $platforms/platform2/Normal_platform3
@onready var platform3_1 = $platforms/platform3/Normal_platform1
@onready var platform3_2 = $platforms/platform3/Normal_platform2
@onready var platform3_3 = $platforms/platform3/Normal_platform3
@onready var platform4_1 = $platforms/platform4/Normal_platform1
@onready var platform4_2 = $platforms/platform4/Normal_platform2
@onready var platform4_3 = $platforms/platform4/Normal_platform3
@onready var platform5_1 = $platforms/platform5/Normal_platform1
@onready var platform5_2 = $platforms/platform5/Normal_platform2
@onready var platform5_3 = $platforms/platform5/Normal_platform3
@onready var platform6_1 = $platforms/platform6/Normal_platform1
@onready var platform6_2 = $platforms/platform6/Normal_platform2
@onready var platform6_3 = $platforms/platform6/Normal_platform3
@onready var platform7_1 = $platforms/platform7/Normal_platform1
@onready var platform7_2 = $platforms/platform7/Normal_platform2
@onready var platform7_3 = $platforms/platform7/Normal_platform3
@onready var platform8_1 = $platforms/platform8/Normal_platform1
@onready var platform8_2 = $platforms/platform8/Normal_platform2
@onready var platform8_3 = $platforms/platform8/Normal_platform3
@onready var platform9_1 = $platforms/platform9/Normal_platform1
@onready var platform9_2 = $platforms/platform9/Normal_platform2
@onready var platform9_3 = $platforms/platform9/Normal_platform3
@onready var platform10_1 = $platforms/platform10/Normal_platform1
@onready var platform10_2 = $platforms/platform10/Normal_platform2
@onready var platform10_3 = $platforms/platform10/Normal_platform3
@onready var platform11_1 = $platforms/platform11/Normal_platform1
@onready var platform11_2 = $platforms/platform11/Normal_platform2
@onready var platform11_3 = $platforms/platform11/Normal_platform3
@onready var platform12_1 = $platforms/platform12/Normal_platform1
@onready var platform12_2 = $platforms/platform12/Normal_platform2
@onready var platform12_3 = $platforms/platform12/Normal_platform3
@onready var platform13_1 = $platforms/platform13/Normal_platform1
@onready var platform13_2 = $platforms/platform13/Normal_platform2
@onready var platform13_3 = $platforms/platform13/Normal_platform3
@onready var platform14_1 = $platforms/platform14/Normal_platform1
@onready var platform14_2 = $platforms/platform14/Normal_platform2
@onready var platform14_3 = $platforms/platform14/Normal_platform3
@onready var platform15_1 = $platforms/platform15/Normal_platform1
@onready var platform15_2 = $platforms/platform15/Normal_platform2
@onready var platform15_3 = $platforms/platform15/Normal_platform3
@onready var platform16_1 = $platforms/platform16/Normal_platform1
@onready var platform16_2 = $platforms/platform16/Normal_platform2
@onready var platform16_3 = $platforms/platform16/Normal_platform3
@onready var platform17_1 = $platforms/platform17/Normal_platform1
@onready var platform17_2 = $platforms/platform17/Normal_platform2
@onready var platform17_3 = $platforms/platform17/Normal_platform3
@onready var platform18_1 = $platforms/platform18/Normal_platform1
@onready var platform18_2 = $platforms/platform18/Normal_platform2
@onready var platform18_3 = $platforms/platform18/Normal_platform3
@onready var platform19_1 = $platforms/platform19/Normal_platform1
@onready var platform19_2 = $platforms/platform19/Normal_platform2
@onready var platform19_3 = $platforms/platform19/Normal_platform3
@onready var platform20_1 = $platforms/platform20/Normal_platform1
@onready var platform20_2 = $platforms/platform20/Normal_platform2
@onready var platform20_3 = $platforms/platform20/Normal_platform3

var biome_number = "1"

func _ready():
	random_traps1()
	random_traps2()
	random_traps3()
	random_traps4()
	random_traps5()
	random_traps6()
	random_traps7()
	random_traps8()
	random_traps9()
	random_traps10()
	random_traps11()
	random_traps12()
	random_traps13()
	random_traps14()
	random_traps15()
	random_traps16()
	random_traps17()
	random_traps18()
	random_traps19()
	random_traps20()
	
	random_bean1()
	random_bean2()
	random_bean3()
	random_bean4()
	random_bean5()
	random_bean6()
	random_bean7()
	random_bean8()
	random_bean9()
	random_bean10()
	random_bean11()
	random_bean12()
	random_bean13()
	random_bean14()
	random_bean15()
	random_bean16()
	random_bean17()
	random_bean18()
	random_bean19()
	random_bean20()
	
	change_traps_if_next_biome()

func _process(_delta):
	random_items()
	move_platforms_and_traps()
	position_equals_biome()
	change_traps_if_next_biome()

func change_traps_if_next_biome():
	if biome_number == "1":
		random_trap = ["monster_plant", "nothing", "nothing", "nothing", "nothing", "nothing", "chameleon"]
	elif biome_number == "2":
		random_trap = ["nothing", "sandstorm", "cactus", "nothing", "nothing", "nothing"]
	elif biome_number == "3":
		random_trap = ["spikes", "nothing", "nothing", "nothing", "golem", "nothing"]

func position_equals_biome():
	if $Player.position.y > -20000 and biome_number != "2":
		biome_number = "1"
	elif $Player.position.y <= -20000 and $Player.position.y > -40000:
		if biome_number != "3":
			biome_number = "2"
	elif $Player.position.y <= -40000 and biome_number != "4":
		biome_number = "3"

func random_power_up(a, b):
	randomize()
	var probability: int = 60
	if (randi() % probability) == (probability - 1):
		var powerUp = power_up.instantiate()
		$".".add_child(powerUp)
		powerUp.global_position.x = randf_range(70, 570)
		powerUp.global_position.y = randf_range(a.global_position.y, b.global_position.y)

func random_poison(a, b):
	randomize()
	var probability: int = 60
	if (randi() % probability) == (probability - 1):
		var poisonx = poison.instantiate()
		$".".add_child(poisonx)
		poisonx.global_position.x = randf_range(70, 570)
		poisonx.global_position.y = randf_range(a.global_position.y, b.global_position.y)

func random_items():
	if Globals.random_item:
		Globals.random_item = false
		var rand_item = random_item.pick_random()
		if rand_item == "power_up":
			print("power up")
			Globals.power_up = true
			Globals.available = true
			Globals.poisoned = false
			if Globals.power_up:
				Globals.player_speed = Globals.normal_speed + 300
				Globals.player_jump_velocity = Globals.normal_jump + (-350)
		elif rand_item == "poison":
			print("poison")
			if !Globals.power_up:
				Globals.poisoned = true
				Globals.get_poisoned = true
		elif rand_item == "heavy_shoes":
			print("heavy shoes")
			Globals.heavyShoes_on = true
			Globals.heavyShoes = true

func random_random_items(a, b):
	randomize()
	var probability: int = 60
	if (randi() % probability) == (probability - 1):
		var random_items_box = random_item_box.instantiate()
		$".".add_child(random_items_box)
		random_items_box.global_position.x = randf_range(70, 570)
		random_items_box.global_position.y = randf_range(a.global_position.y, b.global_position.y)

func random_bean1():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean1 = bean.instantiate()
		$".".add_child(bean1)
		bean1.global_position.x = randf_range(70, 570)
		bean1.global_position.y = randf_range($platforms/platform1.global_position.y, $platforms/platform2.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform1.global_position.y, $platforms/platform2.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform1.global_position.y, $platforms/platform2.global_position.y)
	else: 
		return
func random_bean2():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean2 = bean.instantiate()
		$".".add_child(bean2)
		bean2.global_position.x = randf_range(70, 570)
		bean2.global_position.y = randf_range($platforms/platform2.global_position.y, $platforms/platform3.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform2.global_position.y, $platforms/platform3.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform2.global_position.y, $platforms/platform3.global_position.y)
	else: 
		return
func random_bean3():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean3 = bean.instantiate()
		$".".add_child(bean3)
		bean3.global_position.x = randf_range(70, 570)
		bean3.global_position.y = randf_range($platforms/platform3.global_position.y, $platforms/platform4.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform3.global_position.y, $platforms/platform4.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform3.global_position.y, $platforms/platform4.global_position.y)
	else: 
		return
func random_bean4():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean4 = bean.instantiate()
		$".".add_child(bean4)
		bean4.global_position.x = randf_range(70, 570)
		bean4.global_position.y = randf_range($platforms/platform4.global_position.y, $platforms/platform5.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform4.global_position.y, $platforms/platform5.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform4.global_position.y, $platforms/platform5.global_position.y)
	else: 
		return
func random_bean5():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean5 = bean.instantiate()
		$".".add_child(bean5)
		bean5.global_position.x = randf_range(70, 570)
		bean5.global_position.y = randf_range($platforms/platform5.global_position.y, $platforms/platform6.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform5.global_position.y, $platforms/platform6.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform5.global_position.y, $platforms/platform6.global_position.y)
	else: 
		return
func random_bean6():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean6 = bean.instantiate()
		$".".add_child(bean6)
		bean6.global_position.x = randf_range(70, 570)
		bean6.global_position.y = randf_range($platforms/platform6.global_position.y, $platforms/platform7.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform6.global_position.y, $platforms/platform7.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform6.global_position.y, $platforms/platform7.global_position.y)
	else: 
		return
func random_bean7():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean7 = bean.instantiate()
		$".".add_child(bean7)
		bean7.global_position.x = randf_range(70, 570)
		bean7.global_position.y = randf_range($platforms/platform7.global_position.y, $platforms/platform8.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform7.global_position.y, $platforms/platform8.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform7.global_position.y, $platforms/platform8.global_position.y)
	else: 
		return
func random_bean8():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean8 = bean.instantiate()
		$".".add_child(bean8)
		bean8.global_position.x = randf_range(70, 570)
		bean8.global_position.y = randf_range($platforms/platform8.global_position.y, $platforms/platform9.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform8.global_position.y, $platforms/platform9.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform8.global_position.y, $platforms/platform9.global_position.y)
	else: 
		return
func random_bean9():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean9 = bean.instantiate()
		$".".add_child(bean9)
		bean9.global_position.x = randf_range(70, 570)
		bean9.global_position.y = randf_range($platforms/platform9.global_position.y, $platforms/platform10.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform9.global_position.y, $platforms/platform10.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform9.global_position.y, $platforms/platform10.global_position.y)
	else: 
		return
func random_bean10():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean10 = bean.instantiate()
		$".".add_child(bean10)
		bean10.global_position.x = randf_range(70, 570)
		bean10.global_position.y = randf_range($platforms/platform10.global_position.y, $platforms/platform11.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform10.global_position.y, $platforms/platform11.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform10.global_position.y, $platforms/platform11.global_position.y)
	else: 
		return
func random_bean11():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean11 = bean.instantiate()
		$".".add_child(bean11)
		bean11.global_position.x = randf_range(70, 570)
		bean11.global_position.y = randf_range($platforms/platform11.global_position.y, $platforms/platform12.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform11.global_position.y, $platforms/platform12.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform11.global_position.y, $platforms/platform12.global_position.y)
	else: 
		return
func random_bean12():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean12 = bean.instantiate()
		$".".add_child(bean12)
		bean12.global_position.x = randf_range(70, 570)
		bean12.global_position.y = randf_range($platforms/platform12.global_position.y, $platforms/platform13.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform12.global_position.y, $platforms/platform13.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform12.global_position.y, $platforms/platform13.global_position.y)
	else: 
		return
func random_bean13():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean13 = bean.instantiate()
		$".".add_child(bean13)
		bean13.global_position.x = randf_range(70, 570)
		bean13.global_position.y = randf_range($platforms/platform13.global_position.y, $platforms/platform14.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform13.global_position.y, $platforms/platform14.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform13.global_position.y, $platforms/platform14.global_position.y)
	else: 
		return
func random_bean14():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean14 = bean.instantiate()
		$".".add_child(bean14)
		bean14.global_position.x = randf_range(70, 570)
		bean14.global_position.y = randf_range($platforms/platform14.global_position.y, $platforms/platform15.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform14.global_position.y, $platforms/platform15.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform14.global_position.y, $platforms/platform15.global_position.y)
	else: 
		return
func random_bean15():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean15 = bean.instantiate()
		$".".add_child(bean15)
		bean15.global_position.x = randf_range(70, 570)
		bean15.global_position.y = randf_range($platforms/platform15.global_position.y, $platforms/platform16.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform15.global_position.y, $platforms/platform16.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform15.global_position.y, $platforms/platform16.global_position.y)
	else: 
		return
func random_bean16():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean16 = bean.instantiate()
		$".".add_child(bean16)
		bean16.global_position.x = randf_range(70, 570)
		bean16.global_position.y = randf_range($platforms/platform16.global_position.y, $platforms/platform17.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform16.global_position.y, $platforms/platform17.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform16.global_position.y, $platforms/platform17.global_position.y)
	else: 
		return
func random_bean17():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean17 = bean.instantiate()
		$".".add_child(bean17)
		bean17.global_position.x = randf_range(70, 570)
		bean17.global_position.y = randf_range($platforms/platform17.global_position.y, $platforms/platform18.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform17.global_position.y, $platforms/platform18.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform17.global_position.y, $platforms/platform18.global_position.y)
	else: 
		return
func random_bean18():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean18 = bean.instantiate()
		$".".add_child(bean18)
		bean18.global_position.x = randf_range(70, 570)
		bean18.global_position.y = randf_range($platforms/platform18.global_position.y, $platforms/platform19.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform18.global_position.y, $platforms/platform19.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform18.global_position.y, $platforms/platform19.global_position.y)
	else: 
		return
func random_bean19():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean19 = bean.instantiate()
		$".".add_child(bean19)
		bean19.global_position.x = randf_range(70, 570)
		bean19.global_position.y = randf_range($platforms/platform19.global_position.y, $platforms/platform20.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform19.global_position.y, $platforms/platform20.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform19.global_position.y, $platforms/platform20.global_position.y)
	else: 
		return
func random_bean20():
	var random_bean = random_beans.pick_random()
	if random_bean == "bean":
		var bean20 = bean.instantiate()
		$".".add_child(bean20)
		bean20.global_position.x = randf_range(70, 570)
		bean20.global_position.y = randf_range($platforms/platform20.global_position.y, $platforms/platform1.global_position.y)
	elif random_bean == "pizza":
		var pizza1 = pizza.instantiate()
		$".".add_child(pizza1)
		pizza1.global_position.x =  randf_range(70, 570)
		pizza1.global_position.y = randf_range($platforms/platform20.global_position.y, $platforms/platform1.global_position.y)
	elif random_bean == "burger":
		var burger1 = burger.instantiate()
		$".".add_child(burger1)
		burger1.global_position.x =  randf_range(70, 570)
		burger1.global_position.y = randf_range($platforms/platform20.global_position.y, $platforms/platform1.global_position.y)
	else: 
		return

func move_platforms_and_traps():
	var platforms = get_tree().get_nodes_in_group("platform")
	var highest_platform = platforms[max(0,highest)]
	#70(257) - (403)570
	for platform in platforms:
		if platform.global_position.distance_to(Globals.player_pos) < highest_platform.global_position.distance_to(Globals.player_pos):
			highest_platform = platform
		if !is_on_screen1:
			platform1(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform19.global_position.y:
				random_bean19()
				random_power_up($platforms/platform19, $platforms/platform20)
				random_poison($platforms/platform19, $platforms/platform20)
				random_random_items($platforms/platform19, $platforms/platform20)
		elif !is_on_screen2:
			platform2(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform20.global_position.y:
				random_bean20()
				random_power_up($platforms/platform20, $platforms/platform1)
				random_poison($platforms/platform20, $platforms/platform1)
				random_random_items($platforms/platform20, $platforms/platform1)
		elif !is_on_screen3:
			platform3(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform1.global_position.y:
				random_bean1()
				random_power_up($platforms/platform1, $platforms/platform2)
				random_poison($platforms/platform1, $platforms/platform2)
				random_random_items($platforms/platform1, $platforms/platform2)
		elif !is_on_screen4:
			platform4(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform2.global_position.y:
				random_bean2()
				random_power_up($platforms/platform2, $platforms/platform3)
				random_poison($platforms/platform2, $platforms/platform3)
				random_random_items($platforms/platform2, $platforms/platform3)
		elif !is_on_screen5:
			platform5(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform3.global_position.y:
				random_bean3()
				random_power_up($platforms/platform3, $platforms/platform4)
				random_poison($platforms/platform3, $platforms/platform4)
				random_random_items($platforms/platform3, $platforms/platform4)
		elif !is_on_screen6:
			platform6(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform4.global_position.y:
				random_bean4()
				random_power_up($platforms/platform4, $platforms/platform5)
				random_poison($platforms/platform4, $platforms/platform5)
				random_random_items($platforms/platform4, $platforms/platform5)
		elif !is_on_screen7:
			platform7(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform5.global_position.y:
				random_bean5()
				random_power_up($platforms/platform5, $platforms/platform6)
				random_poison($platforms/platform5, $platforms/platform6)
				random_random_items($platforms/platform5, $platforms/platform6)
		elif !is_on_screen8:
			platform8(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform6.global_position.y:
				random_bean6()
				random_power_up($platforms/platform6, $platforms/platform7)
				random_poison($platforms/platform6, $platforms/platform7)
				random_random_items($platforms/platform6, $platforms/platform7)
		elif !is_on_screen9:
			platform9(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform7.global_position.y:
				random_bean7()
				random_power_up($platforms/platform7, $platforms/platform8)
				random_poison($platforms/platform7, $platforms/platform8)
				random_random_items($platforms/platform7, $platforms/platform8)
		elif !is_on_screen10:
			platform10(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform8.global_position.y:
				random_bean8()
				random_power_up($platforms/platform8, $platforms/platform9)
				random_poison($platforms/platform8, $platforms/platform9)
				random_random_items($platforms/platform8, $platforms/platform9)
		elif !is_on_screen11:
			platform11(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform9.global_position.y:
				random_bean9()
				random_power_up($platforms/platform9, $platforms/platform10)
				random_poison($platforms/platform9, $platforms/platform10)
				random_random_items($platforms/platform9, $platforms/platform10)
		elif !is_on_screen12:
			platform12(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform10.global_position.y:
				random_bean10()
				random_power_up($platforms/platform10, $platforms/platform11)
				random_poison($platforms/platform10, $platforms/platform11)
				random_random_items($platforms/platform10, $platforms/platform11)
		elif !is_on_screen13:
			platform13(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform11.global_position.y:
				random_bean11()
				random_power_up($platforms/platform11, $platforms/platform12)
				random_poison($platforms/platform11, $platforms/platform12)
				random_random_items($platforms/platform11, $platforms/platform12)
		elif !is_on_screen14:
			platform14(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform12.global_position.y:
				random_bean12()
				random_power_up($platforms/platform12, $platforms/platform13)
				random_poison($platforms/platform12, $platforms/platform13)
				random_random_items($platforms/platform12, $platforms/platform13)
		elif !is_on_screen15:
			platform15(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform13.global_position.y:
				random_bean13()
				random_power_up($platforms/platform13, $platforms/platform14)
				random_poison($platforms/platform13, $platforms/platform14)
				random_random_items($platforms/platform13, $platforms/platform14)
		elif !is_on_screen16:
			platform16(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform14.global_position.y:
				random_bean14()
				random_power_up($platforms/platform14, $platforms/platform15)
				random_poison($platforms/platform14, $platforms/platform15)
				random_random_items($platforms/platform14, $platforms/platform15)
		elif !is_on_screen17:
			platform17(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform15.global_position.y:
				random_bean15()
				random_power_up($platforms/platform15, $platforms/platform16)
				random_poison($platforms/platform15, $platforms/platform16)
				random_random_items($platforms/platform15, $platforms/platform16)
		elif !is_on_screen18:
			platform18(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform16.global_position.y:
				random_bean16()
				random_power_up($platforms/platform16, $platforms/platform17)
				random_poison($platforms/platform16, $platforms/platform17)
				random_random_items($platforms/platform16, $platforms/platform17)
		elif !is_on_screen19:
			platform19(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform17.global_position.y:
				random_bean17()
				random_power_up($platforms/platform17, $platforms/platform18)
				random_poison($platforms/platform17, $platforms/platform18)
				random_random_items($platforms/platform17, $platforms/platform18)
		elif !is_on_screen20:
			platform20(highest_platform)
			if Globals.player_pos.y + (-1000) > $platforms/platform18.global_position.y:
				random_bean18()
				random_power_up($platforms/platform18, $platforms/platform19)
				random_poison($platforms/platform18, $platforms/platform19)
				random_random_items($platforms/platform18, $platforms/platform19)

func norm_p1_visible_false():
	$platforms/platform1/Normal_platform1.visible = false
	$platforms/platform1/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform1/Normal_platform2.visible = false
	$platforms/platform1/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform1/Normal_platform3.visible = false
	$platforms/platform1/Normal_platform3.set_collision_layer_value(3, false)

func sand_p1_visible_false():
	$platforms/platform1/Sand_platform1.visible = false
	$platforms/platform1/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform1/Sand_platform2.visible = false
	$platforms/platform1/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform1/Sand_platform3.visible = false
	$platforms/platform1/Sand_platform3.set_collision_layer_value(3, false)

func random_traps1():
	if biome_number == "1":
		platform1_1 = $platforms/platform1/Normal_platform1
		platform1_2 = $platforms/platform1/Normal_platform2
		platform1_3 = $platforms/platform1/Normal_platform3
	elif biome_number == "2":
		platform1_1 = $platforms/platform1/Sand_platform1
		platform1_2 = $platforms/platform1/Sand_platform2
		platform1_3 = $platforms/platform1/Sand_platform3
		norm_p1_visible_false()
	elif biome_number == "3":
		platform1_1 = $platforms/platform1/Rock_platform
		platform1_2 = $platforms/platform1/Rock_platform2
		platform1_3 = $platforms/platform1/Rock_platform3
		norm_p1_visible_false()
		sand_p1_visible_false()
	platform1_1.global_position.x = randf_range(70,257)
	platform1_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform1_1.visible = visible_or_invisible1
	platform1_2.visible = visible_or_invisible2
	platform1_3.visible = false
	platform1_3.set_collision_layer_value(3, false)
	
	if platform1_1.visible == false:
		platform1_1.set_collision_layer_value(3, false)
		if monster_plant1_1 != null:
			monster_plant1_1.queue_free()
			is_platform1_1_free = 0
		elif sandstorm1_1 != null:
			sandstorm1_1.queue_free()
			is_platform1_1_free = 0
		elif cactus1_1 != null:
			cactus1_1.queue_free()
			is_platform1_1_free = 0
		elif chameleon1_1 != null:
			chameleon1_1.queue_free()
			is_platform1_1_free = 0
		elif golem1_1 != null:
			golem1_1.queue_free()
			is_platform1_1_free = 0
		elif spikes1_1 != null:
			spikes1_1.queue_free()
			is_platform1_1_free = 0
	elif platform1_1.visible == true:
		platform1_1.set_collision_layer_value(3, true)
		if is_platform1_1_free >= 1:
			is_platform1_1_free = 0
			if monster_plant1_1 != null:
				monster_plant1_1.queue_free()
				is_platform1_1_free = 0
			elif sandstorm1_1 != null:
				sandstorm1_1.queue_free()
				is_platform1_1_free = 0
			elif cactus1_1 != null:
				cactus1_1.queue_free()
				is_platform1_1_free = 0
			elif chameleon1_1 != null:
				chameleon1_1.queue_free()
				is_platform1_1_free = 0
			elif golem1_1 != null:
				golem1_1.queue_free()
				is_platform1_1_free = 0
			elif spikes1_1 != null:
				spikes1_1.queue_free()
				is_platform1_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform1_1_free == 0:
				monster_plant1_1 = monster_plant.instantiate()
				platform1_1.add_child(monster_plant1_1)
				monster_plant1_1.position.y -= 70
				is_platform1_1_free += 1
		elif random_t == "sandstorm":
			if is_platform1_1_free == 0:
				sandstorm1_1 = sandstorm.instantiate()
				platform1_1.add_child(sandstorm1_1)
				sandstorm1_1.position.y -= 80
				is_platform1_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform1_1_free == 0:
				cactus1_1 = cactus.instantiate()
				platform1_1.add_child(cactus1_1)
				cactus1_1.position.y -= 80
				is_platform1_1_free += 1
		elif random_t == "chameleon":
			if is_platform1_1_free == 0:
				chameleon1_1 = chameleon.instantiate()
				platform1_1.add_child(chameleon1_1)
				chameleon1_1.position.x += 12
				is_platform1_1_free += 1
		elif random_t == "golem":
			if is_platform1_1_free == 0:
				golem1_1 = golem.instantiate()
				platform1_1.add_child(golem1_1)
				golem1_1.position.y -= 150
				is_platform1_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform1_1_free == 0:
				spikes1_1 = spikes.instantiate()
				platform1_1.add_child(spikes1_1)
				spikes1_1.position.y += 32
				is_platform1_1_free += 1
		elif random_t == "nothing":
			if is_platform1_1_free == 0:
				is_platform1_1_free +=1
	if platform1_2.visible == false:
		platform1_2.set_collision_layer_value(3, false)
		if monster_plant1_2 != null:
			monster_plant1_2.queue_free()
			is_platform1_2_free = 0
		elif sandstorm1_2 != null:
			sandstorm1_2.queue_free()
			is_platform1_2_free = 0
		elif cactus1_2 != null:
			cactus1_2.queue_free()
			is_platform1_2_free = 0
		elif chameleon1_2 != null:
			chameleon1_2.queue_free()
			is_platform1_2_free = 0
		elif golem1_2 != null:
			golem1_2.queue_free()
			is_platform1_2_free = 0
		elif spikes1_2 != null:
			spikes1_2.queue_free()
			is_platform1_2_free = 0
	elif platform1_2.visible == true:
		platform1_2.set_collision_layer_value(3, true)
		if is_platform1_2_free >= 1:
			is_platform1_2_free = 0
			if monster_plant1_2 != null:
				monster_plant1_2.queue_free()
				is_platform1_2_free = 0
			elif sandstorm1_2 != null:
				sandstorm1_2.queue_free()
				is_platform1_2_free = 0
			elif cactus1_2 != null:
				cactus1_2.queue_free()
				is_platform1_2_free = 0
			elif chameleon1_2 != null:
				chameleon1_2.queue_free()
				is_platform1_2_free = 0
			elif golem1_2 != null:
				golem1_2.queue_free()
				is_platform1_2_free = 0
			elif spikes1_2 != null:
				spikes1_2.queue_free()
				is_platform1_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform1_2_free == 0:
				monster_plant1_2 = monster_plant.instantiate()
				platform1_2.add_child(monster_plant1_2)
				monster_plant1_2.position.y -= 70
				is_platform1_2_free += 1
		elif random_t == "sandstorm":
			if is_platform1_2_free == 0:
				sandstorm1_2 = sandstorm.instantiate()
				platform1_2.add_child(sandstorm1_2)
				sandstorm1_2.position.y -= 80
				is_platform1_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform1_2_free == 0:
				cactus1_2 = cactus.instantiate()
				platform1_2.add_child(cactus1_2)
				cactus1_2.position.y -= 80
				is_platform1_2_free += 1
		elif random_t == "chameleon":
			if is_platform1_2_free == 0:
				chameleon1_2 = chameleon.instantiate()
				platform1_2.add_child(chameleon1_2)
				chameleon1_2.position.x += 12
				is_platform1_2_free += 1
		elif random_t == "golem":
			if is_platform1_2_free == 0:
				golem1_2 = golem.instantiate()
				platform1_2.add_child(golem1_2)
				golem1_2.position.y -= 150
				is_platform1_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform1_2_free == 0:
				spikes1_2 = spikes.instantiate()
				platform1_2.add_child(spikes1_2)
				spikes1_2.position.y += 32
				is_platform1_2_free += 1
		elif random_t == "nothing":
			if is_platform1_2_free == 0:
				is_platform1_2_free +=1
	if platform1_1.visible == false and platform1_2.visible == false:
		platform1_3.global_position.x = randf_range(70,570)
		platform1_3.visible = true
		platform1_3.set_collision_layer_value(3, true)
		if is_platform1_3_free >= 1:
			is_platform1_3_free = 0
			if monster_plant1_3 != null:
				monster_plant1_3.queue_free()
				is_platform1_3_free = 0
			elif sandstorm1_3 != null:
				sandstorm1_3.queue_free()
				is_platform1_3_free = 0
			elif cactus1_3 != null:
				cactus1_3.queue_free()
				is_platform1_3_free = 0
			elif chameleon1_3 != null:
				chameleon1_3.queue_free()
				is_platform1_3_free = 0
			elif golem1_3 != null:
				golem1_3.queue_free()
				is_platform1_3_free = 0
			elif spikes1_3 != null:
				spikes1_3.queue_free()
				is_platform1_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform1_3_free == 0:
				monster_plant1_3 = monster_plant.instantiate()
				platform1_3.add_child(monster_plant1_3)
				monster_plant1_3.position.y -= 70
				is_platform1_3_free += 1
		elif random_t == "sandstorm":
			if is_platform1_3_free == 0:
				sandstorm1_3 = sandstorm.instantiate()
				platform1_3.add_child(sandstorm1_3)
				sandstorm1_3.position.y -= 80
				is_platform1_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform1_3_free == 0:
				cactus1_3 = cactus.instantiate()
				platform1_3.add_child(cactus1_3)
				cactus1_3.position.y -= 80
				is_platform1_3_free += 1
		elif random_t == "chameleon":
			if is_platform1_3_free == 0:
				chameleon1_3 = chameleon.instantiate()
				platform1_3.add_child(chameleon1_3)
				chameleon1_3.position.x += 12
				is_platform1_3_free += 1
		elif random_t == "golem":
			if is_platform1_3_free == 0:
				golem1_3 = golem.instantiate()
				platform1_3.add_child(golem1_3)
				golem1_3.position.y -= 150
				is_platform1_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform1_3_free == 0:
				spikes1_3 = spikes.instantiate()
				platform1_3.add_child(spikes1_3)
				spikes1_3.position.y += 32
				is_platform1_3_free += 1
		elif random_t == "nothing":
			if is_platform1_3_free == 0:
				is_platform1_3_free +=1
	if platform1_3.visible == false:
		platform1_3.set_collision_layer_value(3, false)
		if monster_plant1_3 != null:
			monster_plant1_3.queue_free()
			is_platform1_3_free = 0
		elif sandstorm1_3 != null:
			sandstorm1_3.queue_free()
			is_platform1_3_free = 0
		elif cactus1_3 != null:
			cactus1_3.queue_free()
			is_platform1_3_free = 0
		elif chameleon1_3 != null:
			chameleon1_3.queue_free()
			is_platform1_3_free = 0
		elif golem1_3 != null:
			golem1_3.queue_free()
			is_platform1_3_free = 0
		elif spikes1_3 != null:
			spikes1_3.queue_free()
			is_platform1_3_free = 0

func norm_p2_visible_false():
	$platforms/platform2/Normal_platform1.visible = false
	$platforms/platform2/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform2/Normal_platform2.visible = false
	$platforms/platform2/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform2/Normal_platform3.visible = false
	$platforms/platform2/Normal_platform3.set_collision_layer_value(3, false)

func sand_p2_visible_false():
	$platforms/platform2/Sand_platform1.visible = false
	$platforms/platform2/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform2/Sand_platform2.visible = false
	$platforms/platform2/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform2/Sand_platform3.visible = false
	$platforms/platform2/Sand_platform3.set_collision_layer_value(3, false)

func random_traps2():
	if biome_number == "1":
		platform2_1 = $platforms/platform2/Normal_platform1
		platform2_2 = $platforms/platform2/Normal_platform2
		platform2_3 = $platforms/platform2/Normal_platform3
	elif biome_number == "2":
		platform2_1 = $platforms/platform2/Sand_platform1
		platform2_2 = $platforms/platform2/Sand_platform2
		platform2_3 = $platforms/platform2/Sand_platform3
		norm_p2_visible_false()
	elif biome_number == "3":
		platform2_1 = $platforms/platform2/Rock_platform
		platform2_2 = $platforms/platform2/Rock_platform2
		platform2_3 = $platforms/platform2/Rock_platform3
		norm_p2_visible_false()
		sand_p2_visible_false()
	platform2_1.global_position.x = randf_range(70,257)
	platform2_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform2_1.visible = visible_or_invisible1
	platform2_2.visible = visible_or_invisible2
	platform2_3.visible = false
	platform2_3.set_collision_layer_value(3, false)
	if platform2_1.visible == false:
		platform2_1.set_collision_layer_value(3, false)
		if monster_plant2_1 != null:
			monster_plant2_1.queue_free()
			is_platform2_1_free = 0
		elif sandstorm2_1 != null:
			sandstorm2_1.queue_free()
			is_platform2_1_free = 0
		elif cactus2_1 != null:
			cactus2_1.queue_free()
			is_platform2_1_free = 0
		elif chameleon2_1 != null:
			chameleon2_1.queue_free()
			is_platform2_1_free = 0
		elif golem2_1 != null:
			golem2_1.queue_free()
			is_platform2_1_free = 0
		elif spikes2_1 != null:
			spikes2_1.queue_free()
			is_platform2_1_free = 0
	elif platform2_1.visible == true:
		platform2_1.set_collision_layer_value(3, true)
		if is_platform2_1_free >= 1:
			is_platform2_1_free = 0
			if monster_plant2_1 != null:
				monster_plant2_1.queue_free()
				is_platform2_1_free = 0
			elif sandstorm2_1 != null:
				sandstorm2_1.queue_free()
				is_platform2_1_free = 0
			elif cactus2_1 != null:
				cactus2_1.queue_free()
				is_platform2_1_free = 0
			elif chameleon2_1 != null:
				chameleon2_1.queue_free()
				is_platform2_1_free = 0
			elif golem2_1 != null:
				golem2_1.queue_free()
				is_platform2_1_free = 0
			elif spikes2_1 != null:
				spikes2_1.queue_free()
				is_platform2_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform2_1_free == 0:
				monster_plant2_1 = monster_plant.instantiate()
				platform2_1.add_child(monster_plant2_1)
				monster_plant2_1.position.y -= 70
				is_platform2_1_free += 1
		elif random_t == "sandstorm":
			if is_platform2_1_free == 0:
				sandstorm2_1 = sandstorm.instantiate()
				platform2_1.add_child(sandstorm2_1)
				sandstorm2_1.position.y -= 80
				is_platform2_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform2_1_free == 0:
				cactus2_1 = cactus.instantiate()
				platform2_1.add_child(cactus2_1)
				cactus2_1.position.y -= 80
				is_platform2_1_free += 1
		elif random_t == "chameleon":
			if is_platform2_1_free == 0:
				chameleon2_1 = chameleon.instantiate()
				platform2_1.add_child(chameleon2_1)
				chameleon2_1.position.x += 12
				is_platform2_1_free += 1
		elif random_t == "golem":
			if is_platform2_1_free == 0:
				golem2_1 = golem.instantiate()
				platform2_1.add_child(golem2_1)
				golem2_1.position.y -= 150
				is_platform2_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform2_1_free == 0:
				spikes2_1 = spikes.instantiate()
				platform2_1.add_child(spikes2_1)
				spikes2_1.position.y += 32
				is_platform2_1_free += 1
		elif random_t == "nothing":
			if is_platform2_1_free == 0:
				is_platform2_1_free +=1
	if platform2_2.visible == false:
		platform2_2.set_collision_layer_value(3, false)
		if monster_plant2_2 != null:
			monster_plant2_2.queue_free()
			is_platform2_2_free = 0
		elif sandstorm2_2 != null:
			sandstorm2_2.queue_free()
			is_platform2_2_free = 0
		elif cactus2_2 != null:
			cactus2_2.queue_free()
			is_platform2_2_free = 0
		elif chameleon2_2 != null:
			chameleon2_2.queue_free()
			is_platform2_2_free = 0
		elif golem2_2 != null:
			golem2_2.queue_free()
			is_platform2_2_free = 0
		elif spikes2_2 != null:
			spikes2_2.queue_free()
			is_platform2_2_free = 0
	elif platform2_2.visible == true:
		platform2_2.set_collision_layer_value(3, true)
		if is_platform2_2_free >= 1:
			is_platform2_2_free = 0
			if monster_plant2_2 != null:
				monster_plant2_2.queue_free()
				is_platform2_2_free = 0
			elif sandstorm2_2 != null:
				sandstorm2_2.queue_free()
				is_platform2_2_free = 0
			elif cactus2_2 != null:
				cactus2_2.queue_free()
				is_platform2_2_free = 0
			elif chameleon2_2 != null:
				chameleon2_2.queue_free()
				is_platform2_2_free = 0
			elif golem2_2 != null:
				golem2_2.queue_free()
				is_platform2_2_free = 0
			elif spikes2_2 != null:
				spikes2_2.queue_free()
				is_platform2_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform2_2_free == 0:
				monster_plant2_2 = monster_plant.instantiate()
				platform2_2.add_child(monster_plant2_2)
				monster_plant2_2.position.y -= 70
				is_platform2_2_free += 1
		elif random_t == "sandstorm":
			if is_platform2_2_free == 0:
				sandstorm2_2 = sandstorm.instantiate()
				platform2_2.add_child(sandstorm2_2)
				sandstorm2_2.position.y -= 80
				is_platform2_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform2_2_free == 0:
				cactus2_2 = cactus.instantiate()
				platform2_2.add_child(cactus2_2)
				cactus2_2.position.y -= 80
				is_platform2_2_free += 1
		elif random_t == "chameleon":
			if is_platform2_2_free == 0:
				chameleon2_2 = chameleon.instantiate()
				platform2_2.add_child(chameleon2_2)
				chameleon2_2.position.x += 12
				is_platform2_2_free += 1
		elif random_t == "golem":
			if is_platform2_2_free == 0:
				golem2_2 = golem.instantiate()
				platform2_2.add_child(golem2_2)
				golem2_2.position.y -= 150
				is_platform2_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform2_2_free == 0:
				spikes2_2 = spikes.instantiate()
				platform2_2.add_child(spikes2_2)
				spikes2_2.position.y += 32
				is_platform2_2_free += 1
		elif random_t == "nothing":
			if is_platform2_2_free == 0:
				is_platform2_2_free +=1
	if platform2_1.visible == false and platform2_2.visible == false:
		platform2_3.global_position.x = randf_range(70,570)
		platform2_3.visible = true
		platform2_3.set_collision_layer_value(3, true)
		if is_platform2_3_free >= 1:
			is_platform2_3_free = 0
			if monster_plant2_3 != null:
				monster_plant2_3.queue_free()
				is_platform2_3_free = 0
			elif sandstorm2_3 != null:
				sandstorm2_3.queue_free()
				is_platform2_3_free = 0
			elif cactus2_3 != null:
				cactus2_3.queue_free()
				is_platform2_3_free = 0
			elif chameleon2_3 != null:
				chameleon2_3.queue_free()
				is_platform2_3_free = 0
			elif golem2_3 != null:
				golem2_3.queue_free()
				is_platform2_3_free = 0
			elif spikes2_3 != null:
				spikes2_3.queue_free()
				is_platform2_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform2_3_free == 0:
				monster_plant2_3 = monster_plant.instantiate()
				platform2_3.add_child(monster_plant2_3)
				monster_plant2_3.position.y -= 70
				is_platform2_3_free += 1
		elif random_t == "sandstorm":
			if is_platform2_3_free == 0:
				sandstorm2_3 = sandstorm.instantiate()
				platform2_3.add_child(sandstorm2_3)
				sandstorm2_3.position.y -= 80
				is_platform2_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform2_3_free == 0:
				cactus2_3 = cactus.instantiate()
				platform2_3.add_child(cactus2_3)
				cactus2_3.position.y -= 80
				is_platform2_3_free += 1
		elif random_t == "chameleon":
			if is_platform2_3_free == 0:
				chameleon2_3 = chameleon.instantiate()
				platform2_3.add_child(chameleon2_3)
				chameleon2_3.position.x += 12
				is_platform2_3_free += 1
		elif random_t == "golem":
			if is_platform2_3_free == 0:
				golem2_3 = golem.instantiate()
				platform2_3.add_child(golem2_3)
				golem2_3.position.y -= 150
				is_platform2_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform2_3_free == 0:
				spikes2_3 = spikes.instantiate()
				platform2_3.add_child(spikes2_3)
				spikes2_3.position.y += 32
				is_platform2_3_free += 1
		elif random_t == "nothing":
			if is_platform2_3_free == 0:
				is_platform2_3_free +=1
	if platform2_3.visible == false:
		platform2_3.set_collision_layer_value(3, false)
		if monster_plant2_3 != null:
			monster_plant2_3.queue_free()
			is_platform2_3_free = 0
		elif sandstorm2_3 != null:
			sandstorm2_3.queue_free()
			is_platform2_3_free = 0
		elif cactus2_3 != null:
			cactus2_3.queue_free()
			is_platform2_3_free = 0
		elif chameleon2_3 != null:
			chameleon2_3.queue_free()
			is_platform2_3_free = 0
		elif golem2_3 != null:
			golem2_3.queue_free()
			is_platform2_3_free = 0
		elif spikes2_3 != null:
			spikes2_3.queue_free()
			is_platform2_3_free = 0

func norm_p3_visible_false():
	$platforms/platform3/Normal_platform1.visible = false
	$platforms/platform3/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform3/Normal_platform2.visible = false
	$platforms/platform3/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform3/Normal_platform3.visible = false
	$platforms/platform3/Normal_platform3.set_collision_layer_value(3, false)

func sand_p3_visible_false():
	$platforms/platform3/Sand_platform1.visible = false
	$platforms/platform3/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform3/Sand_platform2.visible = false
	$platforms/platform3/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform3/Sand_platform3.visible = false
	$platforms/platform3/Sand_platform3.set_collision_layer_value(3, false)

func random_traps3():
	if biome_number == "1":
		platform3_1 = $platforms/platform3/Normal_platform1
		platform3_2 = $platforms/platform3/Normal_platform2
		platform3_3 = $platforms/platform3/Normal_platform3
	elif biome_number == "2":
		platform3_1 = $platforms/platform3/Sand_platform1
		platform3_2 = $platforms/platform3/Sand_platform2
		platform3_3 = $platforms/platform3/Sand_platform3
		norm_p3_visible_false()
	elif biome_number == "3":
		platform3_1 = $platforms/platform3/Rock_platform
		platform3_2 = $platforms/platform3/Rock_platform2
		platform3_3 = $platforms/platform3/Rock_platform3
		norm_p3_visible_false()
		sand_p3_visible_false()
	platform3_1.global_position.x = randf_range(70,257)
	platform3_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform3_1.visible = visible_or_invisible1
	platform3_2.visible = visible_or_invisible2
	platform3_3.visible = false
	platform3_3.set_collision_layer_value(3, false)
	if platform3_1.visible == false:
		platform3_1.set_collision_layer_value(3, false)
		if monster_plant3_1 != null:
			monster_plant3_1.queue_free()
			is_platform3_1_free = 0
		elif sandstorm3_1 != null:
			sandstorm3_1.queue_free()
			is_platform3_1_free = 0
		elif cactus3_1 != null:
			cactus3_1.queue_free()
			is_platform3_1_free = 0
		elif chameleon3_1 != null:
			chameleon3_1.queue_free()
			is_platform3_1_free = 0
		elif golem3_1 != null:
			golem3_1.queue_free()
			is_platform3_1_free = 0
		elif spikes3_1 != null:
			spikes3_1.queue_free()
			is_platform3_1_free = 0
	elif platform3_1.visible == true:
		platform3_1.set_collision_layer_value(3, true)
		if is_platform3_1_free >= 1:
			is_platform3_1_free = 0
			if monster_plant3_1 != null:
				monster_plant3_1.queue_free()
				is_platform3_1_free = 0
			elif sandstorm3_1 != null:
				sandstorm3_1.queue_free()
				is_platform3_1_free = 0
			elif cactus3_1 != null:
				cactus3_1.queue_free()
				is_platform3_1_free = 0
			elif chameleon3_1 != null:
				chameleon3_1.queue_free()
				is_platform3_1_free = 0
			elif golem3_1 != null:
				golem3_1.queue_free()
				is_platform3_1_free = 0
			elif spikes3_1 != null:
				spikes3_1.queue_free()
				is_platform3_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform3_1_free == 0:
				monster_plant3_1 = monster_plant.instantiate()
				platform3_1.add_child(monster_plant3_1)
				monster_plant3_1.position.y -= 70
				is_platform3_1_free += 1
		elif random_t == "sandstorm":
			if is_platform3_1_free == 0:
				sandstorm3_1 = sandstorm.instantiate()
				platform3_1.add_child(sandstorm3_1)
				sandstorm3_1.position.y -= 80
				is_platform3_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform3_1_free == 0:
				cactus3_1 = cactus.instantiate()
				platform3_1.add_child(cactus3_1)
				cactus3_1.position.y -= 80
				is_platform3_1_free += 1
		elif random_t == "chameleon":
			if is_platform3_1_free == 0:
				chameleon3_1 = chameleon.instantiate()
				platform3_1.add_child(chameleon3_1)
				chameleon3_1.position.x += 12
				is_platform3_1_free += 1
		elif random_t == "golem":
			if is_platform3_1_free == 0:
				golem3_1 = golem.instantiate()
				platform3_1.add_child(golem3_1)
				golem3_1.position.y -= 150
				is_platform3_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform3_1_free == 0:
				spikes3_1 = spikes.instantiate()
				platform3_1.add_child(spikes3_1)
				spikes3_1.position.y += 32
				is_platform3_1_free += 1
		elif random_t == "nothing":
			if is_platform3_1_free == 0:
				is_platform3_1_free +=1
	if platform3_2.visible == false:
		platform3_2.set_collision_layer_value(3, false)
		if monster_plant3_2 != null:
			monster_plant3_2.queue_free()
			is_platform3_2_free = 0
		elif sandstorm3_2 != null:
			sandstorm3_2.queue_free()
			is_platform3_2_free = 0
		elif cactus3_2 != null:
			cactus3_2.queue_free()
			is_platform3_2_free = 0
		elif chameleon3_2 != null:
			chameleon3_2.queue_free()
			is_platform3_2_free = 0
		elif golem3_2 != null:
			golem3_2.queue_free()
			is_platform3_2_free = 0
		elif spikes3_2 != null:
			spikes3_2.queue_free()
			is_platform3_2_free = 0
	elif platform3_2.visible == true:
		platform3_2.set_collision_layer_value(3, true)
		if is_platform3_2_free >= 1:
			is_platform3_2_free = 0
			if monster_plant3_2 != null:
				monster_plant3_2.queue_free()
				is_platform3_2_free = 0
			elif sandstorm3_2 != null:
				sandstorm3_2.queue_free()
				is_platform3_2_free = 0
			elif cactus3_2 != null:
				cactus3_2.queue_free()
				is_platform3_2_free = 0
			elif chameleon3_2 != null:
				chameleon3_2.queue_free()
				is_platform3_2_free = 0
			elif golem3_2 != null:
				golem3_2.queue_free()
				is_platform3_2_free = 0
			elif spikes3_2 != null:
				spikes3_2.queue_free()
				is_platform3_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform3_2_free == 0:
				monster_plant3_2 = monster_plant.instantiate()
				platform3_2.add_child(monster_plant3_2)
				monster_plant3_2.position.y -= 70
				is_platform3_2_free += 1
		elif random_t == "sandstorm":
			if is_platform3_2_free == 0:
				sandstorm3_2 = sandstorm.instantiate()
				platform3_2.add_child(sandstorm3_2)
				sandstorm3_2.position.y -= 80
				is_platform3_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform3_2_free == 0:
				cactus3_2 = cactus.instantiate()
				platform3_2.add_child(cactus3_2)
				cactus3_2.position.y -= 80
				is_platform3_2_free += 1
		elif random_t == "chameleon":
			if is_platform3_2_free == 0:
				chameleon3_2 = chameleon.instantiate()
				platform3_2.add_child(chameleon3_2)
				chameleon3_2.position.x += 12
				is_platform3_2_free += 1
		elif random_t == "golem":
			if is_platform3_2_free == 0:
				golem3_2 = golem.instantiate()
				platform3_2.add_child(golem3_2)
				golem3_2.position.y -= 150
				is_platform3_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform3_2_free == 0:
				spikes3_2 = spikes.instantiate()
				platform3_2.add_child(spikes3_2)
				spikes3_2.position.y += 32
				is_platform3_2_free += 1
		elif random_t == "nothing":
			if is_platform3_2_free == 0:
				is_platform3_2_free +=1
	if platform3_1.visible == false and platform3_2.visible == false:
		platform3_3.global_position.x = randf_range(70,570)
		platform3_3.visible = true
		platform3_3.set_collision_layer_value(3, true)
		if is_platform3_3_free >= 1:
			is_platform3_3_free = 0
			if monster_plant3_3 != null:
				monster_plant3_3.queue_free()
				is_platform3_3_free = 0
			elif sandstorm3_3 != null:
				sandstorm3_3.queue_free()
				is_platform3_3_free = 0
			elif cactus3_3 != null:
				cactus3_3.queue_free()
				is_platform3_3_free = 0
			elif chameleon3_3 != null:
				chameleon3_3.queue_free()
				is_platform3_3_free = 0
			elif golem3_3 != null:
				golem3_3.queue_free()
				is_platform3_3_free = 0
			elif spikes3_3 != null:
				spikes3_3.queue_free()
				is_platform3_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform3_3_free == 0:
				monster_plant3_3 = monster_plant.instantiate()
				platform3_3.add_child(monster_plant3_3)
				monster_plant3_3.position.y -= 70
				is_platform3_3_free += 1
		elif random_t == "sandstorm":
			if is_platform3_3_free == 0:
				sandstorm3_3 = sandstorm.instantiate()
				platform3_3.add_child(sandstorm3_3)
				sandstorm3_3.position.y -= 80
				is_platform3_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform3_3_free == 0:
				cactus3_3 = cactus.instantiate()
				platform3_3.add_child(cactus3_3)
				cactus3_3.position.y -= 80
				is_platform3_3_free += 1
		elif random_t == "chameleon":
			if is_platform3_3_free == 0:
				chameleon3_3 = chameleon.instantiate()
				platform3_3.add_child(chameleon3_3)
				chameleon3_3.position.x += 12
				is_platform3_3_free += 1
		elif random_t == "golem":
			if is_platform3_3_free == 0:
				golem3_3 = golem.instantiate()
				platform3_3.add_child(golem3_3)
				golem3_3.position.y -= 150
				is_platform3_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform3_3_free == 0:
				spikes3_3 = spikes.instantiate()
				platform3_3.add_child(spikes3_3)
				spikes3_3.position.y += 32
				is_platform3_3_free += 1
		elif random_t == "nothing":
			if is_platform3_3_free == 0:
				is_platform3_3_free +=1
	if platform3_3.visible == false:
		platform3_3.set_collision_layer_value(3, false)
		if monster_plant3_3 != null:
			monster_plant3_3.queue_free()
			is_platform3_3_free = 0
		elif sandstorm3_3 != null:
			sandstorm3_3.queue_free()
			is_platform3_3_free = 0
		elif cactus3_3 != null:
			cactus3_3.queue_free()
			is_platform3_3_free = 0
		elif chameleon3_3 != null:
			chameleon3_3.queue_free()
			is_platform3_3_free = 0
		elif golem3_3 != null:
			golem3_3.queue_free()
			is_platform3_3_free = 0
		elif spikes3_3 != null:
			spikes3_3.queue_free()
			is_platform3_3_free = 0

func norm_p4_visible_false():
	$platforms/platform4/Normal_platform1.visible = false
	$platforms/platform4/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform4/Normal_platform2.visible = false
	$platforms/platform4/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform4/Normal_platform3.visible = false
	$platforms/platform4/Normal_platform3.set_collision_layer_value(3, false)

func sand_p4_visible_false():
	$platforms/platform4/Sand_platform1.visible = false
	$platforms/platform4/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform4/Sand_platform2.visible = false
	$platforms/platform4/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform4/Sand_platform3.visible = false
	$platforms/platform4/Sand_platform3.set_collision_layer_value(3, false)

func random_traps4():
	if biome_number == "1":
		platform4_1 = $platforms/platform4/Normal_platform1
		platform4_2 = $platforms/platform4/Normal_platform2
		platform4_3 = $platforms/platform4/Normal_platform3
	elif biome_number == "2":
		platform4_1 = $platforms/platform4/Sand_platform1
		platform4_2 = $platforms/platform4/Sand_platform2
		platform4_3 = $platforms/platform4/Sand_platform3
		norm_p4_visible_false()
	elif biome_number == "3":
		platform4_1 = $platforms/platform4/Rock_platform
		platform4_2 = $platforms/platform4/Rock_platform2
		platform4_3 = $platforms/platform4/Rock_platform3
		norm_p4_visible_false()
		sand_p4_visible_false()
		
	platform4_1.global_position.x = randf_range(70,257)
	platform4_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform4_1.visible = visible_or_invisible1
	platform4_2.visible = visible_or_invisible2
	platform4_3.visible = false
	platform4_3.set_collision_layer_value(3, false)
	if platform4_1.visible == false:
		platform4_1.set_collision_layer_value(3, false)
		if monster_plant4_1 != null:
			monster_plant4_1.queue_free()
			is_platform4_1_free = 0
		elif sandstorm4_1 != null:
			sandstorm4_1.queue_free()
			is_platform4_1_free = 0
		elif cactus4_1 != null:
			cactus4_1.queue_free()
			is_platform4_1_free = 0
		elif chameleon4_1 != null:
			chameleon4_1.queue_free()
			is_platform4_1_free = 0
		elif golem4_1 != null:
			golem4_1.queue_free()
			is_platform4_1_free = 0
		elif spikes4_1 != null:
			spikes4_1.queue_free()
			is_platform4_1_free = 0
	elif platform4_1.visible == true:
		platform4_1.set_collision_layer_value(3, true)
		if is_platform4_1_free >= 1:
			is_platform4_1_free = 0
			if monster_plant4_1 != null:
				monster_plant4_1.queue_free()
				is_platform4_1_free = 0
			elif sandstorm4_1 != null:
				sandstorm4_1.queue_free()
				is_platform4_1_free = 0
			elif cactus4_1 != null:
				cactus4_1.queue_free()
				is_platform4_1_free = 0
			elif chameleon4_1 != null:
				chameleon4_1.queue_free()
				is_platform4_1_free = 0
			elif golem4_1 != null:
				golem4_1.queue_free()
				is_platform4_1_free = 0
			elif spikes4_1 != null:
				spikes4_1.queue_free()
				is_platform4_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform4_1_free == 0:
				monster_plant4_1 = monster_plant.instantiate()
				platform4_1.add_child(monster_plant4_1)
				monster_plant4_1.position.y -= 70
				is_platform4_1_free += 1
		elif random_t == "sandstorm":
			if is_platform4_1_free == 0:
				sandstorm4_1 = sandstorm.instantiate()
				platform4_1.add_child(sandstorm4_1)
				sandstorm4_1.position.y -= 80
				is_platform4_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform4_1_free == 0:
				cactus4_1 = cactus.instantiate()
				platform4_1.add_child(cactus4_1)
				cactus4_1.position.y -= 80
				is_platform4_1_free += 1
		elif random_t == "chameleon":
			if is_platform4_1_free == 0:
				chameleon4_1 = chameleon.instantiate()
				platform4_1.add_child(chameleon4_1)
				chameleon4_1.position.x += 12
				is_platform4_1_free += 1
		elif random_t == "golem":
			if is_platform4_1_free == 0:
				golem4_1 = golem.instantiate()
				platform4_1.add_child(golem4_1)
				golem4_1.position.y -= 150
				is_platform4_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform4_1_free == 0:
				spikes4_1 = spikes.instantiate()
				platform4_1.add_child(spikes4_1)
				spikes4_1.position.y += 32
				is_platform4_1_free += 1
		elif random_t == "nothing":
			if is_platform4_1_free == 0:
				is_platform4_1_free += 1
	if platform4_2.visible == false:
		platform4_2.set_collision_layer_value(3, false)
		if monster_plant4_2 != null:
			monster_plant4_2.queue_free()
			is_platform4_2_free = 0
		elif sandstorm4_2 != null:
			sandstorm4_2.queue_free()
			is_platform4_2_free = 0
		elif cactus4_2 != null:
			cactus4_2.queue_free()
			is_platform4_2_free = 0
		elif chameleon4_2 != null:
			chameleon4_2.queue_free()
			is_platform4_2_free = 0
		elif golem4_2 != null:
			golem4_2.queue_free()
			is_platform4_2_free = 0
		elif spikes4_2 != null:
			spikes4_2.queue_free()
			is_platform4_2_free = 0
	elif platform4_2.visible == true:
		platform4_2.set_collision_layer_value(3, true)
		if is_platform4_2_free >= 1:
			is_platform4_2_free = 0
			if monster_plant4_2 != null:
				monster_plant4_2.queue_free()
				is_platform4_2_free = 0
			elif sandstorm4_2 != null:
				sandstorm4_2.queue_free()
				is_platform4_2_free = 0
			elif cactus4_2 != null:
				cactus4_2.queue_free()
				is_platform4_2_free = 0
			elif chameleon4_2 != null:
				chameleon4_2.queue_free()
				is_platform4_2_free = 0
			elif golem4_2 != null:
				golem4_2.queue_free()
				is_platform4_2_free = 0
			elif spikes4_2 != null:
				spikes4_2.queue_free()
				is_platform4_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform4_2_free == 0:
				monster_plant4_2 = monster_plant.instantiate()
				platform4_2.add_child(monster_plant4_2)
				monster_plant4_2.position.y -= 70
				is_platform4_2_free += 1
		elif random_t == "sandstorm":
			if is_platform4_2_free == 0:
				sandstorm4_2 = sandstorm.instantiate()
				platform4_2.add_child(sandstorm4_2)
				sandstorm4_2.position.y -= 80
				is_platform4_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform4_2_free == 0:
				cactus4_2 = cactus.instantiate()
				platform4_2.add_child(cactus4_2)
				cactus4_2.position.y -= 80
				is_platform4_2_free += 1
		elif random_t == "chameleon":
			if is_platform4_2_free == 0:
				chameleon4_2 = chameleon.instantiate()
				platform4_2.add_child(chameleon4_2)
				chameleon4_2.position.x += 12
				is_platform4_2_free += 1
		elif random_t == "golem":
			if is_platform4_2_free == 0:
				golem4_2 = golem.instantiate()
				platform4_2.add_child(golem4_2)
				golem4_2.position.y -= 150
				is_platform4_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform4_2_free == 0:
				spikes4_2 = spikes.instantiate()
				platform4_2.add_child(spikes4_2)
				spikes4_2.position.y += 32
				is_platform4_2_free += 1
		elif random_t == "nothing":
			if is_platform4_2_free == 0:
				is_platform4_2_free +=1
	if platform4_1.visible == false and platform4_2.visible == false:
		platform4_3.global_position.x = randf_range(70,570)
		platform4_3.visible = true
		platform4_3.set_collision_layer_value(3, true)
		if is_platform4_3_free >= 1:
			is_platform4_3_free = 0
			if monster_plant4_3 != null:
				monster_plant4_3.queue_free()
				is_platform4_3_free = 0
			elif sandstorm4_3 != null:
				sandstorm4_3.queue_free()
				is_platform4_3_free = 0
			elif cactus4_3 != null:
				cactus4_3.queue_free()
				is_platform4_3_free = 0
			elif chameleon4_3 != null:
				chameleon4_3.queue_free()
				is_platform4_3_free = 0
			elif golem4_3 != null:
				golem4_3.queue_free()
				is_platform4_3_free = 0
			elif spikes4_3 != null:
				spikes4_3.queue_free()
				is_platform4_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform4_3_free == 0:
				monster_plant4_3 = monster_plant.instantiate()
				platform4_3.add_child(monster_plant4_3)
				monster_plant4_3.position.y -= 70
				is_platform4_3_free += 1
		elif random_t == "sandstorm":
			if is_platform4_3_free == 0:
				sandstorm4_3 = sandstorm.instantiate()
				platform4_3.add_child(sandstorm4_3)
				sandstorm4_3.position.y -= 80
				is_platform4_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform4_3_free == 0:
				cactus4_3 = cactus.instantiate()
				platform4_3.add_child(cactus4_3)
				cactus4_3.position.y -= 80
				is_platform4_3_free += 1
		elif random_t == "chameleon":
			if is_platform4_3_free == 0:
				chameleon4_3 = chameleon.instantiate()
				platform4_3.add_child(chameleon4_3)
				chameleon4_3.position.x += 12
				is_platform4_3_free += 1
		elif random_t == "golem":
			if is_platform4_3_free == 0:
				golem4_3 = golem.instantiate()
				platform4_3.add_child(golem4_3)
				golem4_3.position.y -= 150
				is_platform4_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform4_3_free == 0:
				spikes4_3 = spikes.instantiate()
				platform4_3.add_child(spikes4_3)
				spikes4_3.position.y += 32
				is_platform4_3_free += 1
		elif random_t == "nothing":
			if is_platform4_3_free == 0:
				is_platform4_3_free +=1
	if platform4_3.visible == false:
		platform4_3.set_collision_layer_value(3, false)
		if monster_plant4_3 != null:
			monster_plant4_3.queue_free()
			is_platform4_3_free = 0
		elif sandstorm4_3 != null:
			sandstorm4_3.queue_free()
			is_platform4_3_free = 0
		elif cactus4_3 != null:
			cactus4_3.queue_free()
			is_platform4_3_free = 0
		elif chameleon4_3 != null:
			chameleon4_3.queue_free()
			is_platform4_3_free = 0
		elif golem4_3 != null:
			golem4_3.queue_free()
			is_platform4_3_free = 0
		elif spikes4_3 != null:
			spikes4_3.queue_free()
			is_platform4_3_free = 0

func norm_p5_visible_false():
	$platforms/platform5/Normal_platform1.visible = false
	$platforms/platform5/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform5/Normal_platform2.visible = false
	$platforms/platform5/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform5/Normal_platform3.visible = false
	$platforms/platform5/Normal_platform3.set_collision_layer_value(3, false)

func sand_p5_visible_false():
	$platforms/platform5/Sand_platform1.visible = false
	$platforms/platform5/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform5/Sand_platform2.visible = false
	$platforms/platform5/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform5/Sand_platform3.visible = false
	$platforms/platform5/Sand_platform3.set_collision_layer_value(3, false)

func random_traps5():
	if biome_number == "1":
		platform5_1 = $platforms/platform5/Normal_platform1
		platform5_2 = $platforms/platform5/Normal_platform2
		platform5_3 = $platforms/platform5/Normal_platform3
	elif biome_number == "2":
		platform5_1 = $platforms/platform5/Sand_platform1
		platform5_2 = $platforms/platform5/Sand_platform2
		platform5_3 = $platforms/platform5/Sand_platform3
		norm_p5_visible_false()
	elif biome_number == "3":
		platform5_1 = $platforms/platform5/Rock_platform
		platform5_2 = $platforms/platform5/Rock_platform2
		platform5_3 = $platforms/platform5/Rock_platform3
		norm_p5_visible_false()
		sand_p5_visible_false()
	platform5_1.global_position.x = randf_range(70,257)
	platform5_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform5_1.visible = visible_or_invisible1
	platform5_2.visible = visible_or_invisible2
	platform5_3.visible = false
	platform5_3.set_collision_layer_value(3, false)
	if platform5_1.visible == false:
		platform5_1.set_collision_layer_value(3, false)
		if monster_plant5_1 != null:
			monster_plant5_1.queue_free()
			is_platform5_1_free = 0
		elif sandstorm5_1 != null:
			sandstorm5_1.queue_free()
			is_platform5_1_free = 0
		elif cactus5_1 != null:
			cactus5_1.queue_free()
			is_platform5_1_free = 0
		elif chameleon5_1 != null:
			chameleon5_1.queue_free()
			is_platform5_1_free = 0
		elif golem5_1 != null:
			golem5_1.queue_free()
			is_platform5_1_free = 0
		elif spikes5_1 != null:
			spikes5_1.queue_free()
			is_platform5_1_free = 0
	elif platform5_1.visible == true:
		platform5_1.set_collision_layer_value(3, true)
		if is_platform5_1_free >= 1:
			is_platform5_1_free = 0
			if monster_plant5_1 != null:
				monster_plant5_1.queue_free()
				is_platform5_1_free = 0
			elif sandstorm5_1 != null:
				sandstorm5_1.queue_free()
				is_platform5_1_free = 0
			elif cactus5_1 != null:
				cactus5_1.queue_free()
				is_platform5_1_free = 0
			elif chameleon5_1 != null:
				chameleon5_1.queue_free()
				is_platform5_1_free = 0
			elif golem5_1 != null:
				golem5_1.queue_free()
				is_platform5_1_free = 0
			elif spikes5_1 != null:
				spikes5_1.queue_free()
				is_platform5_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform5_1_free == 0:
				monster_plant5_1 = monster_plant.instantiate()
				platform5_1.add_child(monster_plant5_1)
				monster_plant5_1.position.y -= 70
				is_platform5_1_free += 1
		elif random_t == "sandstorm":
			if is_platform5_1_free == 0:
				sandstorm5_1 = sandstorm.instantiate()
				platform5_1.add_child(sandstorm5_1)
				sandstorm5_1.position.y -= 80
				is_platform5_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform5_1_free == 0:
				cactus5_1 = cactus.instantiate()
				platform5_1.add_child(cactus5_1)
				cactus5_1.position.y -= 80
				is_platform5_1_free += 1
		elif random_t == "chameleon":
			if is_platform5_1_free == 0:
				chameleon5_1 = chameleon.instantiate()
				platform5_1.add_child(chameleon5_1)
				chameleon5_1.position.x += 12
				is_platform5_1_free += 1
		elif random_t == "golem":
			if is_platform5_1_free == 0:
				golem5_1 = golem.instantiate()
				platform5_1.add_child(golem5_1)
				golem5_1.position.y -= 150
				is_platform5_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform5_1_free == 0:
				spikes5_1 = spikes.instantiate()
				platform5_1.add_child(spikes5_1)
				spikes5_1.position.y += 32
				is_platform5_1_free += 1
		elif random_t == "nothing":
			if is_platform5_1_free == 0:
				is_platform5_1_free +=1
	if platform5_2.visible == false:
		platform5_2.set_collision_layer_value(3, false)
		if monster_plant5_2 != null:
			monster_plant5_2.queue_free()
			is_platform5_2_free = 0
		elif sandstorm5_2 != null:
			sandstorm5_2.queue_free()
			is_platform5_2_free = 0
		elif cactus5_2 != null:
			cactus5_2.queue_free()
			is_platform5_2_free = 0
		elif chameleon5_2 != null:
			chameleon5_2.queue_free()
			is_platform5_2_free = 0
		elif golem5_2 != null:
			golem5_2.queue_free()
			is_platform5_2_free = 0
		elif spikes5_2 != null:
			spikes5_2.queue_free()
			is_platform5_2_free = 0
	elif platform5_2.visible == true:
		platform5_2.set_collision_layer_value(3, true)
		if is_platform5_2_free >= 1:
			is_platform5_2_free = 0
			if monster_plant5_2 != null:
				monster_plant5_2.queue_free()
				is_platform5_2_free = 0
			elif sandstorm5_2 != null:
				sandstorm5_2.queue_free()
				is_platform5_2_free = 0
			elif cactus5_2 != null:
				cactus5_2.queue_free()
				is_platform5_2_free = 0
			elif chameleon5_2 != null:
				chameleon5_2.queue_free()
				is_platform5_2_free = 0
			elif golem5_2 != null:
				golem5_2.queue_free()
				is_platform5_2_free = 0
			elif spikes5_2 != null:
				spikes5_2.queue_free()
				is_platform5_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform5_2_free == 0:
				monster_plant5_2 = monster_plant.instantiate()
				platform5_2.add_child(monster_plant5_2)
				monster_plant5_2.position.y -= 70
				is_platform5_2_free += 1
		elif random_t == "sandstorm":
			if is_platform5_2_free == 0:
				sandstorm5_2 = sandstorm.instantiate()
				platform5_2.add_child(sandstorm5_2)
				sandstorm5_2.position.y -= 80
				is_platform5_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform5_2_free == 0:
				cactus5_2 = cactus.instantiate()
				platform5_2.add_child(cactus5_2)
				cactus5_2.position.y -= 80
				is_platform5_2_free += 1
		elif random_t == "chameleon":
			if is_platform5_2_free == 0:
				chameleon5_2 = chameleon.instantiate()
				platform5_2.add_child(chameleon5_2)
				chameleon5_2.position.x += 12
				is_platform5_2_free += 1
		elif random_t == "golem":
			if is_platform5_2_free == 0:
				golem5_2 = golem.instantiate()
				platform5_2.add_child(golem5_2)
				golem5_2.position.y -= 150
				is_platform5_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform5_2_free == 0:
				spikes5_2 = spikes.instantiate()
				platform5_2.add_child(spikes5_2)
				spikes5_2.position.y += 32
				is_platform5_2_free += 1
		elif random_t == "nothing":
			if is_platform5_2_free == 0:
				is_platform5_2_free +=1
	if platform5_1.visible == false and platform5_2.visible == false:
		platform5_3.global_position.x = randf_range(70,570)
		platform5_3.visible = true
		platform5_3.set_collision_layer_value(3, true)
		if is_platform5_3_free >= 1:
			is_platform5_3_free = 0
			if monster_plant5_3 != null:
				monster_plant5_3.queue_free()
				is_platform5_3_free = 0
			elif sandstorm5_3 != null:
				sandstorm5_3.queue_free()
				is_platform5_3_free = 0
			elif cactus5_3 != null:
				cactus5_3.queue_free()
				is_platform5_3_free = 0
			elif chameleon5_3 != null:
				chameleon5_3.queue_free()
				is_platform5_3_free = 0
			elif golem5_3 != null:
				golem5_3.queue_free()
				is_platform5_3_free = 0
			elif spikes5_3 != null:
				spikes5_3.queue_free()
				is_platform5_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform5_3_free == 0:
				monster_plant5_3 = monster_plant.instantiate()
				platform5_3.add_child(monster_plant5_3)
				monster_plant5_3.position.y -= 70
				is_platform5_3_free += 1
		elif random_t == "sandstorm":
			if is_platform5_3_free == 0:
				sandstorm5_3 = sandstorm.instantiate()
				platform5_3.add_child(sandstorm5_3)
				sandstorm5_3.position.y -= 80
				is_platform5_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform5_3_free == 0:
				cactus5_3 = cactus.instantiate()
				platform5_3.add_child(cactus5_3)
				cactus5_3.position.y -= 80
				is_platform5_3_free += 1
		elif random_t == "chameleon":
			if is_platform5_3_free == 0:
				chameleon5_3 = chameleon.instantiate()
				platform5_3.add_child(chameleon5_3)
				chameleon5_3.position.x += 12
				is_platform5_3_free += 1
		elif random_t == "golem":
			if is_platform5_3_free == 0:
				golem5_3 = golem.instantiate()
				platform5_3.add_child(golem5_3)
				golem5_3.position.y -= 150
				is_platform5_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform5_3_free == 0:
				spikes5_3 = spikes.instantiate()
				platform5_3.add_child(spikes5_3)
				spikes5_3.position.y += 32
				is_platform5_3_free += 1
		elif random_t == "nothing":
			if is_platform5_3_free == 0:
				is_platform5_3_free +=1
	if platform5_3.visible == false:
		platform5_3.set_collision_layer_value(3, false)
		if monster_plant5_3 != null:
			monster_plant5_3.queue_free()
			is_platform5_3_free = 0
		elif sandstorm5_3 != null:
			sandstorm5_3.queue_free()
			is_platform5_3_free = 0
		elif cactus5_3 != null:
			cactus5_3.queue_free()
			is_platform5_3_free = 0
		elif chameleon5_3 != null:
			chameleon5_3.queue_free()
			is_platform5_3_free = 0
		elif golem5_3 != null:
			golem5_3.queue_free()
			is_platform5_3_free = 0
		elif spikes5_3 != null:
			spikes5_3.queue_free()
			is_platform5_3_free = 0

func norm_p6_visible_false():
	$platforms/platform6/Normal_platform1.visible = false
	$platforms/platform6/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform6/Normal_platform2.visible = false
	$platforms/platform6/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform6/Normal_platform3.visible = false
	$platforms/platform6/Normal_platform3.set_collision_layer_value(3, false)

func sand_p6_visible_false():
	$platforms/platform6/Sand_platform1.visible = false
	$platforms/platform6/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform6/Sand_platform2.visible = false
	$platforms/platform6/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform6/Sand_platform3.visible = false
	$platforms/platform6/Sand_platform3.set_collision_layer_value(3, false)

func random_traps6():
	if biome_number == "1":
		platform6_1 = $platforms/platform6/Normal_platform1
		platform6_2 = $platforms/platform6/Normal_platform2
		platform6_3 = $platforms/platform6/Normal_platform3
	elif biome_number == "2":
		platform6_1 = $platforms/platform6/Sand_platform1
		platform6_2 = $platforms/platform6/Sand_platform2
		platform6_3 = $platforms/platform6/Sand_platform3
		norm_p6_visible_false()
	elif biome_number == "3":
		platform6_1 = $platforms/platform6/Rock_platform
		platform6_2 = $platforms/platform6/Rock_platform2
		platform6_3 = $platforms/platform6/Rock_platform3
		norm_p6_visible_false()
		sand_p6_visible_false()
	platform6_1.global_position.x = randf_range(70,257)
	platform6_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform6_1.visible = visible_or_invisible1
	platform6_2.visible = visible_or_invisible2
	platform6_3.visible = false
	platform6_3.set_collision_layer_value(3, false)
	if platform6_1.visible == false:
		platform6_1.set_collision_layer_value(3, false)
		if monster_plant6_1 != null:
			monster_plant6_1.queue_free()
			is_platform6_1_free = 0
		elif sandstorm6_1 != null:
			sandstorm6_1.queue_free()
			is_platform6_1_free = 0
		elif cactus6_1 != null:
			cactus6_1.queue_free()
			is_platform6_1_free = 0
		elif chameleon6_1 != null:
			chameleon6_1.queue_free()
			is_platform6_1_free = 0
		elif golem6_1 != null:
			golem6_1.queue_free()
			is_platform6_1_free = 0
		elif spikes6_1 != null:
			spikes6_1.queue_free()
			is_platform6_1_free = 0
	elif platform6_1.visible == true:
		platform6_1.set_collision_layer_value(3, true)
		if is_platform6_1_free >= 1:
			is_platform6_1_free = 0
			if monster_plant6_1 != null:
				monster_plant6_1.queue_free()
				is_platform6_1_free = 0
			elif sandstorm6_1 != null:
				sandstorm6_1.queue_free()
				is_platform6_1_free = 0
			elif cactus6_1 != null:
				cactus6_1.queue_free()
				is_platform6_1_free = 0
			elif chameleon6_1 != null:
				chameleon6_1.queue_free()
				is_platform6_1_free = 0
			elif golem6_1 != null:
				golem6_1.queue_free()
				is_platform6_1_free = 0
			elif spikes6_1 != null:
				spikes6_1.queue_free()
				is_platform6_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform6_1_free == 0:
				monster_plant6_1 = monster_plant.instantiate()
				platform6_1.add_child(monster_plant6_1)
				monster_plant6_1.position.y -= 70
				is_platform6_1_free += 1
		elif random_t == "sandstorm":
			if is_platform6_1_free == 0:
				sandstorm6_1 = sandstorm.instantiate()
				platform6_1.add_child(sandstorm6_1)
				sandstorm6_1.position.y -= 80
				is_platform6_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform6_1_free == 0:
				cactus6_1 = cactus.instantiate()
				platform6_1.add_child(cactus6_1)
				cactus6_1.position.y -= 80
				is_platform6_1_free += 1
		elif random_t == "chameleon":
			if is_platform6_1_free == 0:
				chameleon6_1 = chameleon.instantiate()
				platform6_1.add_child(chameleon6_1)
				chameleon6_1.position.x += 12
				is_platform6_1_free += 1
		elif random_t == "golem":
			if is_platform6_1_free == 0:
				golem6_1 = golem.instantiate()
				platform6_1.add_child(golem6_1)
				golem6_1.position.y -= 150
				is_platform6_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform6_1_free == 0:
				spikes6_1 = spikes.instantiate()
				platform6_1.add_child(spikes6_1)
				spikes6_1.position.y += 32
				is_platform6_1_free += 1
		elif random_t == "nothing":
			if is_platform6_1_free == 0:
				is_platform6_1_free +=1
	if platform6_2.visible == false:
		platform6_2.set_collision_layer_value(3, false)
		if monster_plant6_2 != null:
			monster_plant6_2.queue_free()
			is_platform6_2_free = 0
		elif sandstorm6_2 != null:
			sandstorm6_2.queue_free()
			is_platform6_2_free = 0
		elif cactus6_2 != null:
			cactus6_2.queue_free()
			is_platform6_2_free = 0
		elif chameleon6_2 != null:
			chameleon6_2.queue_free()
			is_platform6_2_free = 0
		elif golem6_2 != null:
			golem6_2.queue_free()
			is_platform6_2_free = 0
		elif spikes6_2 != null:
			spikes6_2.queue_free()
			is_platform6_2_free = 0
	elif platform6_2.visible == true:
		platform6_2.set_collision_layer_value(3, true)
		if is_platform6_2_free >= 1:
			is_platform6_2_free = 0
			if monster_plant6_2 != null:
				monster_plant6_2.queue_free()
				is_platform6_2_free = 0
			elif sandstorm6_2 != null:
				sandstorm6_2.queue_free()
				is_platform6_2_free = 0
			elif cactus6_2 != null:
				cactus6_2.queue_free()
				is_platform6_2_free = 0
			elif chameleon6_2 != null:
				chameleon6_2.queue_free()
				is_platform6_2_free = 0
			elif golem6_2 != null:
				golem6_2.queue_free()
				is_platform6_2_free = 0
			elif spikes6_2 != null:
				spikes6_2.queue_free()
				is_platform6_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform6_2_free == 0:
				monster_plant6_2 = monster_plant.instantiate()
				platform6_2.add_child(monster_plant6_2)
				monster_plant6_2.position.y -= 70
				is_platform6_2_free += 1
		elif random_t == "sandstorm":
			if is_platform6_2_free == 0:
				sandstorm6_2 = sandstorm.instantiate()
				platform6_2.add_child(sandstorm6_2)
				sandstorm6_2.position.y -= 80
				is_platform6_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform6_2_free == 0:
				cactus6_2 = cactus.instantiate()
				platform6_2.add_child(cactus6_2)
				cactus6_2.position.y -= 80
				is_platform6_2_free += 1
		elif random_t == "chameleon":
			if is_platform6_2_free == 0:
				chameleon6_2 = chameleon.instantiate()
				platform6_2.add_child(chameleon6_2)
				chameleon6_2.position.x += 12
				is_platform6_2_free += 1
		elif random_t == "golem":
			if is_platform6_2_free == 0:
				golem6_2 = golem.instantiate()
				platform6_2.add_child(golem6_2)
				golem6_2.position.y -= 150
				is_platform6_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform6_2_free == 0:
				spikes6_2 = spikes.instantiate()
				platform6_2.add_child(spikes6_2)
				spikes6_2.position.y += 32
				is_platform6_2_free += 1
		elif random_t == "nothing":
			if is_platform6_2_free == 0:
				is_platform6_2_free +=1
	if platform6_1.visible == false and platform6_2.visible == false:
		platform6_3.global_position.x = randf_range(70,570)
		platform6_3.visible = true
		platform6_3.set_collision_layer_value(3, true)
		if is_platform6_3_free >= 1:
			is_platform6_3_free = 0
			if monster_plant6_3 != null:
				monster_plant6_3.queue_free()
				is_platform6_3_free = 0
			elif sandstorm6_3 != null:
				sandstorm6_3.queue_free()
				is_platform6_3_free = 0
			elif cactus6_3 != null:
				cactus6_3.queue_free()
				is_platform6_3_free = 0
			elif chameleon6_3 != null:
				chameleon6_3.queue_free()
				is_platform6_3_free = 0
			elif golem6_3 != null:
				golem6_3.queue_free()
				is_platform6_3_free = 0
			elif spikes6_3 != null:
				spikes6_3.queue_free()
				is_platform6_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform6_3_free == 0:
				monster_plant6_3 = monster_plant.instantiate()
				platform6_3.add_child(monster_plant6_3)
				monster_plant6_3.position.y -= 70
				is_platform6_3_free += 1
		elif random_t == "sandstorm":
			if is_platform6_3_free == 0:
				sandstorm6_3 = sandstorm.instantiate()
				platform6_3.add_child(sandstorm6_3)
				sandstorm6_3.position.y -= 80
				is_platform6_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform6_3_free == 0:
				cactus6_3 = cactus.instantiate()
				platform6_3.add_child(cactus6_3)
				cactus6_3.position.y -= 80
				is_platform6_3_free += 1
		elif random_t == "chameleon":
			if is_platform6_3_free == 0:
				chameleon6_3 = chameleon.instantiate()
				platform6_3.add_child(chameleon6_3)
				chameleon6_3.position.x += 12
				is_platform6_3_free += 1
		elif random_t == "golem":
			if is_platform6_3_free == 0:
				golem6_3 = golem.instantiate()
				platform6_3.add_child(golem6_3)
				golem6_3.position.y -= 150
				is_platform6_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform6_3_free == 0:
				spikes6_3 = spikes.instantiate()
				platform6_3.add_child(spikes6_3)
				spikes6_3.position.y += 32
				is_platform6_3_free += 1
		elif random_t == "nothing":
			if is_platform6_3_free == 0:
				is_platform6_3_free +=1
	if platform6_3.visible == false:
		platform6_3.set_collision_layer_value(3, false)
		if monster_plant6_3 != null:
			monster_plant6_3.queue_free()
			is_platform6_3_free = 0
		elif sandstorm6_3 != null:
			sandstorm6_3.queue_free()
			is_platform6_3_free = 0
		elif cactus6_3 != null:
			cactus6_3.queue_free()
			is_platform6_3_free = 0
		elif chameleon6_3 != null:
			chameleon6_3.queue_free()
			is_platform6_3_free = 0
		elif golem6_3 != null:
			golem6_3.queue_free()
			is_platform6_3_free = 0
		elif spikes6_3 != null:
			spikes6_3.queue_free()
			is_platform6_3_free = 0

func norm_p7_visible_false():
	$platforms/platform7/Normal_platform1.visible = false
	$platforms/platform7/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform7/Normal_platform2.visible = false
	$platforms/platform7/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform7/Normal_platform3.visible = false
	$platforms/platform7/Normal_platform3.set_collision_layer_value(3, false)

func sand_p7_visible_false():
	$platforms/platform7/Sand_platform1.visible = false
	$platforms/platform7/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform7/Sand_platform2.visible = false
	$platforms/platform7/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform7/Sand_platform3.visible = false
	$platforms/platform7/Sand_platform3.set_collision_layer_value(3, false)

func random_traps7():
	if biome_number == "1":
		platform7_1 = $platforms/platform7/Normal_platform1
		platform7_2 = $platforms/platform7/Normal_platform2
		platform7_3 = $platforms/platform7/Normal_platform3
	elif biome_number == "2":
		platform7_1 = $platforms/platform7/Sand_platform1
		platform7_2 = $platforms/platform7/Sand_platform2
		platform7_3 = $platforms/platform7/Sand_platform3
		norm_p7_visible_false()
	elif biome_number == "3":
		platform7_1 = $platforms/platform7/Rock_platform
		platform7_2 = $platforms/platform7/Rock_platform2
		platform7_3 = $platforms/platform7/Rock_platform3
		norm_p7_visible_false()
		sand_p7_visible_false()
	platform7_1.global_position.x = randf_range(70,257)
	platform7_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform7_1.visible = visible_or_invisible1
	platform7_2.visible = visible_or_invisible2
	platform7_3.visible = false
	platform7_3.set_collision_layer_value(3, false)
	if platform7_1.visible == false:
		platform7_1.set_collision_layer_value(3, false)
		if monster_plant7_1 != null:
			monster_plant7_1.queue_free()
			is_platform7_1_free = 0
		elif sandstorm7_1 != null:
			sandstorm7_1.queue_free()
			is_platform7_1_free = 0
		elif cactus7_1 != null:
			cactus7_1.queue_free()
			is_platform7_1_free = 0
		elif chameleon7_1 != null:
			chameleon7_1.queue_free()
			is_platform7_1_free = 0
		elif golem7_1 != null:
			golem7_1.queue_free()
			is_platform7_1_free = 0
		elif spikes7_1 != null:
			spikes7_1.queue_free()
			is_platform7_1_free = 0
	elif platform7_1.visible == true:
		platform7_1.set_collision_layer_value(3, true)
		if is_platform7_1_free >= 1:
			is_platform7_1_free = 0
			if monster_plant7_1 != null:
				monster_plant7_1.queue_free()
				is_platform7_1_free = 0
			elif sandstorm7_1 != null:
				sandstorm7_1.queue_free()
				is_platform7_1_free = 0
			elif cactus7_1 != null:
				cactus7_1.queue_free()
				is_platform7_1_free = 0
			elif chameleon7_1 != null:
				chameleon7_1.queue_free()
				is_platform7_1_free = 0
			elif golem7_1 != null:
				golem7_1.queue_free()
				is_platform7_1_free = 0
			elif spikes7_1 != null:
				spikes7_1.queue_free()
				is_platform7_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform7_1_free == 0:
				monster_plant7_1 = monster_plant.instantiate()
				platform7_1.add_child(monster_plant7_1)
				monster_plant7_1.position.y -= 70
				is_platform7_1_free += 1
		elif random_t == "sandstorm":
			if is_platform7_1_free == 0:
				sandstorm7_1 = sandstorm.instantiate()
				platform7_1.add_child(sandstorm7_1)
				sandstorm7_1.position.y -= 80
				is_platform7_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform7_1_free == 0:
				cactus7_1 = cactus.instantiate()
				platform7_1.add_child(cactus7_1)
				cactus7_1.position.y -= 80
				is_platform7_1_free += 1
		elif random_t == "chameleon":
			if is_platform7_1_free == 0:
				chameleon7_1 = chameleon.instantiate()
				platform7_1.add_child(chameleon7_1)
				chameleon7_1.position.x += 12
				is_platform7_1_free += 1
		elif random_t == "golem":
			if is_platform7_1_free == 0:
				golem7_1 = golem.instantiate()
				platform7_1.add_child(golem7_1)
				golem7_1.position.y -= 150
				is_platform7_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform7_1_free == 0:
				spikes7_1 = spikes.instantiate()
				platform7_1.add_child(spikes7_1)
				spikes7_1.position.y += 32
				is_platform7_1_free += 1
		elif random_t == "nothing":
			if is_platform7_1_free == 0:
				is_platform7_1_free +=1
	if platform7_2.visible == false:
		platform7_2.set_collision_layer_value(3, false)
		if monster_plant7_2 != null:
			monster_plant7_2.queue_free()
			is_platform7_2_free = 0
		elif sandstorm7_2 != null:
			sandstorm7_2.queue_free()
			is_platform7_2_free = 0
		elif cactus7_2 != null:
			cactus7_2.queue_free()
			is_platform7_2_free = 0
		elif chameleon7_2 != null:
			chameleon7_2.queue_free()
			is_platform7_2_free = 0
		elif golem7_2 != null:
			golem7_2.queue_free()
			is_platform7_2_free = 0
		elif spikes7_2 != null:
			spikes7_2.queue_free()
			is_platform7_2_free = 0
	elif platform7_2.visible == true:
		platform7_2.set_collision_layer_value(3, true)
		if is_platform7_2_free >= 1:
			is_platform7_2_free = 0
			if monster_plant7_2 != null:
				monster_plant7_2.queue_free()
				is_platform7_2_free = 0
			elif sandstorm7_2 != null:
				sandstorm7_2.queue_free()
				is_platform7_2_free = 0
			elif cactus7_2 != null:
				cactus7_2.queue_free()
				is_platform7_2_free = 0
			elif chameleon7_2 != null:
				chameleon7_2.queue_free()
				is_platform7_2_free = 0
			elif golem7_2 != null:
				golem7_2.queue_free()
				is_platform7_2_free = 0
			elif spikes7_2 != null:
				spikes7_2.queue_free()
				is_platform7_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform7_2_free == 0:
				monster_plant7_2 = monster_plant.instantiate()
				platform7_2.add_child(monster_plant7_2)
				monster_plant7_2.position.y -= 70
				is_platform7_2_free += 1
		elif random_t == "sandstorm":
			if is_platform7_2_free == 0:
				sandstorm7_2 = sandstorm.instantiate()
				platform7_2.add_child(sandstorm7_2)
				sandstorm7_2.position.y -= 80
				is_platform7_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform7_2_free == 0:
				cactus7_2 = cactus.instantiate()
				platform7_2.add_child(cactus7_2)
				cactus7_2.position.y -= 80
				is_platform7_2_free += 1
		elif random_t == "chameleon":
			if is_platform7_2_free == 0:
				chameleon7_2 = chameleon.instantiate()
				platform7_2.add_child(chameleon7_2)
				chameleon7_2.position.x += 12
				is_platform7_2_free += 1
		elif random_t == "golem":
			if is_platform7_2_free == 0:
				golem7_2 = golem.instantiate()
				platform7_2.add_child(golem7_2)
				golem7_2.position.y -= 150
				is_platform7_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform7_2_free == 0:
				spikes7_2 = spikes.instantiate()
				platform7_2.add_child(spikes7_2)
				spikes7_2.position.y += 32
				is_platform7_2_free += 1
		elif random_t == "nothing":
			if is_platform7_2_free == 0:
				is_platform7_2_free +=1
	if platform7_1.visible == false and platform7_2.visible == false:
		platform7_3.global_position.x = randf_range(70,570)
		platform7_3.visible = true
		platform7_3.set_collision_layer_value(3, true)
		if is_platform7_3_free >= 1:
			is_platform7_3_free = 0
			if monster_plant7_3 != null:
				monster_plant7_3.queue_free()
				is_platform7_3_free = 0
			elif sandstorm7_3 != null:
				sandstorm7_3.queue_free()
				is_platform7_3_free = 0
			elif cactus7_3 != null:
				cactus7_3.queue_free()
				is_platform7_3_free = 0
			elif chameleon7_3 != null:
				chameleon7_3.queue_free()
				is_platform7_3_free = 0
			elif golem7_3 != null:
				golem7_3.queue_free()
				is_platform7_3_free = 0
			elif spikes7_3 != null:
				spikes7_3.queue_free()
				is_platform7_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform7_3_free == 0:
				monster_plant7_3 = monster_plant.instantiate()
				platform7_3.add_child(monster_plant7_3)
				monster_plant7_3.position.y -= 70
				is_platform7_3_free += 1
		elif random_t == "sandstorm":
			if is_platform7_3_free == 0:
				sandstorm7_3 = sandstorm.instantiate()
				platform7_3.add_child(sandstorm7_3)
				sandstorm7_3.position.y -= 80
				is_platform7_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform7_3_free == 0:
				cactus7_3 = cactus.instantiate()
				platform7_3.add_child(cactus7_3)
				cactus7_3.position.y -= 80
				is_platform7_3_free += 1
		elif random_t == "chameleon":
			if is_platform7_3_free == 0:
				chameleon7_3 = chameleon.instantiate()
				platform7_3.add_child(chameleon7_3)
				chameleon7_3.position.x += 12
				is_platform7_3_free += 1
		elif random_t == "golem":
			if is_platform7_3_free == 0:
				golem7_3 = golem.instantiate()
				platform7_3.add_child(golem7_3)
				golem7_3.position.y -= 150
				is_platform7_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform7_3_free == 0:
				spikes7_3 = spikes.instantiate()
				platform7_3.add_child(spikes7_3)
				spikes7_3.position.y += 32
				is_platform7_3_free += 1
		elif random_t == "nothing":
			if is_platform7_3_free == 0:
				is_platform7_3_free +=1
	if platform7_3.visible == false:
		platform7_3.set_collision_layer_value(3, false)
		if monster_plant7_3 != null:
			monster_plant7_3.queue_free()
			is_platform7_3_free = 0
		elif sandstorm7_3 != null:
			sandstorm7_3.queue_free()
			is_platform7_3_free = 0
		elif cactus7_3 != null:
			cactus7_3.queue_free()
			is_platform7_3_free = 0
		elif chameleon7_3 != null:
			chameleon7_3.queue_free()
			is_platform7_3_free = 0
		elif golem7_3 != null:
			golem7_3.queue_free()
			is_platform7_3_free = 0
		elif spikes7_3 != null:
			spikes7_3.queue_free()
			is_platform7_3_free = 0

func norm_p8_visible_false():
	$platforms/platform8/Normal_platform1.visible = false
	$platforms/platform8/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform8/Normal_platform2.visible = false
	$platforms/platform8/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform8/Normal_platform3.visible = false
	$platforms/platform8/Normal_platform3.set_collision_layer_value(3, false)

func sand_p8_visible_false():
	$platforms/platform8/Sand_platform1.visible = false
	$platforms/platform8/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform8/Sand_platform2.visible = false
	$platforms/platform8/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform8/Sand_platform3.visible = false
	$platforms/platform8/Sand_platform3.set_collision_layer_value(3, false)

func random_traps8():
	if biome_number == "1":
		platform8_1 = $platforms/platform8/Normal_platform1
		platform8_2 = $platforms/platform8/Normal_platform2
		platform8_3 = $platforms/platform8/Normal_platform3
	elif biome_number == "2":
		platform8_1 = $platforms/platform8/Sand_platform1
		platform8_2 = $platforms/platform8/Sand_platform2
		platform8_3 = $platforms/platform8/Sand_platform3
		norm_p8_visible_false()
	elif biome_number == "3":
		platform8_1 = $platforms/platform8/Rock_platform
		platform8_2 = $platforms/platform8/Rock_platform2
		platform8_3 = $platforms/platform8/Rock_platform3
		norm_p8_visible_false()
		sand_p8_visible_false()
	platform8_1.global_position.x = randf_range(70,257)
	platform8_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform8_1.visible = visible_or_invisible1
	platform8_2.visible = visible_or_invisible2
	platform8_3.visible = false
	platform8_3.set_collision_layer_value(3, false)
	if platform8_1.visible == false:
		platform8_1.set_collision_layer_value(3, false)
		if monster_plant8_1 != null:
			monster_plant8_1.queue_free()
			is_platform8_1_free = 0
		elif sandstorm8_1 != null:
			sandstorm8_1.queue_free()
			is_platform8_1_free = 0
		elif cactus8_1 != null:
			cactus8_1.queue_free()
			is_platform8_1_free = 0
		elif chameleon8_1 != null:
			chameleon8_1.queue_free()
			is_platform8_1_free = 0
		elif golem8_1 != null:
			golem8_1.queue_free()
			is_platform8_1_free = 0
		elif spikes8_1 != null:
			spikes8_1.queue_free()
			is_platform8_1_free = 0
	elif platform8_1.visible == true:
		platform8_1.set_collision_layer_value(3, true)
		if is_platform8_1_free >= 1:
			is_platform8_1_free = 0
			if monster_plant8_1 != null:
				monster_plant8_1.queue_free()
				is_platform8_1_free = 0
			elif sandstorm8_1 != null:
				is_platform8_1_free = 0
				sandstorm8_1.queue_free()
			elif cactus8_1 != null:
				cactus8_1.queue_free()
				is_platform8_1_free = 0
			elif chameleon8_1 != null:
				chameleon8_1.queue_free()
				is_platform8_1_free = 0
			elif golem8_1 != null:
				golem8_1.queue_free()
				is_platform8_1_free = 0
			elif spikes8_1 != null:
				spikes8_1.queue_free()
				is_platform8_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform8_1_free == 0:
				monster_plant8_1 = monster_plant.instantiate()
				platform8_1.add_child(monster_plant8_1)
				monster_plant8_1.position.y -= 70
				is_platform8_1_free += 1
		elif random_t == "sandstorm":
			if is_platform8_1_free == 0:
				sandstorm8_1 = sandstorm.instantiate()
				platform8_1.add_child(sandstorm8_1)
				sandstorm8_1.position.y -= 80
				is_platform8_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform8_1_free == 0:
				cactus8_1 = cactus.instantiate()
				platform8_1.add_child(cactus8_1)
				cactus8_1.position.y -= 80
				is_platform8_1_free += 1
		elif random_t == "chameleon":
			if is_platform8_1_free == 0:
				chameleon8_1 = chameleon.instantiate()
				platform8_1.add_child(chameleon8_1)
				chameleon8_1.position.x += 12
				is_platform8_1_free += 1
		elif random_t == "golem":
			if is_platform8_1_free == 0:
				golem8_1 = golem.instantiate()
				platform8_1.add_child(golem8_1)
				golem8_1.position.y -= 150
				is_platform8_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform8_1_free == 0:
				spikes8_1 = spikes.instantiate()
				platform8_1.add_child(spikes8_1)
				spikes8_1.position.y += 32
				is_platform8_1_free += 1
		elif random_t == "nothing":
			if is_platform8_1_free == 0:
				is_platform8_1_free +=1
	if platform8_2.visible == false:
		platform8_2.set_collision_layer_value(3, false)
		if monster_plant8_2 != null:
			monster_plant8_2.queue_free()
			is_platform8_2_free = 0
		elif sandstorm8_2 != null:
			sandstorm8_2.queue_free()
			is_platform8_2_free = 0
		elif cactus8_2 != null:
			cactus8_2.queue_free()
			is_platform8_2_free = 0
		elif chameleon8_2 != null:
			chameleon8_2.queue_free()
			is_platform8_2_free = 0
		elif golem8_2 != null:
			golem8_2.queue_free()
			is_platform8_2_free = 0
		elif spikes8_2 != null:
			spikes8_2.queue_free()
			is_platform8_2_free = 0
	elif platform8_2.visible == true:
		platform8_2.set_collision_layer_value(3, true)
		if is_platform8_2_free >= 1:
			is_platform8_2_free = 0
			if monster_plant8_2 != null:
				monster_plant8_2.queue_free()
				is_platform8_2_free = 0
			elif sandstorm8_2 != null:
				sandstorm8_2.queue_free()
				is_platform8_2_free = 0
			elif cactus8_2 != null:
				cactus8_2.queue_free()
				is_platform8_2_free = 0
			elif chameleon8_2 != null:
				chameleon8_2.queue_free()
				is_platform8_2_free = 0
			elif golem8_2 != null:
				golem8_2.queue_free()
				is_platform8_2_free = 0
			elif spikes8_2 != null:
				spikes8_2.queue_free()
				is_platform8_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform8_2_free == 0:
				monster_plant8_2 = monster_plant.instantiate()
				platform8_2.add_child(monster_plant8_2)
				monster_plant8_2.position.y -= 70
				is_platform8_2_free += 1
		elif random_t == "sandstorm":
			if is_platform8_2_free == 0:
				sandstorm8_2 = sandstorm.instantiate()
				platform8_2.add_child(sandstorm8_2)
				sandstorm8_2.position.y -= 80
				is_platform8_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform8_2_free == 0:
				cactus8_2 = cactus.instantiate()
				platform8_2.add_child(cactus8_2)
				cactus8_2.position.y -= 80
				is_platform8_2_free += 1
		elif random_t == "chameleon":
			if is_platform8_2_free == 0:
				chameleon8_2 = chameleon.instantiate()
				platform8_2.add_child(chameleon8_2)
				chameleon8_2.position.x += 12
				is_platform8_2_free += 1
		elif random_t == "golem":
			if is_platform8_2_free == 0:
				golem8_2 = golem.instantiate()
				platform8_2.add_child(golem8_2)
				golem8_2.position.y -= 150
				is_platform8_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform8_2_free == 0:
				spikes8_2 = spikes.instantiate()
				platform8_2.add_child(spikes8_2)
				spikes8_2.position.y += 32
				is_platform8_2_free += 1
		elif random_t == "nothing":
			if is_platform8_2_free == 0:
				is_platform8_2_free +=1
	if platform8_1.visible == false and platform8_2.visible == false:
		platform8_3.global_position.x = randf_range(70,570)
		platform8_3.visible = true
		platform8_3.set_collision_layer_value(3, true)
		if is_platform8_3_free >= 1:
			is_platform8_3_free = 0
			if monster_plant8_3 != null:
				monster_plant8_3.queue_free()
				is_platform8_3_free = 0
			elif sandstorm8_3 != null:
				sandstorm8_3.queue_free()
				is_platform8_3_free = 0
			elif cactus8_3 != null:
				cactus8_3.queue_free()
				is_platform8_3_free = 0
			elif chameleon8_3 != null:
				chameleon8_3.queue_free()
				is_platform8_3_free = 0
			elif golem8_3 != null:
				golem8_3.queue_free()
				is_platform8_3_free = 0
			elif spikes8_3 != null:
				spikes8_3.queue_free()
				is_platform8_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform8_3_free == 0:
				monster_plant8_3 = monster_plant.instantiate()
				platform8_3.add_child(monster_plant8_3)
				monster_plant8_3.position.y -= 70
				is_platform8_3_free += 1
		elif random_t == "sandstorm":
			if is_platform8_3_free == 0:
				sandstorm8_3 = sandstorm.instantiate()
				platform8_3.add_child(sandstorm8_3)
				sandstorm8_3.position.y -= 80
				is_platform8_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform8_3_free == 0:
				cactus8_3 = cactus.instantiate()
				platform8_3.add_child(cactus8_3)
				cactus8_3.position.y -= 80
				is_platform8_3_free += 1
		elif random_t == "chameleon":
			if is_platform8_3_free == 0:
				chameleon8_3 = chameleon.instantiate()
				platform8_3.add_child(chameleon8_3)
				chameleon8_3.position.x += 12
				is_platform8_3_free += 1
		elif random_t == "golem":
			if is_platform8_3_free == 0:
				golem8_3 = golem.instantiate()
				platform8_3.add_child(golem8_3)
				golem8_3.position.y -= 150
				is_platform8_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform8_3_free == 0:
				spikes8_3 = spikes.instantiate()
				platform8_3.add_child(spikes8_3)
				spikes8_3.position.y += 32
				is_platform8_3_free += 1
		elif random_t == "nothing":
			if is_platform8_3_free == 0:
				is_platform8_3_free +=1
	if platform8_3.visible == false:
		platform8_3.set_collision_layer_value(3, false)
		if monster_plant8_3 != null:
			monster_plant8_3.queue_free()
			is_platform8_3_free = 0
		elif sandstorm8_3 != null:
			sandstorm8_3.queue_free()
			is_platform8_3_free = 0
		elif cactus8_3 != null:
			cactus8_3.queue_free()
			is_platform8_3_free = 0
		elif chameleon8_3 != null:
			chameleon8_3.queue_free()
			is_platform8_3_free = 0
		elif golem8_3 != null:
			golem8_3.queue_free()
			is_platform8_3_free = 0
		elif spikes8_3 != null:
			spikes8_3.queue_free()
			is_platform8_3_free = 0

func norm_p9_visible_false():
	$platforms/platform9/Normal_platform1.visible = false
	$platforms/platform9/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform9/Normal_platform2.visible = false
	$platforms/platform9/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform9/Normal_platform3.visible = false
	$platforms/platform9/Normal_platform3.set_collision_layer_value(3, false)

func sand_p9_visible_false():
	$platforms/platform9/Sand_platform1.visible = false
	$platforms/platform9/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform9/Sand_platform2.visible = false
	$platforms/platform9/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform9/Sand_platform3.visible = false
	$platforms/platform9/Sand_platform3.set_collision_layer_value(3, false)

func random_traps9():
	if biome_number == "1":
		platform9_1 = $platforms/platform9/Normal_platform1
		platform9_2 = $platforms/platform9/Normal_platform2
		platform9_3 = $platforms/platform9/Normal_platform3
	elif biome_number == "2":
		platform9_1 = $platforms/platform9/Sand_platform1
		platform9_2 = $platforms/platform9/Sand_platform2
		platform9_3 = $platforms/platform9/Sand_platform3
		norm_p9_visible_false()
	elif biome_number == "3":
		platform9_1 = $platforms/platform9/Rock_platform
		platform9_2 = $platforms/platform9/Rock_platform2
		platform9_3 = $platforms/platform9/Rock_platform3
		norm_p9_visible_false()
		sand_p9_visible_false()
	platform9_1.global_position.x = randf_range(70,257)
	platform9_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform9_1.visible = visible_or_invisible1
	platform9_2.visible = visible_or_invisible2
	platform9_3.visible = false
	platform9_3.set_collision_layer_value(3, false)
	if platform9_1.visible == false:
		platform9_1.set_collision_layer_value(3, false)
		if monster_plant9_1 != null:
			monster_plant9_1.queue_free()
			is_platform9_1_free = 0
		elif sandstorm9_1 != null:
			sandstorm9_1.queue_free()
			is_platform9_1_free = 0
		elif cactus9_1 != null:
			cactus9_1.queue_free()
			is_platform9_1_free = 0
		elif chameleon9_1 != null:
			chameleon9_1.queue_free()
			is_platform9_1_free = 0
		elif golem9_1 != null:
			golem9_1.queue_free()
			is_platform9_1_free = 0
		elif spikes9_1 != null:
			spikes9_1.queue_free()
			is_platform9_1_free = 0
	elif platform9_1.visible == true:
		platform9_1.set_collision_layer_value(3, true)
		if is_platform9_1_free >= 1:
			is_platform9_1_free = 0
			if monster_plant9_1 != null:
				monster_plant9_1.queue_free()
				is_platform9_1_free = 0
			elif sandstorm9_1 != null:
				is_platform9_1_free = 0
				sandstorm9_1.queue_free()
			elif cactus9_1 != null:
				cactus9_1.queue_free()
				is_platform9_1_free = 0
			elif chameleon9_1 != null:
				chameleon9_1.queue_free()
				is_platform9_1_free = 0
			elif golem9_1 != null:
				golem9_1.queue_free()
				is_platform9_1_free = 0
			elif spikes9_1 != null:
				spikes9_1.queue_free()
				is_platform9_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform9_1_free == 0:
				monster_plant9_1 = monster_plant.instantiate()
				platform9_1.add_child(monster_plant9_1)
				monster_plant9_1.position.y -= 70
				is_platform9_1_free += 1
		elif random_t == "sandstorm":
			if is_platform9_1_free == 0:
				sandstorm9_1 = sandstorm.instantiate()
				platform9_1.add_child(sandstorm9_1)
				sandstorm9_1.position.y -= 80
				is_platform9_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform9_1_free == 0:
				cactus9_1 = cactus.instantiate()
				platform9_1.add_child(cactus9_1)
				cactus9_1.position.y -= 80
				is_platform9_1_free += 1
		elif random_t == "chameleon":
			if is_platform9_1_free == 0:
				chameleon9_1 = chameleon.instantiate()
				platform9_1.add_child(chameleon9_1)
				chameleon9_1.position.x += 12
				is_platform9_1_free += 1
		elif random_t == "golem":
			if is_platform9_1_free == 0:
				golem9_1 = golem.instantiate()
				platform9_1.add_child(golem9_1)
				golem9_1.position.y -= 150
				is_platform9_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform9_1_free == 0:
				spikes9_1 = spikes.instantiate()
				platform9_1.add_child(spikes9_1)
				spikes9_1.position.y += 32
				is_platform9_1_free += 1
		elif random_t == "nothing":
			if is_platform9_1_free == 0:
				is_platform9_1_free +=1
	if platform9_2.visible == false:
		platform9_2.set_collision_layer_value(3, false)
		if monster_plant9_2 != null:
			monster_plant9_2.queue_free()
			is_platform9_2_free = 0
		elif sandstorm9_2 != null:
			sandstorm9_2.queue_free()
			is_platform9_2_free = 0
		elif cactus9_2 != null:
			cactus9_2.queue_free()
			is_platform9_2_free = 0
		elif chameleon9_2 != null:
			chameleon9_2.queue_free()
			is_platform9_2_free = 0
		elif golem9_2 != null:
			golem9_2.queue_free()
			is_platform9_2_free = 0
		elif spikes9_2 != null:
			spikes9_2.queue_free()
			is_platform9_2_free = 0
	elif platform9_2.visible == true:
		platform9_2.set_collision_layer_value(3, true)
		if is_platform9_2_free >= 1:
			is_platform9_2_free = 0
			if monster_plant9_2 != null:
				monster_plant9_2.queue_free()
				is_platform9_2_free = 0
			elif sandstorm9_2 != null:
				sandstorm9_2.queue_free()
				is_platform9_2_free = 0
			elif cactus9_2 != null:
				cactus9_2.queue_free()
				is_platform9_2_free = 0
			elif chameleon9_2 != null:
				chameleon9_2.queue_free()
				is_platform9_2_free = 0
			elif golem9_2 != null:
				golem9_2.queue_free()
				is_platform9_2_free = 0
			elif spikes9_2 != null:
				spikes9_2.queue_free()
				is_platform9_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform9_2_free == 0:
				monster_plant9_2 = monster_plant.instantiate()
				platform9_2.add_child(monster_plant9_2)
				monster_plant9_2.position.y -= 70
				is_platform9_2_free += 1
		elif random_t == "sandstorm":
			if is_platform9_2_free == 0:
				sandstorm9_2 = sandstorm.instantiate()
				platform9_2.add_child(sandstorm9_2)
				sandstorm9_2.position.y -= 80
				is_platform9_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform9_2_free == 0:
				cactus9_2 = cactus.instantiate()
				platform9_2.add_child(cactus9_2)
				cactus9_2.position.y -= 80
				is_platform9_2_free += 1
		elif random_t == "chameleon":
			if is_platform9_2_free == 0:
				chameleon9_2 = chameleon.instantiate()
				platform9_2.add_child(chameleon9_2)
				chameleon9_2.position.x += 12
				is_platform9_2_free += 1
		elif random_t == "golem":
			if is_platform9_2_free == 0:
				golem9_2 = golem.instantiate()
				platform9_2.add_child(golem9_2)
				golem9_2.position.y -= 150
				is_platform9_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform9_2_free == 0:
				spikes9_2 = spikes.instantiate()
				platform9_2.add_child(spikes9_2)
				spikes9_2.position.y += 32
				is_platform9_2_free += 1
		elif random_t == "nothing":
			if is_platform9_2_free == 0:
				is_platform9_2_free +=1
	if platform9_1.visible == false and platform9_2.visible == false:
		platform9_3.global_position.x = randf_range(70,570)
		platform9_3.visible = true
		platform9_3.set_collision_layer_value(3, true)
		if is_platform9_3_free >= 1:
			is_platform9_3_free = 0
			if monster_plant9_3 != null:
				monster_plant9_3.queue_free()
				is_platform9_3_free = 0
			elif sandstorm9_3 != null:
				sandstorm9_3.queue_free()
				is_platform9_3_free = 0
			elif cactus9_3 != null:
				cactus9_3.queue_free()
				is_platform9_3_free = 0
			elif chameleon9_3 != null:
				chameleon9_3.queue_free()
				is_platform9_3_free = 0
			elif golem9_3 != null:
				golem9_3.queue_free()
				is_platform9_3_free = 0
			elif spikes9_3 != null:
				spikes9_3.queue_free()
				is_platform9_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform9_3_free == 0:
				monster_plant9_3 = monster_plant.instantiate()
				platform9_3.add_child(monster_plant9_3)
				monster_plant9_3.position.y -= 70
				is_platform9_3_free += 1
		elif random_t == "sandstorm":
			if is_platform9_3_free == 0:
				sandstorm9_3 = sandstorm.instantiate()
				platform9_3.add_child(sandstorm9_3)
				sandstorm9_3.position.y -= 80
				is_platform9_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform9_3_free == 0:
				cactus9_3 = cactus.instantiate()
				platform9_3.add_child(cactus9_3)
				cactus9_3.position.y -= 80
				is_platform9_3_free += 1
		elif random_t == "chameleon":
			if is_platform9_3_free == 0:
				chameleon9_3 = chameleon.instantiate()
				platform9_3.add_child(chameleon9_3)
				chameleon9_3.position.x += 12
				is_platform9_3_free += 1
		elif random_t == "golem":
			if is_platform9_3_free == 0:
				golem9_3 = golem.instantiate()
				platform9_3.add_child(golem9_3)
				golem9_3.position.y -= 150
				is_platform9_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform9_3_free == 0:
				spikes9_3 = spikes.instantiate()
				platform9_3.add_child(spikes9_3)
				spikes9_3.position.y += 32
				is_platform9_3_free += 1
		elif random_t == "nothing":
			if is_platform9_3_free == 0:
				is_platform9_3_free +=1
	if platform9_3.visible == false:
		platform9_3.set_collision_layer_value(3, false)
		if monster_plant9_3 != null:
			monster_plant9_3.queue_free()
			is_platform9_3_free = 0
		elif sandstorm9_3 != null:
			sandstorm9_3.queue_free()
			is_platform9_3_free = 0
		elif cactus9_3 != null:
			cactus9_3.queue_free()
			is_platform9_3_free = 0
		elif chameleon9_3 != null:
			chameleon9_3.queue_free()
			is_platform9_3_free = 0
		elif golem9_3 != null:
			golem9_3.queue_free()
			is_platform9_3_free = 0
		elif spikes9_3 != null:
			spikes9_3.queue_free()
			is_platform9_3_free = 0

func norm_p10_visible_false():
	$platforms/platform10/Normal_platform1.visible = false
	$platforms/platform10/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform10/Normal_platform2.visible = false
	$platforms/platform10/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform10/Normal_platform3.visible = false
	$platforms/platform10/Normal_platform3.set_collision_layer_value(3, false)

func sand_p10_visible_false():
	$platforms/platform10/Sand_platform1.visible = false
	$platforms/platform10/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform10/Sand_platform2.visible = false
	$platforms/platform10/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform10/Sand_platform3.visible = false
	$platforms/platform10/Sand_platform3.set_collision_layer_value(3, false)

func random_traps10():
	if biome_number == "1":
		platform10_1 = $platforms/platform10/Normal_platform1
		platform10_2 = $platforms/platform10/Normal_platform2
		platform10_3 = $platforms/platform10/Normal_platform3
	elif biome_number == "2":
		platform10_1 = $platforms/platform10/Sand_platform1
		platform10_2 = $platforms/platform10/Sand_platform2
		platform10_3 = $platforms/platform10/Sand_platform3
		norm_p10_visible_false()
	elif biome_number == "3":
		platform10_1 = $platforms/platform10/Rock_platform
		platform10_2 = $platforms/platform10/Rock_platform2
		platform10_3 = $platforms/platform10/Rock_platform3
		norm_p10_visible_false()
		sand_p10_visible_false()
	platform10_1.global_position.x = randf_range(70,257)
	platform10_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform10_1.visible = visible_or_invisible1
	platform10_2.visible = visible_or_invisible2
	platform10_3.visible = false
	platform10_3.set_collision_layer_value(3, false)
	if platform10_1.visible == false:
		platform10_1.set_collision_layer_value(3, false)
		if monster_plant10_1 != null:
			monster_plant10_1.queue_free()
			is_platform10_1_free = 0
		elif sandstorm10_1 != null:
			sandstorm10_1.queue_free()
			is_platform10_1_free = 0
		elif cactus10_1 != null:
			cactus10_1.queue_free()
			is_platform10_1_free = 0
		elif chameleon10_1 != null:
			chameleon10_1.queue_free()
			is_platform10_1_free = 0
		elif golem10_1 != null:
			golem10_1.queue_free()
			is_platform10_1_free = 0
		elif spikes10_1 != null:
			spikes10_1.queue_free()
			is_platform10_1_free = 0
	elif platform10_1.visible == true:
		platform10_1.set_collision_layer_value(3, true)
		if is_platform10_1_free >= 1:
			is_platform10_1_free = 0
			if monster_plant10_1 != null:
				monster_plant10_1.queue_free()
				is_platform10_1_free = 0
			elif sandstorm10_1 != null:
				is_platform10_1_free = 0
				sandstorm10_1.queue_free()
			elif cactus10_1 != null:
				cactus10_1.queue_free()
				is_platform10_1_free = 0
			elif chameleon10_1 != null:
				chameleon10_1.queue_free()
				is_platform10_1_free = 0
			elif golem10_1 != null:
				golem10_1.queue_free()
				is_platform10_1_free = 0
			elif spikes10_1 != null:
				spikes10_1.queue_free()
				is_platform10_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform10_1_free == 0:
				monster_plant10_1 = monster_plant.instantiate()
				platform10_1.add_child(monster_plant10_1)
				monster_plant10_1.position.y -= 70
				is_platform10_1_free += 1
		elif random_t == "sandstorm":
			if is_platform10_1_free == 0:
				sandstorm10_1 = sandstorm.instantiate()
				platform10_1.add_child(sandstorm10_1)
				sandstorm10_1.position.y -= 80
				is_platform10_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform10_1_free == 0:
				cactus10_1 = cactus.instantiate()
				platform10_1.add_child(cactus10_1)
				cactus10_1.position.y -= 80
				is_platform10_1_free += 1
		elif random_t == "chameleon":
			if is_platform10_1_free == 0:
				chameleon10_1 = chameleon.instantiate()
				platform10_1.add_child(chameleon10_1)
				chameleon10_1.position.x += 12
				is_platform10_1_free += 1
		elif random_t == "golem":
			if is_platform10_1_free == 0:
				golem10_1 = golem.instantiate()
				platform10_1.add_child(golem10_1)
				golem10_1.position.y -= 150
				is_platform10_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform10_1_free == 0:
				spikes10_1 = spikes.instantiate()
				platform10_1.add_child(spikes10_1)
				spikes10_1.position.y += 32
				is_platform10_1_free += 1
		elif random_t == "nothing":
			if is_platform10_1_free == 0:
				is_platform10_1_free +=1
	if platform10_2.visible == false:
		platform10_2.set_collision_layer_value(3, false)
		if monster_plant10_2 != null:
			monster_plant10_2.queue_free()
			is_platform10_2_free = 0
		elif sandstorm10_2 != null:
			sandstorm10_2.queue_free()
			is_platform10_2_free = 0
		elif cactus10_2 != null:
			cactus10_2.queue_free()
			is_platform10_2_free = 0
		elif chameleon10_2 != null:
			chameleon10_2.queue_free()
			is_platform10_2_free = 0
		elif golem10_2 != null:
			golem10_2.queue_free()
			is_platform10_2_free = 0
		elif spikes10_2 != null:
			spikes10_2.queue_free()
			is_platform10_2_free = 0
	elif platform10_2.visible == true:
		platform10_2.set_collision_layer_value(3, true)
		if is_platform10_2_free >= 1:
			is_platform10_2_free = 0
			if monster_plant10_2 != null:
				monster_plant10_2.queue_free()
				is_platform10_2_free = 0
			elif sandstorm10_2 != null:
				sandstorm10_2.queue_free()
				is_platform10_2_free = 0
			elif cactus10_2 != null:
				cactus10_2.queue_free()
				is_platform10_2_free = 0
			elif chameleon10_2 != null:
				chameleon10_2.queue_free()
				is_platform10_2_free = 0
			elif golem10_2 != null:
				golem10_2.queue_free()
				is_platform10_2_free = 0
			elif spikes10_2 != null:
				spikes10_2.queue_free()
				is_platform10_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform10_2_free == 0:
				monster_plant10_2 = monster_plant.instantiate()
				platform10_2.add_child(monster_plant10_2)
				monster_plant10_2.position.y -= 70
				is_platform10_2_free += 1
		elif random_t == "sandstorm":
			if is_platform10_2_free == 0:
				sandstorm10_2 = sandstorm.instantiate()
				platform10_2.add_child(sandstorm10_2)
				sandstorm10_2.position.y -= 80
				is_platform10_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform10_2_free == 0:
				cactus10_2 = cactus.instantiate()
				platform10_2.add_child(cactus10_2)
				cactus10_2.position.y -= 80
				is_platform10_2_free += 1
		elif random_t == "chameleon":
			if is_platform10_2_free == 0:
				chameleon10_2 = chameleon.instantiate()
				platform10_2.add_child(chameleon10_2)
				chameleon10_2.position.x += 12
				is_platform10_2_free += 1
		elif random_t == "golem":
			if is_platform10_2_free == 0:
				golem10_2 = golem.instantiate()
				platform10_2.add_child(golem10_2)
				golem10_2.position.y -= 150
				is_platform10_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform10_2_free == 0:
				spikes10_2 = spikes.instantiate()
				platform10_2.add_child(spikes10_2)
				spikes10_2.position.y += 32
				is_platform10_2_free += 1
		elif random_t == "nothing":
			if is_platform10_2_free == 0:
				is_platform10_2_free +=1
	if platform10_1.visible == false and platform10_2.visible == false:
		platform10_3.global_position.x = randf_range(70,570)
		platform10_3.visible = true
		platform10_3.set_collision_layer_value(3, true)
		if is_platform10_3_free >= 1:
			is_platform10_3_free = 0
			if monster_plant10_3 != null:
				monster_plant10_3.queue_free()
				is_platform10_3_free = 0
			elif sandstorm10_3 != null:
				sandstorm10_3.queue_free()
				is_platform10_3_free = 0
			elif cactus10_3 != null:
				cactus10_3.queue_free()
				is_platform10_3_free = 0
			elif chameleon10_3 != null:
				chameleon10_3.queue_free()
				is_platform10_3_free = 0
			elif golem10_3 != null:
				golem10_3.queue_free()
				is_platform10_3_free = 0
			elif spikes10_3 != null:
				spikes10_3.queue_free()
				is_platform10_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform10_3_free == 0:
				monster_plant10_3 = monster_plant.instantiate()
				platform10_3.add_child(monster_plant10_3)
				monster_plant10_3.position.y -= 70
				is_platform10_3_free += 1
		elif random_t == "sandstorm":
			if is_platform10_3_free == 0:
				sandstorm10_3 = sandstorm.instantiate()
				platform10_3.add_child(sandstorm10_3)
				sandstorm10_3.position.y -= 80
				is_platform10_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform10_3_free == 0:
				cactus10_3 = cactus.instantiate()
				platform10_3.add_child(cactus10_3)
				cactus10_3.position.y -= 80
				is_platform10_3_free += 1
		elif random_t == "chameleon":
			if is_platform10_3_free == 0:
				chameleon10_3 = chameleon.instantiate()
				platform10_3.add_child(chameleon10_3)
				chameleon10_3.position.x += 12
				is_platform10_3_free += 1
		elif random_t == "golem":
			if is_platform10_3_free == 0:
				golem10_3 = golem.instantiate()
				platform10_3.add_child(golem10_3)
				golem10_3.position.y -= 150
				is_platform10_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform10_3_free == 0:
				spikes10_3 = spikes.instantiate()
				platform10_3.add_child(spikes10_3)
				spikes10_3.position.y += 32
				is_platform10_3_free += 1
		elif random_t == "nothing":
			if is_platform10_3_free == 0:
				is_platform10_3_free +=1
	if platform10_3.visible == false:
		platform10_3.set_collision_layer_value(3, false)
		if monster_plant10_3 != null:
			monster_plant10_3.queue_free()
			is_platform10_3_free = 0
		elif sandstorm10_3 != null:
			sandstorm10_3.queue_free()
			is_platform10_3_free = 0
		elif cactus10_3 != null:
			cactus10_3.queue_free()
			is_platform10_3_free = 0
		elif chameleon10_3 != null:
			chameleon10_3.queue_free()
			is_platform10_3_free = 0
		elif golem10_3 != null:
			golem10_3.queue_free()
			is_platform10_3_free = 0
		elif spikes10_3 != null:
			spikes10_3.queue_free()
			is_platform10_3_free = 0

func norm_p11_visible_false():
	$platforms/platform11/Normal_platform1.visible = false
	$platforms/platform11/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform11/Normal_platform2.visible = false
	$platforms/platform11/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform11/Normal_platform3.visible = false
	$platforms/platform11/Normal_platform3.set_collision_layer_value(3, false)

func sand_p11_visible_false():
	$platforms/platform11/Sand_platform1.visible = false
	$platforms/platform11/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform11/Sand_platform2.visible = false
	$platforms/platform11/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform11/Sand_platform3.visible = false
	$platforms/platform11/Sand_platform3.set_collision_layer_value(3, false)

func random_traps11():
	if biome_number == "1":
		platform11_1 = $platforms/platform11/Normal_platform1
		platform11_2 = $platforms/platform11/Normal_platform2
		platform11_3 = $platforms/platform11/Normal_platform3
	elif biome_number == "2":
		platform11_1 = $platforms/platform11/Sand_platform1
		platform11_2 = $platforms/platform11/Sand_platform2
		platform11_3 = $platforms/platform11/Sand_platform3
		norm_p11_visible_false()
	elif biome_number == "3":
		platform11_1 = $platforms/platform11/Rock_platform
		platform11_2 = $platforms/platform11/Rock_platform2
		platform11_3 = $platforms/platform11/Rock_platform3
		norm_p11_visible_false()
		sand_p11_visible_false()
	platform11_1.global_position.x = randf_range(70,257)
	platform11_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform11_1.visible = visible_or_invisible1
	platform11_2.visible = visible_or_invisible2
	platform11_3.visible = false
	platform11_3.set_collision_layer_value(3, false)
	if platform11_1.visible == false:
		platform11_1.set_collision_layer_value(3, false)
		if monster_plant11_1 != null:
			monster_plant11_1.queue_free()
			is_platform11_1_free = 0
		elif sandstorm11_1 != null:
			sandstorm11_1.queue_free()
			is_platform11_1_free = 0
		elif cactus11_1 != null:
			cactus11_1.queue_free()
			is_platform11_1_free = 0
		elif chameleon11_1 != null:
			chameleon11_1.queue_free()
			is_platform11_1_free = 0
		elif golem11_1 != null:
			golem11_1.queue_free()
			is_platform11_1_free = 0
		elif spikes11_1 != null:
			spikes11_1.queue_free()
			is_platform11_1_free = 0
	elif platform11_1.visible == true:
		platform11_1.set_collision_layer_value(3, true)
		if is_platform11_1_free >= 1:
			is_platform11_1_free = 0
			if monster_plant11_1 != null:
				monster_plant11_1.queue_free()
				is_platform11_1_free = 0
			elif sandstorm11_1 != null:
				is_platform11_1_free = 0
				sandstorm11_1.queue_free()
			elif cactus11_1 != null:
				cactus11_1.queue_free()
				is_platform11_1_free = 0
			elif chameleon11_1 != null:
				chameleon11_1.queue_free()
				is_platform11_1_free = 0
			elif golem11_1 != null:
				golem11_1.queue_free()
				is_platform11_1_free = 0
			elif spikes11_1 != null:
				spikes11_1.queue_free()
				is_platform11_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform11_1_free == 0:
				monster_plant11_1 = monster_plant.instantiate()
				platform11_1.add_child(monster_plant11_1)
				monster_plant11_1.position.y -= 70
				is_platform11_1_free += 1
		elif random_t == "sandstorm":
			if is_platform11_1_free == 0:
				sandstorm11_1 = sandstorm.instantiate()
				platform11_1.add_child(sandstorm11_1)
				sandstorm11_1.position.y -= 80
				is_platform11_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform11_1_free == 0:
				cactus11_1 = cactus.instantiate()
				platform11_1.add_child(cactus11_1)
				cactus11_1.position.y -= 80
				is_platform11_1_free += 1
		elif random_t == "chameleon":
			if is_platform11_1_free == 0:
				chameleon11_1 = chameleon.instantiate()
				platform11_1.add_child(chameleon11_1)
				chameleon11_1.position.x += 12
				is_platform11_1_free += 1
		elif random_t == "golem":
			if is_platform11_1_free == 0:
				golem11_1 = golem.instantiate()
				platform11_1.add_child(golem11_1)
				golem11_1.position.y -= 150
				is_platform11_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform11_1_free == 0:
				spikes11_1 = spikes.instantiate()
				platform11_1.add_child(spikes11_1)
				spikes11_1.position.y += 32
				is_platform11_1_free += 1
		elif random_t == "nothing":
			if is_platform11_1_free == 0:
				is_platform11_1_free +=1
	if platform11_2.visible == false:
		platform11_2.set_collision_layer_value(3, false)
		if monster_plant11_2 != null:
			monster_plant11_2.queue_free()
			is_platform11_2_free = 0
		elif sandstorm11_2 != null:
			sandstorm11_2.queue_free()
			is_platform11_2_free = 0
		elif cactus11_2 != null:
			cactus11_2.queue_free()
			is_platform11_2_free = 0
		elif chameleon11_2 != null:
			chameleon11_2.queue_free()
			is_platform11_2_free = 0
		elif golem11_2 != null:
			golem11_2.queue_free()
			is_platform11_2_free = 0
		elif spikes11_2 != null:
			spikes11_2.queue_free()
			is_platform11_2_free = 0
	elif platform11_2.visible == true:
		platform11_2.set_collision_layer_value(3, true)
		if is_platform11_2_free >= 1:
			is_platform11_2_free = 0
			if monster_plant11_2 != null:
				monster_plant11_2.queue_free()
				is_platform11_2_free = 0
			elif sandstorm11_2 != null:
				sandstorm11_2.queue_free()
				is_platform11_2_free = 0
			elif cactus11_2 != null:
				cactus11_2.queue_free()
				is_platform11_2_free = 0
			elif chameleon11_2 != null:
				chameleon11_2.queue_free()
				is_platform11_2_free = 0
			elif golem11_2 != null:
				golem11_2.queue_free()
				is_platform11_2_free = 0
			elif spikes11_2 != null:
				spikes11_2.queue_free()
				is_platform11_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform11_2_free == 0:
				monster_plant11_2 = monster_plant.instantiate()
				platform11_2.add_child(monster_plant11_2)
				monster_plant11_2.position.y -= 70
				is_platform11_2_free += 1
		elif random_t == "sandstorm":
			if is_platform11_2_free == 0:
				sandstorm11_2 = sandstorm.instantiate()
				platform11_2.add_child(sandstorm11_2)
				sandstorm11_2.position.y -= 80
				is_platform11_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform11_2_free == 0:
				cactus11_2 = cactus.instantiate()
				platform11_2.add_child(cactus11_2)
				cactus11_2.position.y -= 80
				is_platform11_2_free += 1
		elif random_t == "chameleon":
			if is_platform11_2_free == 0:
				chameleon11_2 = chameleon.instantiate()
				platform11_2.add_child(chameleon11_2)
				chameleon11_2.position.x += 12
				is_platform11_2_free += 1
		elif random_t == "golem":
			if is_platform11_2_free == 0:
				golem11_2 = golem.instantiate()
				platform11_2.add_child(golem11_2)
				golem11_2.position.y -= 150
				is_platform11_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform11_2_free == 0:
				spikes11_2 = spikes.instantiate()
				platform11_2.add_child(spikes11_2)
				spikes11_2.position.y += 32
				is_platform11_2_free += 1
		elif random_t == "nothing":
			if is_platform11_2_free == 0:
				is_platform11_2_free +=1
	if platform11_1.visible == false and platform11_2.visible == false:
		platform11_3.global_position.x = randf_range(70,570)
		platform11_3.visible = true
		platform11_3.set_collision_layer_value(3, true)
		if is_platform11_3_free >= 1:
			is_platform11_3_free = 0
			if monster_plant11_3 != null:
				monster_plant11_3.queue_free()
				is_platform11_3_free = 0
			elif sandstorm11_3 != null:
				sandstorm11_3.queue_free()
				is_platform11_3_free = 0
			elif cactus11_3 != null:
				cactus11_3.queue_free()
				is_platform11_3_free = 0
			elif chameleon11_3 != null:
				chameleon11_3.queue_free()
				is_platform11_3_free = 0
			elif golem11_3 != null:
				golem11_3.queue_free()
				is_platform11_3_free = 0
			elif spikes11_3 != null:
				spikes11_3.queue_free()
				is_platform11_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform11_3_free == 0:
				monster_plant11_3 = monster_plant.instantiate()
				platform11_3.add_child(monster_plant11_3)
				monster_plant11_3.position.y -= 70
				is_platform11_3_free += 1
		elif random_t == "sandstorm":
			if is_platform11_3_free == 0:
				sandstorm11_3 = sandstorm.instantiate()
				platform11_3.add_child(sandstorm11_3)
				sandstorm11_3.position.y -= 80
				is_platform11_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform11_3_free == 0:
				cactus11_3 = cactus.instantiate()
				platform11_3.add_child(cactus11_3)
				cactus11_3.position.y -= 80
				is_platform11_3_free += 1
		elif random_t == "chameleon":
			if is_platform11_3_free == 0:
				chameleon11_3 = chameleon.instantiate()
				platform11_3.add_child(chameleon11_3)
				chameleon11_3.position.x += 12
				is_platform11_3_free += 1
		elif random_t == "golem":
			if is_platform11_3_free == 0:
				golem11_3 = golem.instantiate()
				platform11_3.add_child(golem11_3)
				golem11_3.position.y -= 150
				is_platform11_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform11_3_free == 0:
				spikes11_3 = spikes.instantiate()
				platform11_3.add_child(spikes11_3)
				spikes11_3.position.y += 32
				is_platform11_3_free += 1
		elif random_t == "nothing":
			if is_platform11_3_free == 0:
				is_platform11_3_free +=1
	if platform11_3.visible == false:
		platform11_3.set_collision_layer_value(3, false)
		if monster_plant11_3 != null:
			monster_plant11_3.queue_free()
			is_platform11_3_free = 0
		elif sandstorm11_3 != null:
			sandstorm11_3.queue_free()
			is_platform11_3_free = 0
		elif cactus11_3 != null:
			cactus11_3.queue_free()
			is_platform11_3_free = 0
		elif chameleon11_3 != null:
			chameleon11_3.queue_free()
			is_platform11_3_free = 0
		elif golem11_3 != null:
			golem11_3.queue_free()
			is_platform11_3_free = 0
		elif spikes11_3 != null:
			spikes11_3.queue_free()
			is_platform11_3_free = 0

func norm_p12_visible_false():
	$platforms/platform12/Normal_platform1.visible = false
	$platforms/platform12/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform12/Normal_platform2.visible = false
	$platforms/platform12/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform12/Normal_platform3.visible = false
	$platforms/platform12/Normal_platform3.set_collision_layer_value(3, false)

func sand_p12_visible_false():
	$platforms/platform12/Sand_platform1.visible = false
	$platforms/platform12/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform12/Sand_platform2.visible = false
	$platforms/platform12/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform12/Sand_platform3.visible = false
	$platforms/platform12/Sand_platform3.set_collision_layer_value(3, false)

func random_traps12():
	if biome_number == "1":
		platform12_1 = $platforms/platform12/Normal_platform1
		platform12_2 = $platforms/platform12/Normal_platform2
		platform12_3 = $platforms/platform12/Normal_platform3
	elif biome_number == "2":
		platform12_1 = $platforms/platform12/Sand_platform1
		platform12_2 = $platforms/platform12/Sand_platform2
		platform12_3 = $platforms/platform12/Sand_platform3
		norm_p12_visible_false()
	elif biome_number == "3":
		platform12_1 = $platforms/platform12/Rock_platform
		platform12_2 = $platforms/platform12/Rock_platform2
		platform12_3 = $platforms/platform12/Rock_platform3
		norm_p12_visible_false()
		sand_p12_visible_false()
	platform12_1.global_position.x = randf_range(70,257)
	platform12_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform12_1.visible = visible_or_invisible1
	platform12_2.visible = visible_or_invisible2
	platform12_3.visible = false
	platform12_3.set_collision_layer_value(3, false)
	if platform12_1.visible == false:
		platform12_1.set_collision_layer_value(3, false)
		if monster_plant12_1 != null:
			monster_plant12_1.queue_free()
			is_platform12_1_free = 0
		elif sandstorm12_1 != null:
			sandstorm12_1.queue_free()
			is_platform12_1_free = 0
		elif cactus12_1 != null:
			cactus12_1.queue_free()
			is_platform12_1_free = 0
		elif chameleon12_1 != null:
			chameleon12_1.queue_free()
			is_platform12_1_free = 0
		elif golem12_1 != null:
			golem12_1.queue_free()
			is_platform12_1_free = 0
		elif spikes12_1 != null:
			spikes12_1.queue_free()
			is_platform12_1_free = 0
	elif platform12_1.visible == true:
		platform12_1.set_collision_layer_value(3, true)
		if is_platform12_1_free >= 1:
			is_platform12_1_free = 0
			if monster_plant12_1 != null:
				monster_plant12_1.queue_free()
				is_platform12_1_free = 0
			elif sandstorm12_1 != null:
				is_platform12_1_free = 0
				sandstorm12_1.queue_free()
			elif cactus12_1 != null:
				cactus12_1.queue_free()
				is_platform12_1_free = 0
			elif chameleon12_1 != null:
				chameleon12_1.queue_free()
				is_platform12_1_free = 0
			elif golem12_1 != null:
				golem12_1.queue_free()
				is_platform12_1_free = 0
			elif spikes12_1 != null:
				spikes12_1.queue_free()
				is_platform12_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform12_1_free == 0:
				monster_plant12_1 = monster_plant.instantiate()
				platform12_1.add_child(monster_plant12_1)
				monster_plant12_1.position.y -= 70
				is_platform12_1_free += 1
		elif random_t == "sandstorm":
			if is_platform12_1_free == 0:
				sandstorm12_1 = sandstorm.instantiate()
				platform12_1.add_child(sandstorm12_1)
				sandstorm12_1.position.y -= 80
				is_platform12_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform12_1_free == 0:
				cactus12_1 = cactus.instantiate()
				platform12_1.add_child(cactus12_1)
				cactus12_1.position.y -= 80
				is_platform12_1_free += 1
		elif random_t == "chameleon":
			if is_platform12_1_free == 0:
				chameleon12_1 = chameleon.instantiate()
				platform12_1.add_child(chameleon12_1)
				chameleon12_1.position.x += 12
				is_platform12_1_free += 1
		elif random_t == "golem":
			if is_platform12_1_free == 0:
				golem12_1 = golem.instantiate()
				platform12_1.add_child(golem12_1)
				golem12_1.position.y -= 150
				is_platform12_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform12_1_free == 0:
				spikes12_1 = spikes.instantiate()
				platform12_1.add_child(spikes12_1)
				spikes12_1.position.y += 32
				is_platform12_1_free += 1
		elif random_t == "nothing":
			if is_platform12_1_free == 0:
				is_platform12_1_free +=1
	if platform12_2.visible == false:
		platform12_2.set_collision_layer_value(3, false)
		if monster_plant12_2 != null:
			monster_plant12_2.queue_free()
			is_platform12_2_free = 0
		elif sandstorm12_2 != null:
			sandstorm12_2.queue_free()
			is_platform12_2_free = 0
		elif cactus12_2 != null:
			cactus12_2.queue_free()
			is_platform12_2_free = 0
		elif chameleon12_2 != null:
			chameleon12_2.queue_free()
			is_platform12_2_free = 0
		elif golem12_2 != null:
			golem12_2.queue_free()
			is_platform12_2_free = 0
		elif spikes12_2 != null:
			spikes12_2.queue_free()
			is_platform12_2_free = 0
	elif platform12_2.visible == true:
		platform12_2.set_collision_layer_value(3, true)
		if is_platform12_2_free >= 1:
			is_platform12_2_free = 0
			if monster_plant12_2 != null:
				monster_plant12_2.queue_free()
				is_platform12_2_free = 0
			elif sandstorm12_2 != null:
				sandstorm12_2.queue_free()
				is_platform12_2_free = 0
			elif cactus12_2 != null:
				cactus12_2.queue_free()
				is_platform12_2_free = 0
			elif chameleon12_2 != null:
				chameleon12_2.queue_free()
				is_platform12_2_free = 0
			elif golem12_2 != null:
				golem12_2.queue_free()
				is_platform12_2_free = 0
			elif spikes12_2 != null:
				spikes12_2.queue_free()
				is_platform12_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform12_2_free == 0:
				monster_plant12_2 = monster_plant.instantiate()
				platform12_2.add_child(monster_plant12_2)
				monster_plant12_2.position.y -= 70
				is_platform12_2_free += 1
		elif random_t == "sandstorm":
			if is_platform12_2_free == 0:
				sandstorm12_2 = sandstorm.instantiate()
				platform12_2.add_child(sandstorm12_2)
				sandstorm12_2.position.y -= 80
				is_platform12_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform12_2_free == 0:
				cactus12_2 = cactus.instantiate()
				platform12_2.add_child(cactus12_2)
				cactus12_2.position.y -= 80
				is_platform12_2_free += 1
		elif random_t == "chameleon":
			if is_platform12_2_free == 0:
				chameleon12_2 = chameleon.instantiate()
				platform12_2.add_child(chameleon12_2)
				chameleon12_2.position.x += 12
				is_platform12_2_free += 1
		elif random_t == "golem":
			if is_platform12_2_free == 0:
				golem12_2 = golem.instantiate()
				platform12_2.add_child(golem12_2)
				golem12_2.position.y -= 150
				is_platform12_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform12_2_free == 0:
				spikes12_2 = spikes.instantiate()
				platform12_2.add_child(spikes12_2)
				spikes12_2.position.y += 32
				is_platform12_2_free += 1
		elif random_t == "nothing":
			if is_platform12_2_free == 0:
				is_platform12_2_free +=1
	if platform12_1.visible == false and platform12_2.visible == false:
		platform12_3.global_position.x = randf_range(70,570)
		platform12_3.visible = true
		platform12_3.set_collision_layer_value(3, true)
		if is_platform12_3_free >= 1:
			is_platform12_3_free = 0
			if monster_plant12_3 != null:
				monster_plant12_3.queue_free()
				is_platform12_3_free = 0
			elif sandstorm12_3 != null:
				sandstorm12_3.queue_free()
				is_platform12_3_free = 0
			elif cactus12_3 != null:
				cactus12_3.queue_free()
				is_platform12_3_free = 0
			elif chameleon12_3 != null:
				chameleon12_3.queue_free()
				is_platform12_3_free = 0
			elif golem12_3 != null:
				golem12_3.queue_free()
				is_platform12_3_free = 0
			elif spikes12_3 != null:
				spikes12_3.queue_free()
				is_platform12_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform12_3_free == 0:
				monster_plant12_3 = monster_plant.instantiate()
				platform12_3.add_child(monster_plant12_3)
				monster_plant12_3.position.y -= 70
				is_platform12_3_free += 1
		elif random_t == "sandstorm":
			if is_platform12_3_free == 0:
				sandstorm12_3 = sandstorm.instantiate()
				platform12_3.add_child(sandstorm12_3)
				sandstorm12_3.position.y -= 80
				is_platform12_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform12_3_free == 0:
				cactus12_3 = cactus.instantiate()
				platform12_3.add_child(cactus12_3)
				cactus12_3.position.y -= 80
				is_platform12_3_free += 1
		elif random_t == "chameleon":
			if is_platform12_3_free == 0:
				chameleon12_3 = chameleon.instantiate()
				platform12_3.add_child(chameleon12_3)
				chameleon12_3.position.x += 12
				is_platform12_3_free += 1
		elif random_t == "golem":
			if is_platform12_3_free == 0:
				golem12_3 = golem.instantiate()
				platform12_3.add_child(golem12_3)
				golem12_3.position.y -= 150
				is_platform12_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform12_3_free == 0:
				spikes12_3 = spikes.instantiate()
				platform12_3.add_child(spikes12_3)
				spikes12_3.position.y += 32
				is_platform12_3_free += 1
		elif random_t == "nothing":
			if is_platform12_3_free == 0:
				is_platform12_3_free +=1
	if platform12_3.visible == false:
		platform12_3.set_collision_layer_value(3, false)
		if monster_plant12_3 != null:
			monster_plant12_3.queue_free()
			is_platform12_3_free = 0
		elif sandstorm12_3 != null:
			sandstorm12_3.queue_free()
			is_platform12_3_free = 0
		elif cactus12_3 != null:
			cactus12_3.queue_free()
			is_platform12_3_free = 0
		elif chameleon12_3 != null:
			chameleon12_3.queue_free()
			is_platform12_3_free = 0
		elif golem12_3 != null:
			golem12_3.queue_free()
			is_platform12_3_free = 0
		elif spikes12_3 != null:
			spikes12_3.queue_free()
			is_platform12_3_free = 0

func norm_p13_visible_false():
	$platforms/platform13/Normal_platform1.visible = false
	$platforms/platform13/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform13/Normal_platform2.visible = false
	$platforms/platform13/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform13/Normal_platform3.visible = false
	$platforms/platform13/Normal_platform3.set_collision_layer_value(3, false)

func sand_p13_visible_false():
	$platforms/platform13/Sand_platform1.visible = false
	$platforms/platform13/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform13/Sand_platform2.visible = false
	$platforms/platform13/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform13/Sand_platform3.visible = false
	$platforms/platform13/Sand_platform3.set_collision_layer_value(3, false)

func random_traps13():
	if biome_number == "1":
		platform13_1 = $platforms/platform13/Normal_platform1
		platform13_2 = $platforms/platform13/Normal_platform2
		platform13_3 = $platforms/platform13/Normal_platform3
	elif biome_number == "2":
		platform13_1 = $platforms/platform13/Sand_platform1
		platform13_2 = $platforms/platform13/Sand_platform2
		platform13_3 = $platforms/platform13/Sand_platform3
		norm_p13_visible_false()
	elif biome_number == "3":
		platform13_1 = $platforms/platform13/Rock_platform
		platform13_2 = $platforms/platform13/Rock_platform2
		platform13_3 = $platforms/platform13/Rock_platform3
		norm_p13_visible_false()
		sand_p13_visible_false()
	platform13_1.global_position.x = randf_range(70,257)
	platform13_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform13_1.visible = visible_or_invisible1
	platform13_2.visible = visible_or_invisible2
	platform13_3.visible = false
	platform13_3.set_collision_layer_value(3, false)
	if platform13_1.visible == false:
		platform13_1.set_collision_layer_value(3, false)
		if monster_plant13_1 != null:
			monster_plant13_1.queue_free()
			is_platform13_1_free = 0
		elif sandstorm13_1 != null:
			sandstorm13_1.queue_free()
			is_platform13_1_free = 0
		elif cactus13_1 != null:
			cactus13_1.queue_free()
			is_platform13_1_free = 0
		elif chameleon13_1 != null:
			chameleon13_1.queue_free()
			is_platform13_1_free = 0
		elif golem13_1 != null:
			golem13_1.queue_free()
			is_platform13_1_free = 0
		elif spikes13_1 != null:
			spikes13_1.queue_free()
			is_platform13_1_free = 0
	elif platform13_1.visible == true:
		platform13_1.set_collision_layer_value(3, true)
		if is_platform13_1_free >= 1:
			is_platform13_1_free = 0
			if monster_plant13_1 != null:
				monster_plant13_1.queue_free()
				is_platform13_1_free = 0
			elif sandstorm13_1 != null:
				is_platform13_1_free = 0
				sandstorm13_1.queue_free()
			elif cactus13_1 != null:
				cactus13_1.queue_free()
				is_platform13_1_free = 0
			elif chameleon13_1 != null:
				chameleon13_1.queue_free()
				is_platform13_1_free = 0
			elif golem13_1 != null:
				golem13_1.queue_free()
				is_platform13_1_free = 0
			elif spikes13_1 != null:
				spikes13_1.queue_free()
				is_platform13_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform13_1_free == 0:
				monster_plant13_1 = monster_plant.instantiate()
				platform13_1.add_child(monster_plant13_1)
				monster_plant13_1.position.y -= 70
				is_platform13_1_free += 1
		elif random_t == "sandstorm":
			if is_platform13_1_free == 0:
				sandstorm13_1 = sandstorm.instantiate()
				platform13_1.add_child(sandstorm13_1)
				sandstorm13_1.position.y -= 80
				is_platform13_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform13_1_free == 0:
				cactus13_1 = cactus.instantiate()
				platform13_1.add_child(cactus13_1)
				cactus13_1.position.y -= 80
				is_platform13_1_free += 1
		elif random_t == "chameleon":
			if is_platform13_1_free == 0:
				chameleon13_1 = chameleon.instantiate()
				platform13_1.add_child(chameleon13_1)
				chameleon13_1.position.x += 12
				is_platform13_1_free += 1
		elif random_t == "golem":
			if is_platform13_1_free == 0:
				golem13_1 = golem.instantiate()
				platform13_1.add_child(golem13_1)
				golem13_1.position.y -= 150
				is_platform13_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform13_1_free == 0:
				spikes13_1 = spikes.instantiate()
				platform13_1.add_child(spikes13_1)
				spikes13_1.position.y += 32
				is_platform13_1_free += 1
		elif random_t == "nothing":
			if is_platform13_1_free == 0:
				is_platform13_1_free +=1
	if platform13_2.visible == false:
		platform13_2.set_collision_layer_value(3, false)
		if monster_plant13_2 != null:
			monster_plant13_2.queue_free()
			is_platform13_2_free = 0
		elif sandstorm13_2 != null:
			sandstorm13_2.queue_free()
			is_platform13_2_free = 0
		elif cactus13_2 != null:
			cactus13_2.queue_free()
			is_platform13_2_free = 0
		elif chameleon13_2 != null:
			chameleon13_2.queue_free()
			is_platform13_2_free = 0
		elif golem13_2 != null:
			golem13_2.queue_free()
			is_platform13_2_free = 0
		elif spikes13_2 != null:
			spikes13_2.queue_free()
			is_platform13_2_free = 0
	elif platform13_2.visible == true:
		platform13_2.set_collision_layer_value(3, true)
		if is_platform13_2_free >= 1:
			is_platform13_2_free = 0
			if monster_plant13_2 != null:
				monster_plant13_2.queue_free()
				is_platform13_2_free = 0
			elif sandstorm13_2 != null:
				sandstorm13_2.queue_free()
				is_platform13_2_free = 0
			elif cactus13_2 != null:
				cactus13_2.queue_free()
				is_platform13_2_free = 0
			elif chameleon13_2 != null:
				chameleon13_2.queue_free()
				is_platform13_2_free = 0
			elif golem13_2 != null:
				golem13_2.queue_free()
				is_platform13_2_free = 0
			elif spikes13_2 != null:
				spikes13_2.queue_free()
				is_platform13_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform13_2_free == 0:
				monster_plant13_2 = monster_plant.instantiate()
				platform13_2.add_child(monster_plant13_2)
				monster_plant13_2.position.y -= 70
				is_platform13_2_free += 1
		elif random_t == "sandstorm":
			if is_platform13_2_free == 0:
				sandstorm13_2 = sandstorm.instantiate()
				platform13_2.add_child(sandstorm13_2)
				sandstorm13_2.position.y -= 80
				is_platform13_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform13_2_free == 0:
				cactus13_2 = cactus.instantiate()
				platform13_2.add_child(cactus13_2)
				cactus13_2.position.y -= 80
				is_platform13_2_free += 1
		elif random_t == "chameleon":
			if is_platform13_2_free == 0:
				chameleon13_2 = chameleon.instantiate()
				platform13_2.add_child(chameleon13_2)
				chameleon13_2.position.x += 12
				is_platform13_2_free += 1
		elif random_t == "golem":
			if is_platform13_2_free == 0:
				golem13_2 = golem.instantiate()
				platform13_2.add_child(golem13_2)
				golem13_2.position.y -= 150
				is_platform13_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform13_2_free == 0:
				spikes13_2 = spikes.instantiate()
				platform13_2.add_child(spikes13_2)
				spikes13_2.position.y += 32
				is_platform13_2_free += 1
		elif random_t == "nothing":
			if is_platform13_2_free == 0:
				is_platform13_2_free +=1
	if platform13_1.visible == false and platform13_2.visible == false:
		platform13_3.global_position.x = randf_range(70,570)
		platform13_3.visible = true
		platform13_3.set_collision_layer_value(3, true)
		if is_platform13_3_free >= 1:
			is_platform13_3_free = 0
			if monster_plant13_3 != null:
				monster_plant13_3.queue_free()
				is_platform13_3_free = 0
			elif sandstorm13_3 != null:
				sandstorm13_3.queue_free()
				is_platform13_3_free = 0
			elif cactus13_3 != null:
				cactus13_3.queue_free()
				is_platform13_3_free = 0
			elif chameleon13_3 != null:
				chameleon13_3.queue_free()
				is_platform13_3_free = 0
			elif golem13_3 != null:
				golem13_3.queue_free()
				is_platform13_3_free = 0
			elif spikes13_3 != null:
				spikes13_3.queue_free()
				is_platform13_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform13_3_free == 0:
				monster_plant13_3 = monster_plant.instantiate()
				platform13_3.add_child(monster_plant13_3)
				monster_plant13_3.position.y -= 70
				is_platform13_3_free += 1
		elif random_t == "sandstorm":
			if is_platform13_3_free == 0:
				sandstorm13_3 = sandstorm.instantiate()
				platform13_3.add_child(sandstorm13_3)
				sandstorm13_3.position.y -= 80
				is_platform13_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform13_3_free == 0:
				cactus13_3 = cactus.instantiate()
				platform13_3.add_child(cactus13_3)
				cactus13_3.position.y -= 80
				is_platform13_3_free += 1
		elif random_t == "chameleon":
			if is_platform13_3_free == 0:
				chameleon13_3 = chameleon.instantiate()
				platform13_3.add_child(chameleon13_3)
				chameleon13_3.position.x += 12
				is_platform13_3_free += 1
		elif random_t == "golem":
			if is_platform13_3_free == 0:
				golem13_3 = golem.instantiate()
				platform13_3.add_child(golem13_3)
				golem13_3.position.y -= 150
				is_platform13_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform13_3_free == 0:
				spikes13_3 = spikes.instantiate()
				platform13_3.add_child(spikes13_3)
				spikes13_3.position.y += 32
				is_platform13_3_free += 1
		elif random_t == "nothing":
			if is_platform13_3_free == 0:
				is_platform13_3_free +=1
	if platform13_3.visible == false:
		platform13_3.set_collision_layer_value(3, false)
		if monster_plant13_3 != null:
			monster_plant13_3.queue_free()
			is_platform13_3_free = 0
		elif sandstorm13_3 != null:
			sandstorm13_3.queue_free()
			is_platform13_3_free = 0
		elif cactus13_3 != null:
			cactus13_3.queue_free()
			is_platform13_3_free = 0
		elif chameleon13_3 != null:
			chameleon13_3.queue_free()
			is_platform13_3_free = 0
		elif golem13_3 != null:
			golem13_3.queue_free()
			is_platform13_3_free = 0
		elif spikes13_3 != null:
			spikes13_3.queue_free()
			is_platform13_3_free = 0

func norm_p14_visible_false():
	$platforms/platform14/Normal_platform1.visible = false
	$platforms/platform14/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform14/Normal_platform2.visible = false
	$platforms/platform14/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform14/Normal_platform3.visible = false
	$platforms/platform14/Normal_platform3.set_collision_layer_value(3, false)

func sand_p14_visible_false():
	$platforms/platform14/Sand_platform1.visible = false
	$platforms/platform14/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform14/Sand_platform2.visible = false
	$platforms/platform14/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform14/Sand_platform3.visible = false
	$platforms/platform14/Sand_platform3.set_collision_layer_value(3, false)

func random_traps14():
	if biome_number == "1":
		platform14_1 = $platforms/platform14/Normal_platform1
		platform14_2 = $platforms/platform14/Normal_platform2
		platform14_3 = $platforms/platform14/Normal_platform3
	elif biome_number == "2":
		platform14_1 = $platforms/platform14/Sand_platform1
		platform14_2 = $platforms/platform14/Sand_platform2
		platform14_3 = $platforms/platform14/Sand_platform3
		norm_p14_visible_false()
	elif biome_number == "3":
		platform14_1 = $platforms/platform14/Rock_platform
		platform14_2 = $platforms/platform14/Rock_platform2
		platform14_3 = $platforms/platform14/Rock_platform3
		norm_p14_visible_false()
		sand_p14_visible_false()
	platform14_1.global_position.x = randf_range(70,257)
	platform14_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform14_1.visible = visible_or_invisible1
	platform14_2.visible = visible_or_invisible2
	platform14_3.visible = false
	platform14_3.set_collision_layer_value(3, false)
	if platform14_1.visible == false:
		platform14_1.set_collision_layer_value(3, false)
		if monster_plant14_1 != null:
			monster_plant14_1.queue_free()
			is_platform14_1_free = 0
		elif sandstorm14_1 != null:
			sandstorm14_1.queue_free()
			is_platform14_1_free = 0
		elif cactus14_1 != null:
			cactus14_1.queue_free()
			is_platform14_1_free = 0
		elif chameleon14_1 != null:
			chameleon14_1.queue_free()
			is_platform14_1_free = 0
		elif golem14_1 != null:
			golem14_1.queue_free()
			is_platform14_1_free = 0
		elif spikes14_1 != null:
			spikes14_1.queue_free()
			is_platform14_1_free = 0
	elif platform14_1.visible == true:
		platform14_1.set_collision_layer_value(3, true)
		if is_platform14_1_free >= 1:
			is_platform14_1_free = 0
			if monster_plant14_1 != null:
				monster_plant14_1.queue_free()
				is_platform14_1_free = 0
			elif sandstorm14_1 != null:
				is_platform14_1_free = 0
				sandstorm14_1.queue_free()
			elif cactus14_1 != null:
				cactus14_1.queue_free()
				is_platform14_1_free = 0
			elif chameleon14_1 != null:
				chameleon14_1.queue_free()
				is_platform14_1_free = 0
			elif golem14_1 != null:
				golem14_1.queue_free()
				is_platform14_1_free = 0
			elif spikes14_1 != null:
				spikes14_1.queue_free()
				is_platform14_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform14_1_free == 0:
				monster_plant14_1 = monster_plant.instantiate()
				platform14_1.add_child(monster_plant14_1)
				monster_plant14_1.position.y -= 70
				is_platform14_1_free += 1
		elif random_t == "sandstorm":
			if is_platform14_1_free == 0:
				sandstorm14_1 = sandstorm.instantiate()
				platform14_1.add_child(sandstorm14_1)
				sandstorm14_1.position.y -= 80
				is_platform14_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform14_1_free == 0:
				cactus14_1 = cactus.instantiate()
				platform14_1.add_child(cactus14_1)
				cactus14_1.position.y -= 80
				is_platform14_1_free += 1
		elif random_t == "chameleon":
			if is_platform14_1_free == 0:
				chameleon14_1 = chameleon.instantiate()
				platform14_1.add_child(chameleon14_1)
				chameleon14_1.position.x += 12
				is_platform14_1_free += 1
		elif random_t == "golem":
			if is_platform14_1_free == 0:
				golem14_1 = golem.instantiate()
				platform14_1.add_child(golem14_1)
				golem14_1.position.y -= 150
				is_platform14_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform14_1_free == 0:
				spikes14_1 = spikes.instantiate()
				platform14_1.add_child(spikes14_1)
				spikes14_1.position.y += 32
				is_platform14_1_free += 1
		elif random_t == "nothing":
			if is_platform14_1_free == 0:
				is_platform14_1_free +=1
	if platform14_2.visible == false:
		platform14_2.set_collision_layer_value(3, false)
		if monster_plant14_2 != null:
			monster_plant14_2.queue_free()
			is_platform14_2_free = 0
		elif sandstorm14_2 != null:
			sandstorm14_2.queue_free()
			is_platform14_2_free = 0
		elif cactus14_2 != null:
			cactus14_2.queue_free()
			is_platform14_2_free = 0
		elif chameleon14_2 != null:
			chameleon14_2.queue_free()
			is_platform14_2_free = 0
		elif golem14_2 != null:
			golem14_2.queue_free()
			is_platform14_2_free = 0
		elif spikes14_2 != null:
			spikes14_2.queue_free()
			is_platform14_2_free = 0
	elif platform14_2.visible == true:
		platform14_2.set_collision_layer_value(3, true)
		if is_platform14_2_free >= 1:
			is_platform14_2_free = 0
			if monster_plant14_2 != null:
				monster_plant14_2.queue_free()
				is_platform14_2_free = 0
			elif sandstorm14_2 != null:
				sandstorm14_2.queue_free()
				is_platform14_2_free = 0
			elif cactus14_2 != null:
				cactus14_2.queue_free()
				is_platform14_2_free = 0
			elif chameleon14_2 != null:
				chameleon14_2.queue_free()
				is_platform14_2_free = 0
			elif golem14_2 != null:
				golem14_2.queue_free()
				is_platform14_2_free = 0
			elif spikes14_2 != null:
				spikes14_2.queue_free()
				is_platform14_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform14_2_free == 0:
				monster_plant14_2 = monster_plant.instantiate()
				platform14_2.add_child(monster_plant14_2)
				monster_plant14_2.position.y -= 70
				is_platform14_2_free += 1
		elif random_t == "sandstorm":
			if is_platform14_2_free == 0:
				sandstorm14_2 = sandstorm.instantiate()
				platform14_2.add_child(sandstorm14_2)
				sandstorm14_2.position.y -= 80
				is_platform14_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform14_2_free == 0:
				cactus14_2 = cactus.instantiate()
				platform14_2.add_child(cactus14_2)
				cactus14_2.position.y -= 80
				is_platform14_2_free += 1
		elif random_t == "chameleon":
			if is_platform14_2_free == 0:
				chameleon14_2 = chameleon.instantiate()
				platform14_2.add_child(chameleon14_2)
				chameleon14_2.position.x += 12
				is_platform14_2_free += 1
		elif random_t == "golem":
			if is_platform14_2_free == 0:
				golem14_2 = golem.instantiate()
				platform14_2.add_child(golem14_2)
				golem14_2.position.y -= 150
				is_platform14_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform14_2_free == 0:
				spikes14_2 = spikes.instantiate()
				platform14_2.add_child(spikes14_2)
				spikes14_2.position.y += 32
				is_platform14_2_free += 1
		elif random_t == "nothing":
			if is_platform14_2_free == 0:
				is_platform14_2_free +=1
	if platform14_1.visible == false and platform14_2.visible == false:
		platform14_3.global_position.x = randf_range(70,570)
		platform14_3.visible = true
		platform14_3.set_collision_layer_value(3, true)
		if is_platform14_3_free >= 1:
			is_platform14_3_free = 0
			if monster_plant14_3 != null:
				monster_plant14_3.queue_free()
				is_platform14_3_free = 0
			elif sandstorm14_3 != null:
				sandstorm14_3.queue_free()
				is_platform14_3_free = 0
			elif cactus14_3 != null:
				cactus14_3.queue_free()
				is_platform14_3_free = 0
			elif chameleon14_3 != null:
				chameleon14_3.queue_free()
				is_platform14_3_free = 0
			elif golem14_3 != null:
				golem14_3.queue_free()
				is_platform14_3_free = 0
			elif spikes14_3 != null:
				spikes14_3.queue_free()
				is_platform14_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform14_3_free == 0:
				monster_plant14_3 = monster_plant.instantiate()
				platform14_3.add_child(monster_plant14_3)
				monster_plant14_3.position.y -= 70
				is_platform14_3_free += 1
		elif random_t == "sandstorm":
			if is_platform14_3_free == 0:
				sandstorm14_3 = sandstorm.instantiate()
				platform14_3.add_child(sandstorm14_3)
				sandstorm14_3.position.y -= 80
				is_platform14_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform14_3_free == 0:
				cactus14_3 = cactus.instantiate()
				platform14_3.add_child(cactus14_3)
				cactus14_3.position.y -= 80
				is_platform14_3_free += 1
		elif random_t == "chameleon":
			if is_platform14_3_free == 0:
				chameleon14_3 = chameleon.instantiate()
				platform14_3.add_child(chameleon14_3)
				chameleon14_3.position.x += 12
				is_platform14_3_free += 1
		elif random_t == "golem":
			if is_platform14_3_free == 0:
				golem14_3 = golem.instantiate()
				platform14_3.add_child(golem14_3)
				golem14_3.position.y -= 150
				is_platform14_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform14_3_free == 0:
				spikes14_3 = spikes.instantiate()
				platform14_3.add_child(spikes14_3)
				spikes14_3.position.y += 32
				is_platform14_3_free += 1
		elif random_t == "nothing":
			if is_platform14_3_free == 0:
				is_platform14_3_free +=1
	if platform14_3.visible == false:
		platform14_3.set_collision_layer_value(3, false)
		if monster_plant14_3 != null:
			monster_plant14_3.queue_free()
			is_platform14_3_free = 0
		elif sandstorm14_3 != null:
			sandstorm14_3.queue_free()
			is_platform14_3_free = 0
		elif cactus14_3 != null:
			cactus14_3.queue_free()
			is_platform14_3_free = 0
		elif chameleon14_3 != null:
			chameleon14_3.queue_free()
			is_platform14_3_free = 0
		elif golem14_3 != null:
			golem14_3.queue_free()
			is_platform14_3_free = 0
		elif spikes14_3 != null:
			spikes14_3.queue_free()
			is_platform14_3_free = 0

func norm_p15_visible_false():
	$platforms/platform15/Normal_platform1.visible = false
	$platforms/platform15/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform15/Normal_platform2.visible = false
	$platforms/platform15/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform15/Normal_platform3.visible = false
	$platforms/platform15/Normal_platform3.set_collision_layer_value(3, false)

func sand_p15_visible_false():
	$platforms/platform15/Sand_platform1.visible = false
	$platforms/platform15/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform15/Sand_platform2.visible = false
	$platforms/platform15/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform15/Sand_platform3.visible = false
	$platforms/platform15/Sand_platform3.set_collision_layer_value(3, false)

func random_traps15():
	if biome_number == "1":
		platform15_1 = $platforms/platform15/Normal_platform1
		platform15_2 = $platforms/platform15/Normal_platform2
		platform15_3 = $platforms/platform15/Normal_platform3
	elif biome_number == "2":
		platform15_1 = $platforms/platform15/Sand_platform1
		platform15_2 = $platforms/platform15/Sand_platform2
		platform15_3 = $platforms/platform15/Sand_platform3
		norm_p15_visible_false()
	elif biome_number == "3":
		platform15_1 = $platforms/platform15/Rock_platform
		platform15_2 = $platforms/platform15/Rock_platform2
		platform15_3 = $platforms/platform15/Rock_platform3
		norm_p15_visible_false()
		sand_p15_visible_false()
	platform15_1.global_position.x = randf_range(70,257)
	platform15_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform15_1.visible = visible_or_invisible1
	platform15_2.visible = visible_or_invisible2
	platform15_3.visible = false
	platform15_3.set_collision_layer_value(3, false)
	if platform15_1.visible == false:
		platform15_1.set_collision_layer_value(3, false)
		if monster_plant15_1 != null:
			monster_plant15_1.queue_free()
			is_platform15_1_free = 0
		elif sandstorm15_1 != null:
			sandstorm15_1.queue_free()
			is_platform15_1_free = 0
		elif cactus15_1 != null:
			cactus15_1.queue_free()
			is_platform15_1_free = 0
		elif chameleon15_1 != null:
			chameleon15_1.queue_free()
			is_platform15_1_free = 0
		elif golem15_1 != null:
			golem15_1.queue_free()
			is_platform15_1_free = 0
		elif spikes15_1 != null:
			spikes15_1.queue_free()
			is_platform15_1_free = 0
	elif platform15_1.visible == true:
		platform15_1.set_collision_layer_value(3, true)
		if is_platform15_1_free >= 1:
			is_platform15_1_free = 0
			if monster_plant15_1 != null:
				monster_plant15_1.queue_free()
				is_platform15_1_free = 0
			elif sandstorm15_1 != null:
				is_platform15_1_free = 0
				sandstorm15_1.queue_free()
			elif cactus15_1 != null:
				cactus15_1.queue_free()
				is_platform15_1_free = 0
			elif chameleon15_1 != null:
				chameleon15_1.queue_free()
				is_platform15_1_free = 0
			elif golem15_1 != null:
				golem15_1.queue_free()
				is_platform15_1_free = 0
			elif spikes15_1 != null:
				spikes15_1.queue_free()
				is_platform15_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform15_1_free == 0:
				monster_plant15_1 = monster_plant.instantiate()
				platform15_1.add_child(monster_plant15_1)
				monster_plant15_1.position.y -= 70
				is_platform15_1_free += 1
		elif random_t == "sandstorm":
			if is_platform15_1_free == 0:
				sandstorm15_1 = sandstorm.instantiate()
				platform15_1.add_child(sandstorm15_1)
				sandstorm15_1.position.y -= 80
				is_platform15_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform15_1_free == 0:
				cactus15_1 = cactus.instantiate()
				platform15_1.add_child(cactus15_1)
				cactus15_1.position.y -= 80
				is_platform15_1_free += 1
		elif random_t == "chameleon":
			if is_platform15_1_free == 0:
				chameleon15_1 = chameleon.instantiate()
				platform15_1.add_child(chameleon15_1)
				chameleon15_1.position.x += 12
				is_platform15_1_free += 1
		elif random_t == "golem":
			if is_platform15_1_free == 0:
				golem15_1 = golem.instantiate()
				platform15_1.add_child(golem15_1)
				golem15_1.position.y -= 150
				is_platform15_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform15_1_free == 0:
				spikes15_1 = spikes.instantiate()
				platform15_1.add_child(spikes15_1)
				spikes15_1.position.y += 32
				is_platform15_1_free += 1
		elif random_t == "nothing":
			if is_platform15_1_free == 0:
				is_platform15_1_free +=1
	if platform15_2.visible == false:
		platform15_2.set_collision_layer_value(3, false)
		if monster_plant15_2 != null:
			monster_plant15_2.queue_free()
			is_platform15_2_free = 0
		elif sandstorm15_2 != null:
			sandstorm15_2.queue_free()
			is_platform15_2_free = 0
		elif cactus15_2 != null:
			cactus15_2.queue_free()
			is_platform15_2_free = 0
		elif chameleon15_2 != null:
			chameleon15_2.queue_free()
			is_platform15_2_free = 0
		elif golem15_2 != null:
			golem15_2.queue_free()
			is_platform15_2_free = 0
		elif spikes15_2 != null:
			spikes15_2.queue_free()
			is_platform15_2_free = 0
	elif platform15_2.visible == true:
		platform15_2.set_collision_layer_value(3, true)
		if is_platform15_2_free >= 1:
			is_platform15_2_free = 0
			if monster_plant15_2 != null:
				monster_plant15_2.queue_free()
				is_platform15_2_free = 0
			elif sandstorm15_2 != null:
				sandstorm15_2.queue_free()
				is_platform15_2_free = 0
			elif cactus15_2 != null:
				cactus15_2.queue_free()
				is_platform15_2_free = 0
			elif chameleon15_2 != null:
				chameleon15_2.queue_free()
				is_platform15_2_free = 0
			elif golem15_2 != null:
				golem15_2.queue_free()
				is_platform15_2_free = 0
			elif spikes15_2 != null:
				spikes15_2.queue_free()
				is_platform15_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform15_2_free == 0:
				monster_plant15_2 = monster_plant.instantiate()
				platform15_2.add_child(monster_plant15_2)
				monster_plant15_2.position.y -= 70
				is_platform15_2_free += 1
		elif random_t == "sandstorm":
			if is_platform15_2_free == 0:
				sandstorm15_2 = sandstorm.instantiate()
				platform15_2.add_child(sandstorm15_2)
				sandstorm15_2.position.y -= 80
				is_platform15_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform15_2_free == 0:
				cactus15_2 = cactus.instantiate()
				platform15_2.add_child(cactus15_2)
				cactus15_2.position.y -= 80
				is_platform15_2_free += 1
		elif random_t == "chameleon":
			if is_platform15_2_free == 0:
				chameleon15_2 = chameleon.instantiate()
				platform15_2.add_child(chameleon15_2)
				chameleon15_2.position.x += 12
				is_platform15_2_free += 1
		elif random_t == "golem":
			if is_platform15_2_free == 0:
				golem15_2 = golem.instantiate()
				platform15_2.add_child(golem15_2)
				golem15_2.position.y -= 150
				is_platform15_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform15_2_free == 0:
				spikes15_2 = spikes.instantiate()
				platform15_2.add_child(spikes15_2)
				spikes15_2.position.y += 32
				is_platform15_2_free += 1
		elif random_t == "nothing":
			if is_platform15_2_free == 0:
				is_platform15_2_free +=1
	if platform15_1.visible == false and platform15_2.visible == false:
		platform15_3.global_position.x = randf_range(70,570)
		platform15_3.visible = true
		platform15_3.set_collision_layer_value(3, true)
		if is_platform15_3_free >= 1:
			is_platform15_3_free = 0
			if monster_plant15_3 != null:
				monster_plant15_3.queue_free()
				is_platform15_3_free = 0
			elif sandstorm15_3 != null:
				sandstorm15_3.queue_free()
				is_platform15_3_free = 0
			elif cactus15_3 != null:
				cactus15_3.queue_free()
				is_platform15_3_free = 0
			elif chameleon15_3 != null:
				chameleon15_3.queue_free()
				is_platform15_3_free = 0
			elif golem15_3 != null:
				golem15_3.queue_free()
				is_platform15_3_free = 0
			elif spikes15_3 != null:
				spikes15_3.queue_free()
				is_platform15_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform15_3_free == 0:
				monster_plant15_3 = monster_plant.instantiate()
				platform15_3.add_child(monster_plant15_3)
				monster_plant15_3.position.y -= 70
				is_platform15_3_free += 1
		elif random_t == "sandstorm":
			if is_platform15_3_free == 0:
				sandstorm15_3 = sandstorm.instantiate()
				platform15_3.add_child(sandstorm15_3)
				sandstorm15_3.position.y -= 80
				is_platform15_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform15_3_free == 0:
				cactus15_3 = cactus.instantiate()
				platform15_3.add_child(cactus15_3)
				cactus15_3.position.y -= 80
				is_platform15_3_free += 1
		elif random_t == "chameleon":
			if is_platform15_3_free == 0:
				chameleon15_3 = chameleon.instantiate()
				platform15_3.add_child(chameleon15_3)
				chameleon15_3.position.x += 12
				is_platform15_3_free += 1
		elif random_t == "golem":
			if is_platform15_3_free == 0:
				golem15_3 = golem.instantiate()
				platform15_3.add_child(golem15_3)
				golem15_3.position.y -= 150
				is_platform15_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform15_3_free == 0:
				spikes15_3 = spikes.instantiate()
				platform15_3.add_child(spikes15_3)
				spikes15_3.position.y += 32
				is_platform15_3_free += 1
		elif random_t == "nothing":
			if is_platform15_3_free == 0:
				is_platform15_3_free +=1
	if platform15_3.visible == false:
		platform15_3.set_collision_layer_value(3, false)
		if monster_plant15_3 != null:
			monster_plant15_3.queue_free()
			is_platform15_3_free = 0
		elif sandstorm15_3 != null:
			sandstorm15_3.queue_free()
			is_platform15_3_free = 0
		elif cactus15_3 != null:
			cactus15_3.queue_free()
			is_platform15_3_free = 0
		elif chameleon15_3 != null:
			chameleon15_3.queue_free()
			is_platform15_3_free = 0
		elif golem15_3 != null:
			golem15_3.queue_free()
			is_platform15_3_free = 0
		elif spikes15_3 != null:
			spikes15_3.queue_free()
			is_platform15_3_free = 0

func norm_p16_visible_false():
	$platforms/platform16/Normal_platform1.visible = false
	$platforms/platform16/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform16/Normal_platform2.visible = false
	$platforms/platform16/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform16/Normal_platform3.visible = false
	$platforms/platform16/Normal_platform3.set_collision_layer_value(3, false)

func sand_p16_visible_false():
	$platforms/platform16/Sand_platform1.visible = false
	$platforms/platform16/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform16/Sand_platform2.visible = false
	$platforms/platform16/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform16/Sand_platform3.visible = false
	$platforms/platform16/Sand_platform3.set_collision_layer_value(3, false)

func random_traps16():
	if biome_number == "1":
		platform16_1 = $platforms/platform16/Normal_platform1
		platform16_2 = $platforms/platform16/Normal_platform2
		platform16_3 = $platforms/platform16/Normal_platform3
	elif biome_number == "2":
		platform16_1 = $platforms/platform16/Sand_platform1
		platform16_2 = $platforms/platform16/Sand_platform2
		platform16_3 = $platforms/platform16/Sand_platform3
		norm_p16_visible_false()
	elif biome_number == "3":
		platform16_1 = $platforms/platform16/Rock_platform
		platform16_2 = $platforms/platform16/Rock_platform2
		platform16_3 = $platforms/platform16/Rock_platform3
		norm_p16_visible_false()
		sand_p16_visible_false()
	platform16_1.global_position.x = randf_range(70,257)
	platform16_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform16_1.visible = visible_or_invisible1
	platform16_2.visible = visible_or_invisible2
	platform16_3.visible = false
	platform16_3.set_collision_layer_value(3, false)
	if platform16_1.visible == false:
		platform16_1.set_collision_layer_value(3, false)
		if monster_plant16_1 != null:
			monster_plant16_1.queue_free()
			is_platform16_1_free = 0
		elif sandstorm16_1 != null:
			sandstorm16_1.queue_free()
			is_platform16_1_free = 0
		elif cactus16_1 != null:
			cactus16_1.queue_free()
			is_platform16_1_free = 0
		elif chameleon16_1 != null:
			chameleon16_1.queue_free()
			is_platform16_1_free = 0
		elif golem16_1 != null:
			golem16_1.queue_free()
			is_platform16_1_free = 0
		elif spikes16_1 != null:
			spikes16_1.queue_free()
			is_platform16_1_free = 0
	elif platform16_1.visible == true:
		platform16_1.set_collision_layer_value(3, true)
		if is_platform16_1_free >= 1:
			is_platform16_1_free = 0
			if monster_plant16_1 != null:
				monster_plant16_1.queue_free()
				is_platform16_1_free = 0
			elif sandstorm16_1 != null:
				is_platform16_1_free = 0
				sandstorm16_1.queue_free()
			elif cactus16_1 != null:
				cactus16_1.queue_free()
				is_platform16_1_free = 0
			elif chameleon16_1 != null:
				chameleon16_1.queue_free()
				is_platform16_1_free = 0
			elif golem16_1 != null:
				golem16_1.queue_free()
				is_platform16_1_free = 0
			elif spikes16_1 != null:
				spikes16_1.queue_free()
				is_platform16_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform16_1_free == 0:
				monster_plant16_1 = monster_plant.instantiate()
				platform16_1.add_child(monster_plant16_1)
				monster_plant16_1.position.y -= 70
				is_platform16_1_free += 1
		elif random_t == "sandstorm":
			if is_platform16_1_free == 0:
				sandstorm16_1 = sandstorm.instantiate()
				platform16_1.add_child(sandstorm16_1)
				sandstorm16_1.position.y -= 80
				is_platform16_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform16_1_free == 0:
				cactus16_1 = cactus.instantiate()
				platform16_1.add_child(cactus16_1)
				cactus16_1.position.y -= 80
				is_platform16_1_free += 1
		elif random_t == "chameleon":
			if is_platform16_1_free == 0:
				chameleon16_1 = chameleon.instantiate()
				platform16_1.add_child(chameleon16_1)
				chameleon16_1.position.x += 12
				is_platform16_1_free += 1
		elif random_t == "golem":
			if is_platform16_1_free == 0:
				golem16_1 = golem.instantiate()
				platform16_1.add_child(golem16_1)
				golem16_1.position.y -= 150
				is_platform16_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform16_1_free == 0:
				spikes16_1 = spikes.instantiate()
				platform16_1.add_child(spikes16_1)
				spikes16_1.position.y += 32
				is_platform16_1_free += 1
		elif random_t == "nothing":
			if is_platform16_1_free == 0:
				is_platform16_1_free +=1
	if platform16_2.visible == false:
		platform16_2.set_collision_layer_value(3, false)
		if monster_plant16_2 != null:
			monster_plant16_2.queue_free()
			is_platform16_2_free = 0
		elif sandstorm16_2 != null:
			sandstorm16_2.queue_free()
			is_platform16_2_free = 0
		elif cactus16_2 != null:
			cactus16_2.queue_free()
			is_platform16_2_free = 0
		elif chameleon16_2 != null:
			chameleon16_2.queue_free()
			is_platform16_2_free = 0
		elif golem16_2 != null:
			golem16_2.queue_free()
			is_platform16_2_free = 0
		elif spikes16_2 != null:
			spikes16_2.queue_free()
			is_platform16_2_free = 0
	elif platform16_2.visible == true:
		platform16_2.set_collision_layer_value(3, true)
		if is_platform16_2_free >= 1:
			is_platform16_2_free = 0
			if monster_plant16_2 != null:
				monster_plant16_2.queue_free()
				is_platform16_2_free = 0
			elif sandstorm16_2 != null:
				sandstorm16_2.queue_free()
				is_platform16_2_free = 0
			elif cactus16_2 != null:
				cactus16_2.queue_free()
				is_platform16_2_free = 0
			elif chameleon16_2 != null:
				chameleon16_2.queue_free()
				is_platform16_2_free = 0
			elif golem16_2 != null:
				golem16_2.queue_free()
				is_platform16_2_free = 0
			elif spikes16_2 != null:
				spikes16_2.queue_free()
				is_platform16_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform16_2_free == 0:
				monster_plant16_2 = monster_plant.instantiate()
				platform16_2.add_child(monster_plant16_2)
				monster_plant16_2.position.y -= 70
				is_platform16_2_free += 1
		elif random_t == "sandstorm":
			if is_platform16_2_free == 0:
				sandstorm16_2 = sandstorm.instantiate()
				platform16_2.add_child(sandstorm16_2)
				sandstorm16_2.position.y -= 80
				is_platform16_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform16_2_free == 0:
				cactus16_2 = cactus.instantiate()
				platform16_2.add_child(cactus16_2)
				cactus16_2.position.y -= 80
				is_platform16_2_free += 1
		elif random_t == "chameleon":
			if is_platform16_2_free == 0:
				chameleon16_2 = chameleon.instantiate()
				platform16_2.add_child(chameleon16_2)
				chameleon16_2.position.x += 12
				is_platform16_2_free += 1
		elif random_t == "golem":
			if is_platform16_2_free == 0:
				golem16_2 = golem.instantiate()
				platform16_2.add_child(golem16_2)
				golem16_2.position.y -= 150
				is_platform16_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform16_2_free == 0:
				spikes16_2 = spikes.instantiate()
				platform16_2.add_child(spikes16_2)
				spikes16_2.position.y += 32
				is_platform16_2_free += 1
		elif random_t == "nothing":
			if is_platform16_2_free == 0:
				is_platform16_2_free +=1
	if platform16_1.visible == false and platform16_2.visible == false:
		platform16_3.global_position.x = randf_range(70,570)
		platform16_3.visible = true
		platform16_3.set_collision_layer_value(3, true)
		if is_platform16_3_free >= 1:
			is_platform16_3_free = 0
			if monster_plant16_3 != null:
				monster_plant16_3.queue_free()
				is_platform16_3_free = 0
			elif sandstorm16_3 != null:
				sandstorm16_3.queue_free()
				is_platform16_3_free = 0
			elif cactus16_3 != null:
				cactus16_3.queue_free()
				is_platform16_3_free = 0
			elif chameleon16_3 != null:
				chameleon16_3.queue_free()
				is_platform16_3_free = 0
			elif golem16_3 != null:
				golem16_3.queue_free()
				is_platform16_3_free = 0
			elif spikes16_3 != null:
				spikes16_3.queue_free()
				is_platform16_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform16_3_free == 0:
				monster_plant16_3 = monster_plant.instantiate()
				platform16_3.add_child(monster_plant16_3)
				monster_plant16_3.position.y -= 70
				is_platform16_3_free += 1
		elif random_t == "sandstorm":
			if is_platform16_3_free == 0:
				sandstorm16_3 = sandstorm.instantiate()
				platform16_3.add_child(sandstorm16_3)
				sandstorm16_3.position.y -= 80
				is_platform16_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform16_3_free == 0:
				cactus16_3 = cactus.instantiate()
				platform16_3.add_child(cactus16_3)
				cactus16_3.position.y -= 80
				is_platform16_3_free += 1
		elif random_t == "chameleon":
			if is_platform16_3_free == 0:
				chameleon16_3 = chameleon.instantiate()
				platform16_3.add_child(chameleon16_3)
				chameleon16_3.position.x += 12
				is_platform16_3_free += 1
		elif random_t == "golem":
			if is_platform16_3_free == 0:
				golem16_3 = golem.instantiate()
				platform16_3.add_child(golem16_3)
				golem16_3.position.y -= 150
				is_platform16_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform16_3_free == 0:
				spikes16_3 = spikes.instantiate()
				platform16_3.add_child(spikes16_3)
				spikes16_3.position.y += 32
				is_platform16_3_free += 1
		elif random_t == "nothing":
			if is_platform16_3_free == 0:
				is_platform16_3_free +=1
	if platform16_3.visible == false:
		platform16_3.set_collision_layer_value(3, false)
		if monster_plant16_3 != null:
			monster_plant16_3.queue_free()
			is_platform16_3_free = 0
		elif sandstorm16_3 != null:
			sandstorm16_3.queue_free()
			is_platform16_3_free = 0
		elif cactus16_3 != null:
			cactus16_3.queue_free()
			is_platform16_3_free = 0
		elif chameleon16_3 != null:
			chameleon16_3.queue_free()
			is_platform16_3_free = 0
		elif golem16_3 != null:
			golem16_3.queue_free()
			is_platform16_3_free = 0
		elif spikes16_3 != null:
			spikes16_3.queue_free()
			is_platform16_3_free = 0

func norm_p17_visible_false():
	$platforms/platform17/Normal_platform1.visible = false
	$platforms/platform17/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform17/Normal_platform2.visible = false
	$platforms/platform17/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform17/Normal_platform3.visible = false
	$platforms/platform17/Normal_platform3.set_collision_layer_value(3, false)

func sand_p17_visible_false():
	$platforms/platform17/Sand_platform1.visible = false
	$platforms/platform17/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform17/Sand_platform2.visible = false
	$platforms/platform17/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform17/Sand_platform3.visible = false
	$platforms/platform17/Sand_platform3.set_collision_layer_value(3, false)

func random_traps17():
	if biome_number == "1":
		platform17_1 = $platforms/platform17/Normal_platform1
		platform17_2 = $platforms/platform17/Normal_platform2
		platform17_3 = $platforms/platform17/Normal_platform3
	elif biome_number == "2":
		platform17_1 = $platforms/platform17/Sand_platform1
		platform17_2 = $platforms/platform17/Sand_platform2
		platform17_3 = $platforms/platform17/Sand_platform3
		norm_p17_visible_false()
	elif biome_number == "3":
		platform17_1 = $platforms/platform17/Rock_platform
		platform17_2 = $platforms/platform17/Rock_platform2
		platform17_3 = $platforms/platform17/Rock_platform3
		norm_p17_visible_false()
		sand_p17_visible_false()
	platform17_1.global_position.x = randf_range(70,257)
	platform17_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform17_1.visible = visible_or_invisible1
	platform17_2.visible = visible_or_invisible2
	platform17_3.visible = false
	platform17_3.set_collision_layer_value(3, false)
	if platform17_1.visible == false:
		platform17_1.set_collision_layer_value(3, false)
		if monster_plant17_1 != null:
			monster_plant17_1.queue_free()
			is_platform17_1_free = 0
		elif sandstorm17_1 != null:
			sandstorm17_1.queue_free()
			is_platform17_1_free = 0
		elif cactus17_1 != null:
			cactus17_1.queue_free()
			is_platform17_1_free = 0
		elif chameleon17_1 != null:
			chameleon17_1.queue_free()
			is_platform17_1_free = 0
		elif golem17_1 != null:
			golem17_1.queue_free()
			is_platform17_1_free = 0
		elif spikes17_1 != null:
			spikes17_1.queue_free()
			is_platform17_1_free = 0
	elif platform17_1.visible == true:
		platform17_1.set_collision_layer_value(3, true)
		if is_platform17_1_free >= 1:
			is_platform17_1_free = 0
			if monster_plant17_1 != null:
				monster_plant17_1.queue_free()
				is_platform17_1_free = 0
			elif sandstorm17_1 != null:
				is_platform17_1_free = 0
				sandstorm17_1.queue_free()
			elif cactus17_1 != null:
				cactus17_1.queue_free()
				is_platform17_1_free = 0
			elif chameleon17_1 != null:
				chameleon17_1.queue_free()
				is_platform17_1_free = 0
			elif golem17_1 != null:
				golem17_1.queue_free()
				is_platform17_1_free = 0
			elif spikes17_1 != null:
				spikes17_1.queue_free()
				is_platform17_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform17_1_free == 0:
				monster_plant17_1 = monster_plant.instantiate()
				platform17_1.add_child(monster_plant17_1)
				monster_plant17_1.position.y -= 70
				is_platform17_1_free += 1
		elif random_t == "sandstorm":
			if is_platform17_1_free == 0:
				sandstorm17_1 = sandstorm.instantiate()
				platform17_1.add_child(sandstorm17_1)
				sandstorm17_1.position.y -= 80
				is_platform17_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform17_1_free == 0:
				cactus17_1 = cactus.instantiate()
				platform17_1.add_child(cactus17_1)
				cactus17_1.position.y -= 80
				is_platform17_1_free += 1
		elif random_t == "chameleon":
			if is_platform17_1_free == 0:
				chameleon17_1 = chameleon.instantiate()
				platform17_1.add_child(chameleon17_1)
				chameleon17_1.position.x += 12
				is_platform17_1_free += 1
		elif random_t == "golem":
			if is_platform17_1_free == 0:
				golem17_1 = golem.instantiate()
				platform17_1.add_child(golem17_1)
				golem17_1.position.y -= 150
				is_platform17_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform17_1_free == 0:
				spikes17_1 = spikes.instantiate()
				platform17_1.add_child(spikes17_1)
				spikes17_1.position.y += 32
				is_platform17_1_free += 1
		elif random_t == "nothing":
			if is_platform17_1_free == 0:
				is_platform17_1_free +=1
	if platform17_2.visible == false:
		platform17_2.set_collision_layer_value(3, false)
		if monster_plant17_2 != null:
			monster_plant17_2.queue_free()
			is_platform17_2_free = 0
		elif sandstorm17_2 != null:
			sandstorm17_2.queue_free()
			is_platform17_2_free = 0
		elif cactus17_2 != null:
			cactus17_2.queue_free()
			is_platform17_2_free = 0
		elif chameleon17_2 != null:
			chameleon17_2.queue_free()
			is_platform17_2_free = 0
		elif golem17_2 != null:
			golem17_2.queue_free()
			is_platform17_2_free = 0
		elif spikes17_2 != null:
			spikes17_2.queue_free()
			is_platform17_2_free = 0
	elif platform17_2.visible == true:
		platform17_2.set_collision_layer_value(3, true)
		if is_platform17_2_free >= 1:
			is_platform17_2_free = 0
			if monster_plant17_2 != null:
				monster_plant17_2.queue_free()
				is_platform17_2_free = 0
			elif sandstorm17_2 != null:
				sandstorm17_2.queue_free()
				is_platform17_2_free = 0
			elif cactus17_2 != null:
				cactus17_2.queue_free()
				is_platform17_2_free = 0
			elif chameleon17_2 != null:
				chameleon17_2.queue_free()
				is_platform17_2_free = 0
			elif golem17_2 != null:
				golem17_2.queue_free()
				is_platform17_2_free = 0
			elif spikes17_2 != null:
				spikes17_2.queue_free()
				is_platform17_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform17_2_free == 0:
				monster_plant17_2 = monster_plant.instantiate()
				platform17_2.add_child(monster_plant17_2)
				monster_plant17_2.position.y -= 70
				is_platform17_2_free += 1
		elif random_t == "sandstorm":
			if is_platform17_2_free == 0:
				sandstorm17_2 = sandstorm.instantiate()
				platform17_2.add_child(sandstorm17_2)
				sandstorm17_2.position.y -= 80
				is_platform17_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform17_2_free == 0:
				cactus17_2 = cactus.instantiate()
				platform17_2.add_child(cactus17_2)
				cactus17_2.position.y -= 80
				is_platform17_2_free += 1
		elif random_t == "chameleon":
			if is_platform17_2_free == 0:
				chameleon17_2 = chameleon.instantiate()
				platform17_2.add_child(chameleon17_2)
				chameleon17_2.position.x += 12
				is_platform17_2_free += 1
		elif random_t == "golem":
			if is_platform17_2_free == 0:
				golem17_2 = golem.instantiate()
				platform17_2.add_child(golem17_2)
				golem17_2.position.y -= 150
				is_platform17_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform17_2_free == 0:
				spikes17_2 = spikes.instantiate()
				platform17_2.add_child(spikes17_2)
				spikes17_2.position.y += 32
				is_platform17_2_free += 1
		elif random_t == "nothing":
			if is_platform17_2_free == 0:
				is_platform17_2_free +=1
	if platform17_1.visible == false and platform17_2.visible == false:
		platform17_3.global_position.x = randf_range(70,570)
		platform17_3.visible = true
		platform17_3.set_collision_layer_value(3, true)
		if is_platform17_3_free >= 1:
			is_platform17_3_free = 0
			if monster_plant17_3 != null:
				monster_plant17_3.queue_free()
				is_platform17_3_free = 0
			elif sandstorm17_3 != null:
				sandstorm17_3.queue_free()
				is_platform17_3_free = 0
			elif cactus17_3 != null:
				cactus17_3.queue_free()
				is_platform17_3_free = 0
			elif chameleon17_3 != null:
				chameleon17_3.queue_free()
				is_platform17_3_free = 0
			elif golem17_3 != null:
				golem17_3.queue_free()
				is_platform17_3_free = 0
			elif spikes17_3 != null:
				spikes17_3.queue_free()
				is_platform17_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform17_3_free == 0:
				monster_plant17_3 = monster_plant.instantiate()
				platform17_3.add_child(monster_plant17_3)
				monster_plant17_3.position.y -= 70
				is_platform17_3_free += 1
		elif random_t == "sandstorm":
			if is_platform17_3_free == 0:
				sandstorm17_3 = sandstorm.instantiate()
				platform17_3.add_child(sandstorm17_3)
				sandstorm17_3.position.y -= 80
				is_platform17_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform17_3_free == 0:
				cactus17_3 = cactus.instantiate()
				platform17_3.add_child(cactus17_3)
				cactus17_3.position.y -= 80
				is_platform17_3_free += 1
		elif random_t == "chameleon":
			if is_platform17_3_free == 0:
				chameleon17_3 = chameleon.instantiate()
				platform17_3.add_child(chameleon17_3)
				chameleon17_3.position.x += 12
				is_platform17_3_free += 1
		elif random_t == "golem":
			if is_platform17_3_free == 0:
				golem17_3 = golem.instantiate()
				platform17_3.add_child(golem17_3)
				golem17_3.position.y -= 150
				is_platform17_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform17_3_free == 0:
				spikes17_3 = spikes.instantiate()
				platform17_3.add_child(spikes17_3)
				spikes17_3.position.y += 32
				is_platform17_3_free += 1
		elif random_t == "nothing":
			if is_platform17_3_free == 0:
				is_platform17_3_free +=1
	if platform17_3.visible == false:
		platform17_3.set_collision_layer_value(3, false)
		if monster_plant17_3 != null:
			monster_plant17_3.queue_free()
			is_platform17_3_free = 0
		elif sandstorm17_3 != null:
			sandstorm17_3.queue_free()
			is_platform17_3_free = 0
		elif cactus17_3 != null:
			cactus17_3.queue_free()
			is_platform17_3_free = 0
		elif chameleon17_3 != null:
			chameleon17_3.queue_free()
			is_platform17_3_free = 0
		elif golem17_3 != null:
			golem17_3.queue_free()
			is_platform17_3_free = 0
		elif spikes17_3 != null:
			spikes17_3.queue_free()
			is_platform17_3_free = 0

func norm_p18_visible_false():
	$platforms/platform18/Normal_platform1.visible = false
	$platforms/platform18/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform18/Normal_platform2.visible = false
	$platforms/platform18/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform18/Normal_platform3.visible = false
	$platforms/platform18/Normal_platform3.set_collision_layer_value(3, false)

func sand_p18_visible_false():
	$platforms/platform18/Sand_platform1.visible = false
	$platforms/platform18/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform18/Sand_platform2.visible = false
	$platforms/platform18/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform18/Sand_platform3.visible = false
	$platforms/platform18/Sand_platform3.set_collision_layer_value(3, false)

func random_traps18():
	if biome_number == "1":
		platform18_1 = $platforms/platform18/Normal_platform1
		platform18_2 = $platforms/platform18/Normal_platform2
		platform18_3 = $platforms/platform18/Normal_platform3
	elif biome_number == "2":
		platform18_1 = $platforms/platform18/Sand_platform1
		platform18_2 = $platforms/platform18/Sand_platform2
		platform18_3 = $platforms/platform18/Sand_platform3
		norm_p18_visible_false()
	elif biome_number == "3":
		platform18_1 = $platforms/platform18/Rock_platform
		platform18_2 = $platforms/platform18/Rock_platform2
		platform18_3 = $platforms/platform18/Rock_platform3
		norm_p18_visible_false()
		sand_p18_visible_false()
	platform18_1.global_position.x = randf_range(70,257)
	platform18_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform18_1.visible = visible_or_invisible1
	platform18_2.visible = visible_or_invisible2
	platform18_3.visible = false
	platform18_3.set_collision_layer_value(3, false)
	if platform18_1.visible == false:
		platform18_1.set_collision_layer_value(3, false)
		if monster_plant18_1 != null:
			monster_plant18_1.queue_free()
			is_platform18_1_free = 0
		elif sandstorm18_1 != null:
			sandstorm18_1.queue_free()
			is_platform18_1_free = 0
		elif cactus18_1 != null:
			cactus18_1.queue_free()
			is_platform18_1_free = 0
		elif chameleon18_1 != null:
			chameleon18_1.queue_free()
			is_platform18_1_free = 0
		elif golem18_1 != null:
			golem18_1.queue_free()
			is_platform18_1_free = 0
		elif spikes18_1 != null:
			spikes18_1.queue_free()
			is_platform18_1_free = 0
	elif platform18_1.visible == true:
		platform18_1.set_collision_layer_value(3, true)
		if is_platform18_1_free >= 1:
			is_platform18_1_free = 0
			if monster_plant18_1 != null:
				monster_plant18_1.queue_free()
				is_platform18_1_free = 0
			elif sandstorm18_1 != null:
				is_platform18_1_free = 0
				sandstorm18_1.queue_free()
			elif cactus18_1 != null:
				cactus18_1.queue_free()
				is_platform18_1_free = 0
			elif chameleon18_1 != null:
				chameleon18_1.queue_free()
				is_platform18_1_free = 0
			elif golem18_1 != null:
				golem18_1.queue_free()
				is_platform18_1_free = 0
			elif spikes18_1 != null:
				spikes18_1.queue_free()
				is_platform18_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform18_1_free == 0:
				monster_plant18_1 = monster_plant.instantiate()
				platform18_1.add_child(monster_plant18_1)
				monster_plant18_1.position.y -= 70
				is_platform18_1_free += 1
		elif random_t == "sandstorm":
			if is_platform18_1_free == 0:
				sandstorm18_1 = sandstorm.instantiate()
				platform18_1.add_child(sandstorm18_1)
				sandstorm18_1.position.y -= 80
				is_platform18_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform18_1_free == 0:
				cactus18_1 = cactus.instantiate()
				platform18_1.add_child(cactus18_1)
				cactus18_1.position.y -= 80
				is_platform18_1_free += 1
		elif random_t == "chameleon":
			if is_platform18_1_free == 0:
				chameleon18_1 = chameleon.instantiate()
				platform18_1.add_child(chameleon18_1)
				chameleon18_1.position.x += 12
				is_platform18_1_free += 1
		elif random_t == "golem":
			if is_platform18_1_free == 0:
				golem18_1 = golem.instantiate()
				platform18_1.add_child(golem18_1)
				golem18_1.position.y -= 150
				is_platform18_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform18_1_free == 0:
				spikes18_1 = spikes.instantiate()
				platform18_1.add_child(spikes18_1)
				spikes18_1.position.y += 32
				is_platform18_1_free += 1
		elif random_t == "nothing":
			if is_platform18_1_free == 0:
				is_platform18_1_free +=1
	if platform18_2.visible == false:
		platform18_2.set_collision_layer_value(3, false)
		if monster_plant18_2 != null:
			monster_plant18_2.queue_free()
			is_platform18_2_free = 0
		elif sandstorm18_2 != null:
			sandstorm18_2.queue_free()
			is_platform18_2_free = 0
		elif cactus18_2 != null:
			cactus18_2.queue_free()
			is_platform18_2_free = 0
		elif chameleon18_2 != null:
			chameleon18_2.queue_free()
			is_platform18_2_free = 0
		elif golem18_2 != null:
			golem18_2.queue_free()
			is_platform18_2_free = 0
		elif spikes18_2 != null:
			spikes18_2.queue_free()
			is_platform18_2_free = 0
	elif platform18_2.visible == true:
		platform18_2.set_collision_layer_value(3, true)
		if is_platform18_2_free >= 1:
			is_platform18_2_free = 0
			if monster_plant18_2 != null:
				monster_plant18_2.queue_free()
				is_platform18_2_free = 0
			elif sandstorm18_2 != null:
				sandstorm18_2.queue_free()
				is_platform18_2_free = 0
			elif cactus18_2 != null:
				cactus18_2.queue_free()
				is_platform18_2_free = 0
			elif chameleon18_2 != null:
				chameleon18_2.queue_free()
				is_platform18_2_free = 0
			elif golem18_2 != null:
				golem18_2.queue_free()
				is_platform18_2_free = 0
			elif spikes18_2 != null:
				spikes18_2.queue_free()
				is_platform18_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform18_2_free == 0:
				monster_plant18_2 = monster_plant.instantiate()
				platform18_2.add_child(monster_plant18_2)
				monster_plant18_2.position.y -= 70
				is_platform18_2_free += 1
		elif random_t == "sandstorm":
			if is_platform18_2_free == 0:
				sandstorm18_2 = sandstorm.instantiate()
				platform18_2.add_child(sandstorm18_2)
				sandstorm18_2.position.y -= 80
				is_platform18_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform18_2_free == 0:
				cactus18_2 = cactus.instantiate()
				platform18_2.add_child(cactus18_2)
				cactus18_2.position.y -= 80
				is_platform18_2_free += 1
		elif random_t == "chameleon":
			if is_platform18_2_free == 0:
				chameleon18_2 = chameleon.instantiate()
				platform18_2.add_child(chameleon18_2)
				chameleon18_2.position.x += 12
				is_platform18_2_free += 1
		elif random_t == "golem":
			if is_platform18_2_free == 0:
				golem18_2 = golem.instantiate()
				platform18_2.add_child(golem18_2)
				golem18_2.position.y -= 150
				is_platform18_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform18_2_free == 0:
				spikes18_2 = spikes.instantiate()
				platform18_2.add_child(spikes18_2)
				spikes18_2.position.y += 32
				is_platform18_2_free += 1
		elif random_t == "nothing":
			if is_platform18_2_free == 0:
				is_platform18_2_free +=1
	if platform18_1.visible == false and platform18_2.visible == false:
		platform18_3.global_position.x = randf_range(70,570)
		platform18_3.visible = true
		platform18_3.set_collision_layer_value(3, true)
		if is_platform18_3_free >= 1:
			is_platform18_3_free = 0
			if monster_plant18_3 != null:
				monster_plant18_3.queue_free()
				is_platform18_3_free = 0
			elif sandstorm18_3 != null:
				sandstorm18_3.queue_free()
				is_platform18_3_free = 0
			elif cactus18_3 != null:
				cactus18_3.queue_free()
				is_platform18_3_free = 0
			elif chameleon18_3 != null:
				chameleon18_3.queue_free()
				is_platform18_3_free = 0
			elif golem18_3 != null:
				golem18_3.queue_free()
				is_platform18_3_free = 0
			elif spikes18_3 != null:
				spikes18_3.queue_free()
				is_platform18_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform18_3_free == 0:
				monster_plant18_3 = monster_plant.instantiate()
				platform18_3.add_child(monster_plant18_3)
				monster_plant18_3.position.y -= 70
				is_platform18_3_free += 1
		elif random_t == "sandstorm":
			if is_platform18_3_free == 0:
				sandstorm18_3 = sandstorm.instantiate()
				platform18_3.add_child(sandstorm18_3)
				sandstorm18_3.position.y -= 80
				is_platform18_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform18_3_free == 0:
				cactus18_3 = cactus.instantiate()
				platform18_3.add_child(cactus18_3)
				cactus18_3.position.y -= 80
				is_platform18_3_free += 1
		elif random_t == "chameleon":
			if is_platform18_3_free == 0:
				chameleon18_3 = chameleon.instantiate()
				platform18_3.add_child(chameleon18_3)
				chameleon18_3.position.x += 12
				is_platform18_3_free += 1
		elif random_t == "golem":
			if is_platform18_3_free == 0:
				golem18_3 = golem.instantiate()
				platform18_3.add_child(golem18_3)
				golem18_3.position.y -= 150
				is_platform18_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform18_3_free == 0:
				spikes18_3 = spikes.instantiate()
				platform18_3.add_child(spikes18_3)
				spikes18_3.position.y += 32
				is_platform18_3_free += 1
		elif random_t == "nothing":
			if is_platform18_3_free == 0:
				is_platform18_3_free +=1
	if platform18_3.visible == false:
		platform18_3.set_collision_layer_value(3, false)
		if monster_plant18_3 != null:
			monster_plant18_3.queue_free()
			is_platform18_3_free = 0
		elif sandstorm18_3 != null:
			sandstorm18_3.queue_free()
			is_platform18_3_free = 0
		elif cactus18_3 != null:
			cactus18_3.queue_free()
			is_platform18_3_free = 0
		elif chameleon18_3 != null:
			chameleon18_3.queue_free()
			is_platform18_3_free = 0
		elif golem18_3 != null:
			golem18_3.queue_free()
			is_platform18_3_free = 0
		elif spikes18_3 != null:
			spikes18_3.queue_free()
			is_platform18_3_free = 0

func norm_p19_visible_false():
	$platforms/platform19/Normal_platform1.visible = false
	$platforms/platform19/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform19/Normal_platform2.visible = false
	$platforms/platform19/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform19/Normal_platform3.visible = false
	$platforms/platform19/Normal_platform3.set_collision_layer_value(3, false)

func sand_p19_visible_false():
	$platforms/platform19/Sand_platform1.visible = false
	$platforms/platform19/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform19/Sand_platform2.visible = false
	$platforms/platform19/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform19/Sand_platform3.visible = false
	$platforms/platform19/Sand_platform3.set_collision_layer_value(3, false)

func random_traps19():
	if biome_number == "1":
		platform19_1 = $platforms/platform19/Normal_platform1
		platform19_2 = $platforms/platform19/Normal_platform2
		platform19_3 = $platforms/platform19/Normal_platform3
	elif biome_number == "2":
		platform19_1 = $platforms/platform19/Sand_platform1
		platform19_2 = $platforms/platform19/Sand_platform2
		platform19_3 = $platforms/platform19/Sand_platform3
		norm_p19_visible_false()
	elif biome_number == "3":
		platform19_1 = $platforms/platform19/Rock_platform
		platform19_2 = $platforms/platform19/Rock_platform2
		platform19_3 = $platforms/platform19/Rock_platform3
		norm_p19_visible_false()
		sand_p19_visible_false()
	platform19_1.global_position.x = randf_range(70,257)
	platform19_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform19_1.visible = visible_or_invisible1
	platform19_2.visible = visible_or_invisible2
	platform19_3.visible = false
	platform19_3.set_collision_layer_value(3, false)
	if platform19_1.visible == false:
		platform19_1.set_collision_layer_value(3, false)
		if monster_plant19_1 != null:
			monster_plant19_1.queue_free()
			is_platform19_1_free = 0
		elif sandstorm19_1 != null:
			sandstorm19_1.queue_free()
			is_platform19_1_free = 0
		elif cactus19_1 != null:
			cactus19_1.queue_free()
			is_platform19_1_free = 0
		elif chameleon19_1 != null:
			chameleon19_1.queue_free()
			is_platform19_1_free = 0
		elif golem19_1 != null:
			golem19_1.queue_free()
			is_platform19_1_free = 0
		elif spikes19_1 != null:
			spikes19_1.queue_free()
			is_platform19_1_free = 0
	elif platform19_1.visible == true:
		platform19_1.set_collision_layer_value(3, true)
		if is_platform19_1_free >= 1:
			is_platform19_1_free = 0
			if monster_plant19_1 != null:
				monster_plant19_1.queue_free()
				is_platform19_1_free = 0
			elif sandstorm19_1 != null:
				is_platform19_1_free = 0
				sandstorm19_1.queue_free()
			elif cactus19_1 != null:
				cactus19_1.queue_free()
				is_platform19_1_free = 0
			elif chameleon19_1 != null:
				chameleon19_1.queue_free()
				is_platform19_1_free = 0
			elif golem19_1 != null:
				golem19_1.queue_free()
				is_platform19_1_free = 0
			elif spikes19_1 != null:
				spikes19_1.queue_free()
				is_platform19_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform19_1_free == 0:
				monster_plant19_1 = monster_plant.instantiate()
				platform19_1.add_child(monster_plant19_1)
				monster_plant19_1.position.y -= 70
				is_platform19_1_free += 1
		elif random_t == "sandstorm":
			if is_platform19_1_free == 0:
				sandstorm19_1 = sandstorm.instantiate()
				platform19_1.add_child(sandstorm19_1)
				sandstorm19_1.position.y -= 80
				is_platform19_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform19_1_free == 0:
				cactus19_1 = cactus.instantiate()
				platform19_1.add_child(cactus19_1)
				cactus19_1.position.y -= 80
				is_platform19_1_free += 1
		elif random_t == "chameleon":
			if is_platform19_1_free == 0:
				chameleon19_1 = chameleon.instantiate()
				platform19_1.add_child(chameleon19_1)
				chameleon19_1.position.x += 12
				is_platform19_1_free += 1
		elif random_t == "golem":
			if is_platform19_1_free == 0:
				golem19_1 = golem.instantiate()
				platform19_1.add_child(golem19_1)
				golem19_1.position.y -= 150
				is_platform19_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform19_1_free == 0:
				spikes19_1 = spikes.instantiate()
				platform19_1.add_child(spikes19_1)
				spikes19_1.position.y += 32
				is_platform19_1_free += 1
		elif random_t == "nothing":
			if is_platform19_1_free == 0:
				is_platform19_1_free +=1
	if platform19_2.visible == false:
		platform19_2.set_collision_layer_value(3, false)
		if monster_plant19_2 != null:
			monster_plant19_2.queue_free()
			is_platform19_2_free = 0
		elif sandstorm19_2 != null:
			sandstorm19_2.queue_free()
			is_platform19_2_free = 0
		elif cactus19_2 != null:
			cactus19_2.queue_free()
			is_platform19_2_free = 0
		elif chameleon19_2 != null:
			chameleon19_2.queue_free()
			is_platform19_2_free = 0
		elif golem19_2 != null:
			golem19_2.queue_free()
			is_platform19_2_free = 0
		elif spikes19_2 != null:
			spikes19_2.queue_free()
			is_platform19_2_free = 0
	elif platform19_2.visible == true:
		platform19_2.set_collision_layer_value(3, true)
		if is_platform19_2_free >= 1:
			is_platform19_2_free = 0
			if monster_plant19_2 != null:
				monster_plant19_2.queue_free()
				is_platform19_2_free = 0
			elif sandstorm19_2 != null:
				sandstorm19_2.queue_free()
				is_platform19_2_free = 0
			elif cactus19_2 != null:
				cactus19_2.queue_free()
				is_platform19_2_free = 0
			elif chameleon19_2 != null:
				chameleon19_2.queue_free()
				is_platform19_2_free = 0
			elif golem19_2 != null:
				golem19_2.queue_free()
				is_platform19_2_free = 0
			elif spikes19_2 != null:
				spikes19_2.queue_free()
				is_platform19_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform19_2_free == 0:
				monster_plant19_2 = monster_plant.instantiate()
				platform19_2.add_child(monster_plant19_2)
				monster_plant19_2.position.y -= 70
				is_platform19_2_free += 1
		elif random_t == "sandstorm":
			if is_platform19_2_free == 0:
				sandstorm19_2 = sandstorm.instantiate()
				platform19_2.add_child(sandstorm19_2)
				sandstorm19_2.position.y -= 80
				is_platform19_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform19_2_free == 0:
				cactus19_2 = cactus.instantiate()
				platform19_2.add_child(cactus19_2)
				cactus19_2.position.y -= 80
				is_platform19_2_free += 1
		elif random_t == "chameleon":
			if is_platform19_2_free == 0:
				chameleon19_2 = chameleon.instantiate()
				platform19_2.add_child(chameleon19_2)
				chameleon19_2.position.x += 12
				is_platform19_2_free += 1
		elif random_t == "golem":
			if is_platform19_2_free == 0:
				golem19_2 = golem.instantiate()
				platform19_2.add_child(golem19_2)
				golem19_2.position.y -= 150
				is_platform19_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform19_2_free == 0:
				spikes19_2 = spikes.instantiate()
				platform19_2.add_child(spikes19_2)
				spikes19_2.position.y += 32
				is_platform19_2_free += 1
		elif random_t == "nothing":
			if is_platform19_2_free == 0:
				is_platform19_2_free +=1
	if platform19_1.visible == false and platform19_2.visible == false:
		platform19_3.global_position.x = randf_range(70,570)
		platform19_3.visible = true
		platform19_3.set_collision_layer_value(3, true)
		if is_platform19_3_free >= 1:
			is_platform19_3_free = 0
			if monster_plant19_3 != null:
				monster_plant19_3.queue_free()
				is_platform19_3_free = 0
			elif sandstorm19_3 != null:
				sandstorm19_3.queue_free()
				is_platform19_3_free = 0
			elif cactus19_3 != null:
				cactus19_3.queue_free()
				is_platform19_3_free = 0
			elif chameleon19_3 != null:
				chameleon19_3.queue_free()
				is_platform19_3_free = 0
			elif golem19_3 != null:
				golem19_3.queue_free()
				is_platform19_3_free = 0
			elif spikes19_3 != null:
				spikes19_3.queue_free()
				is_platform19_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform19_3_free == 0:
				monster_plant19_3 = monster_plant.instantiate()
				platform19_3.add_child(monster_plant19_3)
				monster_plant19_3.position.y -= 70
				is_platform19_3_free += 1
		elif random_t == "sandstorm":
			if is_platform19_3_free == 0:
				sandstorm19_3 = sandstorm.instantiate()
				platform19_3.add_child(sandstorm19_3)
				sandstorm19_3.position.y -= 80
				is_platform19_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform19_3_free == 0:
				cactus19_3 = cactus.instantiate()
				platform19_3.add_child(cactus19_3)
				cactus19_3.position.y -= 80
				is_platform19_3_free += 1
		elif random_t == "chameleon":
			if is_platform19_3_free == 0:
				chameleon19_3 = chameleon.instantiate()
				platform19_3.add_child(chameleon19_3)
				chameleon19_3.position.x += 12
				is_platform19_3_free += 1
		elif random_t == "golem":
			if is_platform19_3_free == 0:
				golem19_3 = golem.instantiate()
				platform19_3.add_child(golem19_3)
				golem19_3.position.y -= 150
				is_platform19_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform19_3_free == 0:
				spikes19_3 = spikes.instantiate()
				platform19_3.add_child(spikes19_3)
				spikes19_3.position.y += 32
				is_platform19_3_free += 1
		elif random_t == "nothing":
			if is_platform19_3_free == 0:
				is_platform19_3_free +=1
	if platform19_3.visible == false:
		platform19_3.set_collision_layer_value(3, false)
		if monster_plant19_3 != null:
			monster_plant19_3.queue_free()
			is_platform19_3_free = 0
		elif sandstorm19_3 != null:
			sandstorm19_3.queue_free()
			is_platform19_3_free = 0
		elif cactus19_3 != null:
			cactus19_3.queue_free()
			is_platform19_3_free = 0
		elif chameleon19_3 != null:
			chameleon19_3.queue_free()
			is_platform19_3_free = 0
		elif golem19_3 != null:
			golem19_3.queue_free()
			is_platform19_3_free = 0
		elif spikes19_3 != null:
			spikes19_3.queue_free()
			is_platform19_3_free = 0

func norm_p20_visible_false():
	$platforms/platform20/Normal_platform1.visible = false
	$platforms/platform20/Normal_platform1.set_collision_layer_value(3, false)
	$platforms/platform20/Normal_platform2.visible = false
	$platforms/platform20/Normal_platform2.set_collision_layer_value(3, false)
	$platforms/platform20/Normal_platform3.visible = false
	$platforms/platform20/Normal_platform3.set_collision_layer_value(3, false)

func sand_p20_visible_false():
	$platforms/platform20/Sand_platform1.visible = false
	$platforms/platform20/Sand_platform1.set_collision_layer_value(3, false)
	$platforms/platform20/Sand_platform2.visible = false
	$platforms/platform20/Sand_platform2.set_collision_layer_value(3, false)
	$platforms/platform20/Sand_platform3.visible = false
	$platforms/platform20/Sand_platform3.set_collision_layer_value(3, false)

func random_traps20():
	if biome_number == "1":
		platform20_1 = $platforms/platform20/Normal_platform1
		platform20_2 = $platforms/platform20/Normal_platform2
		platform20_3 = $platforms/platform20/Normal_platform3
	elif biome_number == "2":
		platform20_1 = $platforms/platform20/Sand_platform1
		platform20_2 = $platforms/platform20/Sand_platform2
		platform20_3 = $platforms/platform20/Sand_platform3
		norm_p20_visible_false()
	elif biome_number == "3":
		platform20_1 = $platforms/platform20/Rock_platform
		platform20_2 = $platforms/platform20/Rock_platform2
		platform20_3 = $platforms/platform20/Rock_platform3
		norm_p20_visible_false()
		sand_p20_visible_false()
	platform20_1.global_position.x = randf_range(70,257)
	platform20_2.global_position.x = randf_range(403,570)
	var visible_or_invisible1 = random_bool.pick_random()
	var visible_or_invisible2 = random_bool.pick_random()
	platform20_1.visible = visible_or_invisible1
	platform20_2.visible = visible_or_invisible2
	platform20_3.visible = false
	platform20_3.set_collision_layer_value(3, false)
	if platform20_1.visible == false:
		platform20_1.set_collision_layer_value(3, false)
		if monster_plant20_1 != null:
			monster_plant20_1.queue_free()
			is_platform20_1_free = 0
		elif sandstorm20_1 != null:
			sandstorm20_1.queue_free()
			is_platform20_1_free = 0
		elif cactus20_1 != null:
			cactus20_1.queue_free()
			is_platform20_1_free = 0
		elif chameleon20_1 != null:
			chameleon20_1.queue_free()
			is_platform20_1_free = 0
		elif golem20_1 != null:
			golem20_1.queue_free()
			is_platform20_1_free = 0
		elif spikes20_1 != null:
			spikes20_1.queue_free()
			is_platform20_1_free = 0
	elif platform20_1.visible == true:
		platform20_1.set_collision_layer_value(3, true)
		if is_platform20_1_free >= 1:
			is_platform20_1_free = 0
			if monster_plant20_1 != null:
				monster_plant20_1.queue_free()
				is_platform20_1_free = 0
			elif sandstorm20_1 != null:
				is_platform20_1_free = 0
				sandstorm20_1.queue_free()
			elif cactus20_1 != null:
				cactus20_1.queue_free()
				is_platform20_1_free = 0
			elif chameleon20_1 != null:
				chameleon20_1.queue_free()
				is_platform20_1_free = 0
			elif golem20_1 != null:
				golem20_1.queue_free()
				is_platform20_1_free = 0
			elif spikes20_1 != null:
				spikes20_1.queue_free()
				is_platform20_1_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform20_1_free == 0:
				monster_plant20_1 = monster_plant.instantiate()
				platform20_1.add_child(monster_plant20_1)
				monster_plant20_1.position.y -= 70
				is_platform20_1_free += 1
		elif random_t == "sandstorm":
			if is_platform20_1_free == 0:
				sandstorm20_1 = sandstorm.instantiate()
				platform20_1.add_child(sandstorm20_1)
				sandstorm20_1.position.y -= 80
				is_platform20_1_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform20_1_free == 0:
				cactus20_1 = cactus.instantiate()
				platform20_1.add_child(cactus20_1)
				cactus20_1.position.y -= 80
				is_platform20_1_free += 1
		elif random_t == "chameleon":
			if is_platform20_1_free == 0:
				chameleon20_1 = chameleon.instantiate()
				platform20_1.add_child(chameleon20_1)
				chameleon20_1.position.x += 12
				is_platform20_1_free += 1
		elif random_t == "golem":
			if is_platform20_1_free == 0:
				golem20_1 = golem.instantiate()
				platform20_1.add_child(golem20_1)
				golem20_1.position.y -= 150
				is_platform20_1_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform20_1_free == 0:
				spikes20_1 = spikes.instantiate()
				platform20_1.add_child(spikes20_1)
				spikes20_1.position.y += 32
				is_platform20_1_free += 1
		elif random_t == "nothing":
			if is_platform20_1_free == 0:
				is_platform20_1_free +=1
	if platform20_2.visible == false:
		platform20_2.set_collision_layer_value(3, false)
		if monster_plant20_2 != null:
			monster_plant20_2.queue_free()
			is_platform20_2_free = 0
		elif sandstorm20_2 != null:
			sandstorm20_2.queue_free()
			is_platform20_2_free = 0
		elif cactus20_2 != null:
			cactus20_2.queue_free()
			is_platform20_2_free = 0
		elif chameleon20_2 != null:
			chameleon20_2.queue_free()
			is_platform20_2_free = 0
		elif golem20_2 != null:
			golem20_2.queue_free()
			is_platform20_2_free = 0
		elif spikes20_2 != null:
			spikes20_2.queue_free()
			is_platform20_2_free = 0
	elif platform20_2.visible == true:
		platform20_2.set_collision_layer_value(3, true)
		if is_platform20_2_free >= 1:
			is_platform20_2_free = 0
			if monster_plant20_2 != null:
				monster_plant20_2.queue_free()
				is_platform20_2_free = 0
			elif sandstorm20_2 != null:
				sandstorm20_2.queue_free()
				is_platform20_2_free = 0
			elif cactus20_2 != null:
				cactus20_2.queue_free()
				is_platform20_2_free = 0
			elif chameleon20_2 != null:
				chameleon20_2.queue_free()
				is_platform20_2_free = 0
			elif golem20_2 != null:
				golem20_2.queue_free()
				is_platform20_2_free = 0
			elif spikes20_2 != null:
				spikes20_2.queue_free()
				is_platform20_2_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform20_2_free == 0:
				monster_plant20_2 = monster_plant.instantiate()
				platform20_2.add_child(monster_plant20_2)
				monster_plant20_2.position.y -= 70
				is_platform20_2_free += 1
		elif random_t == "sandstorm":
			if is_platform20_2_free == 0:
				sandstorm20_2 = sandstorm.instantiate()
				platform20_2.add_child(sandstorm20_2)
				sandstorm20_2.position.y -= 80
				is_platform20_2_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform20_2_free == 0:
				cactus20_2 = cactus.instantiate()
				platform20_2.add_child(cactus20_2)
				cactus20_2.position.y -= 80
				is_platform20_2_free += 1
		elif random_t == "chameleon":
			if is_platform20_2_free == 0:
				chameleon20_2 = chameleon.instantiate()
				platform20_2.add_child(chameleon20_2)
				chameleon20_2.position.x += 12
				is_platform20_2_free += 1
		elif random_t == "golem":
			if is_platform20_2_free == 0:
				golem20_2 = golem.instantiate()
				platform20_2.add_child(golem20_2)
				golem20_2.position.y -= 150
				is_platform20_2_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform20_2_free == 0:
				spikes20_2 = spikes.instantiate()
				platform20_2.add_child(spikes20_2)
				spikes20_2.position.y += 32
				is_platform20_2_free += 1
		elif random_t == "nothing":
			if is_platform20_2_free == 0:
				is_platform20_2_free +=1
	if platform20_1.visible == false and platform20_2.visible == false:
		platform20_3.global_position.x = randf_range(70,570)
		platform20_3.visible = true
		platform20_3.set_collision_layer_value(3, true)
		if is_platform20_3_free >= 1:
			is_platform20_3_free = 0
			if monster_plant20_3 != null:
				monster_plant20_3.queue_free()
				is_platform20_3_free = 0
			elif sandstorm20_3 != null:
				sandstorm20_3.queue_free()
				is_platform20_3_free = 0
			elif cactus20_3 != null:
				cactus20_3.queue_free()
				is_platform20_3_free = 0
			elif chameleon20_3 != null:
				chameleon20_3.queue_free()
				is_platform20_3_free = 0
			elif golem20_3 != null:
				golem20_3.queue_free()
				is_platform20_3_free = 0
			elif spikes20_3 != null:
				spikes20_3.queue_free()
				is_platform20_3_free = 0
		var random_t = random_trap.pick_random()
		if random_t == "monster_plant":
			if is_platform20_3_free == 0:
				monster_plant20_3 = monster_plant.instantiate()
				platform20_3.add_child(monster_plant20_3)
				monster_plant20_3.position.y -= 70
				is_platform20_3_free += 1
		elif random_t == "sandstorm":
			if is_platform20_3_free == 0:
				sandstorm20_3 = sandstorm.instantiate()
				platform20_3.add_child(sandstorm20_3)
				sandstorm20_3.position.y -= 80
				is_platform20_3_free += 1
		elif random_t == "cactus":
			Globals.cactus_connected = true
			if is_platform20_3_free == 0:
				cactus20_3 = cactus.instantiate()
				platform20_3.add_child(cactus20_3)
				cactus20_3.position.y -= 80
				is_platform20_3_free += 1
		elif random_t == "chameleon":
			if is_platform20_3_free == 0:
				chameleon20_3 = chameleon.instantiate()
				platform20_3.add_child(chameleon20_3)
				chameleon20_3.position.x += 12
				is_platform20_3_free += 1
		elif random_t == "golem":
			if is_platform20_3_free == 0:
				golem20_3 = golem.instantiate()
				platform20_3.add_child(golem20_3)
				golem20_3.position.y -= 150
				is_platform20_3_free += 1
		elif random_t == "spikes":
			Globals.spikes_connected = true
			if is_platform20_3_free == 0:
				spikes20_3 = spikes.instantiate()
				platform20_3.add_child(spikes20_3)
				spikes20_3.position.y += 32
				is_platform20_3_free += 1
		elif random_t == "nothing":
			if is_platform20_3_free == 0:
				is_platform20_3_free +=1
	if platform20_3.visible == false:
		platform20_3.set_collision_layer_value(3, false)
		if monster_plant20_3 != null:
			monster_plant20_3.queue_free()
			is_platform20_3_free = 0
		elif sandstorm20_3 != null:
			sandstorm20_3.queue_free()
			is_platform20_3_free = 0
		elif cactus20_3 != null:
			cactus20_3.queue_free()
			is_platform20_3_free = 0
		elif chameleon20_3 != null:
			chameleon20_3.queue_free()
			is_platform20_3_free = 0
		elif golem20_3 != null:
			golem20_3.queue_free()
			is_platform20_3_free = 0
		elif spikes20_3 != null:
			spikes20_3.queue_free()
			is_platform20_3_free = 0

func platform1(highest_platform):
	highest_platform = $platforms/platform20
	$platforms/platform1.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform1
	is_on_screen1 = true
	random_traps1()

func platform2(highest_platform):
	highest_platform = $platforms/platform1
	$platforms/platform2.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform2
	is_on_screen2 = true
	random_traps2()

func platform3(highest_platform):
	highest_platform = $platforms/platform2
	$platforms/platform3.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform3
	is_on_screen3 = true
	random_traps3()

func platform4(highest_platform):
	highest_platform = $platforms/platform3
	$platforms/platform4.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform4
	is_on_screen4 = true
	random_traps4()

func platform5(highest_platform):
	highest_platform = $platforms/platform4
	$platforms/platform5.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform5
	is_on_screen5 = true
	random_traps5()

func platform6(highest_platform):
	highest_platform = $platforms/platform5
	$platforms/platform6.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform6
	is_on_screen6 = true
	random_traps6()

func platform7(highest_platform):
	highest_platform = $platforms/platform6
	$platforms/platform7.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform7
	is_on_screen7 = true
	random_traps7()

func platform8(highest_platform):
	highest_platform = $platforms/platform7
	$platforms/platform8.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform8
	is_on_screen8 = true
	random_traps8()

func platform9(highest_platform):
	highest_platform = $platforms/platform8
	$platforms/platform9.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform9
	is_on_screen9 = true
	random_traps9()

func platform10(highest_platform):
	highest_platform = $platforms/platform9
	$platforms/platform10.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform10
	is_on_screen10 = true
	random_traps10()

func platform11(highest_platform):
	highest_platform = $platforms/platform10
	$platforms/platform11.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform11
	is_on_screen11 = true
	random_traps11()

func platform12(highest_platform):
	highest_platform = $platforms/platform11
	$platforms/platform12.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform12
	is_on_screen12 = true
	random_traps12()

func platform13(highest_platform):
	highest_platform = $platforms/platform12
	$platforms/platform13.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform13
	is_on_screen13 = true
	random_traps13()

func platform14(highest_platform):
	highest_platform = $platforms/platform13
	$platforms/platform14.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform14
	is_on_screen14 = true
	random_traps14()

func platform15(highest_platform):
	highest_platform = $platforms/platform14
	$platforms/platform15.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform15
	is_on_screen15 = true
	random_traps15()

func platform16(highest_platform):
	highest_platform = $platforms/platform15
	$platforms/platform16.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform16
	is_on_screen16 = true
	random_traps16()

func platform17(highest_platform):
	highest_platform = $platforms/platform16
	$platforms/platform17.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform17
	is_on_screen17 = true
	random_traps17()

func platform18(highest_platform):
	highest_platform = $platforms/platform17
	$platforms/platform18.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform18
	is_on_screen18 = true
	random_traps18()

func platform19(highest_platform):
	highest_platform = $platforms/platform18
	$platforms/platform19.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform19
	is_on_screen19 = true
	random_traps19()

func platform20(highest_platform):
	highest_platform = $platforms/platform19
	$platforms/platform20.global_position.y = highest_platform.global_position.y - gap
	highest_platform = $platforms/platform20
	is_on_screen20 = true
	random_traps20()
	
func _on_visible_on_screen_notifier_2d_screen_entered():
	is_on_screen1 = true

func _on_visible_on_screen_notifier_2d_screen_exited():
	is_on_screen1 = false

func _on_visible_on_screen_notifier_2d_2_screen_entered():
	is_on_screen2 = true

func _on_visible_on_screen_notifier_2d_2_screen_exited():
	is_on_screen2 = false

func _on_visible_on_screen_notifier_2d_3_screen_entered():
	is_on_screen3 = true

func _on_visible_on_screen_notifier_2d_3_screen_exited():
	is_on_screen3 = false

func _on_visible_on_screen_notifier_2d_4_screen_entered():
	is_on_screen4 = true

func _on_visible_on_screen_notifier_2d_4_screen_exited():
	is_on_screen4 = false

func _on_visible_on_screen_notifier_2d_5_screen_entered():
	is_on_screen5 = true

func _on_visible_on_screen_notifier_2d_5_screen_exited():
	is_on_screen5 = false

func _on_visible_on_screen_notifier_2d_6_screen_entered():
	is_on_screen6 = true

func _on_visible_on_screen_notifier_2d_6_screen_exited():
	is_on_screen6 = false

func _on_visible_on_screen_notifier_2d_7_screen_entered():
	is_on_screen7 = true

func _on_visible_on_screen_notifier_2d_7_screen_exited():
	is_on_screen7 = false

func _on_visible_on_screen_notifier_2d_8_screen_entered():
	is_on_screen8 = true

func _on_visible_on_screen_notifier_2d_8_screen_exited():
	is_on_screen8 = false
	
func _on_visible_on_screen_notifier_2d_9_screen_entered():
	is_on_screen9 = true

func _on_visible_on_screen_notifier_2d_9_screen_exited():
	is_on_screen9 = false

func _on_visible_on_screen_notifier_2d_10_screen_entered():
	is_on_screen10 = true

func _on_visible_on_screen_notifier_2d_10_screen_exited():
	is_on_screen10 = false

func _on_visible_on_screen_notifier_2d_11_screen_entered():
	is_on_screen11 = true

func _on_visible_on_screen_notifier_2d_11_screen_exited():
	is_on_screen11 = false

func _on_visible_on_screen_notifier_2d_12_screen_entered():
	is_on_screen12 = true

func _on_visible_on_screen_notifier_2d_12_screen_exited():
	is_on_screen12 = false

func _on_visible_on_screen_notifier_2d_13_screen_entered():
	is_on_screen13 = true

func _on_visible_on_screen_notifier_2d_13_screen_exited():
	is_on_screen13 = false

func _on_visible_on_screen_notifier_2d_14_screen_entered():
	is_on_screen14 = true

func _on_visible_on_screen_notifier_2d_14_screen_exited():
	is_on_screen14 = false

func _on_visible_on_screen_notifier_2d_15_screen_entered():
	is_on_screen15 = true

func _on_visible_on_screen_notifier_2d_15_screen_exited():
	is_on_screen15 = false

func _on_visible_on_screen_notifier_2d_16_screen_entered():
	is_on_screen16 = true

func _on_visible_on_screen_notifier_2d_16_screen_exited():
	is_on_screen16 = false

func _on_visible_on_screen_notifier_2d_17_screen_entered():
	is_on_screen17 = true

func _on_visible_on_screen_notifier_2d_17_screen_exited():
	is_on_screen17 = false

func _on_visible_on_screen_notifier_2d_18_screen_entered():
	is_on_screen18 = true

func _on_visible_on_screen_notifier_2d_18_screen_exited():
	is_on_screen18 = false

func _on_visible_on_screen_notifier_2d_19_screen_entered():
	is_on_screen19 = true

func _on_visible_on_screen_notifier_2d_19_screen_exited():
	is_on_screen19 = false

func _on_visible_on_screen_notifier_2d_20_screen_entered():
	is_on_screen20 = true

func _on_visible_on_screen_notifier_2d_20_screen_exited():
	is_on_screen20 = false

func pause():
	get_tree().paused = true
	$PauseMenu.show()

func unpause():
	get_tree().paused = false
	$PauseMenu.hide()

func _on_continue_pressed():
	await get_tree().create_timer(0.01).timeout
	unpause()

func _on_touch_screen_button_pressed():
	pause()

func _on_quit_pressed():
	get_tree().quit()

func _on_options_pressed():
	$Options.visible = true
	$PauseMenu.visible = false

func _on_mute_pressed():
	var master_bus_index = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_mute(master_bus_index, !AudioServer.is_bus_mute(master_bus_index))
	if AudioServer.is_bus_mute(master_bus_index):
		$Options/HBoxContainer/MarginContainer2/Mute/Mute_text.text = "Muted"
		$Options/HBoxContainer/MarginContainer2/Mute/Mute_text.modulate = "red"
	else:
		$Options/HBoxContainer/MarginContainer2/Mute/Mute_text.text = "Mute"
		$Options/HBoxContainer/MarginContainer2/Mute/Mute_text.modulate = "white"

func _on_back_pressed():
	$Options.visible = false
	$PauseMenu.visible = true
