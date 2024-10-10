extends Node

@onready var pointcounter: Label = %pointcounter
@export var hearts : Array[Node]
@onready var enemy_death_sfx: AudioStreamPlayer = $EnemyDeathSfx
@onready var item_collected_sfx: AudioStreamPlayer = $ItemCollectedSfx



var points = 0
var lives = 3

func decrease_health():
	lives -= 1
	print(lives)
	for h in 3:
		if (h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if (lives == 0):
		get_tree().reload_current_scene()

func Enemy_Dies():
		enemy_death_sfx.play()

func Item_Collected():
		item_collected_sfx.play()

func add_point():
		points += 1
		print(points)
		pointcounter.text = "Oranges: " + str(points)
