extends Area2D

@onready var game_manager: Node = %"Game manager"



func _on_body_entered(body: Node2D):
	if (body.name == "CharacterBody2D"):
		queue_free()
		game_manager.add_point()
		game_manager.Item_Collected()
