extends MarginContainer

@onready var life_counter = $HBoxContainer/LifeCounter.get_children()

func update_life(value) -> void:
	for heart in life_counter.size():
		life_counter[heart].get_children()[0].visible = value > heart

func update_score(value) -> void:
	$HBoxContainer/Score.text = str(value)
