extends CanvasLayer

@onready var points: Label = $HBoxContainer/MarginContainer/Score
@onready var high_score: Label = $HBoxContainer/MarginContainer2/HighScoreLabel
func _ready():
	Globals.connect("points_progress_change", update_score_text)
	update_score_text()

func update_score_text():
	if Globals.player_alive:
		points.text = "Score: " + str(Globals.score)
		high_score.text = "High Score: " + str(Globals.save_data.high_score)
