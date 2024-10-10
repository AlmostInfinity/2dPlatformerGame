extends Node
@onready var button_pressed_sfx: AudioStreamPlayer = $ButtonPressedSfx


func _on_level_1_button_pressed():
	button_pressed_sfx.play()
	get_tree().change_scene_to_file("res://Scenes/Levels/game (level 1).tscn")


func _on_level_2_button_pressed():
	button_pressed_sfx.play()
	get_tree().change_scene_to_file("res://Scenes/Levels/game (level 2).tscn")


# this line below doesn't work for some reason. remember to fix this
# maybe check node > signals > pressed() for clues?
func _on_level_3_button_pressed():
	button_pressed_sfx.play()
	get_tree().change_scene_to_file("res://Scenes/Levels/game (level 3).tscn")
