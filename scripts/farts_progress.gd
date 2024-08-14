extends CanvasLayer

@onready var poop_progress: TextureProgressBar = $MarginContainer/TextureProgressBar

func _ready():
	Globals.connect("poop_progress_change", update_poop_text)
	update_poop_text()

func _process(_delta):
	if $MarginContainer/TextureProgressBar.value >= 100:
		Globals.max_progress_farts = true
		$MarginContainer/TextureProgressBar.tint_progress = "red"
	elif $MarginContainer/TextureProgressBar.value == 0:
		$MarginContainer/TextureProgressBar.tint_progress = "white"

func update_poop_text():
	poop_progress.value = Globals.poop
	print(poop_progress.value, "    ", Globals.poop)
