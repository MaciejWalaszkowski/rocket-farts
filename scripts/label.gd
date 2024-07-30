extends CanvasLayer

@onready var score_label: Label = $Control/MarginContainer3/Label
@onready var high_score: Label = $Control/MarginContainer4/Label

func _ready():
	Globals.connect("points_progress_change", update_score_text)
	update_score_text()
	high_score.text = "High Score: " + str(Globals.save_data.high_score)
	
func update_score_text():
	if Globals.player_alive:
		score_label.text = "Your Score: " + str(Globals.score)
		
	if Globals.score > Globals.save_data.high_score:
		high_score.visible = true
		
		Globals.save_data.high_score = Globals.score
		Globals.save_data.save()
