extends Node2D

func _ready():
	$VBoxContainer/ScrollContainer/HBoxContainer/buttonGame1.connect("pressed", Callable(self, "_on_Game1_pressed"))
	$VBoxContainer/ScrollContainer/HBoxContainer/buttonGame2.connect("pressed", Callable(self, "_on_Game2_pressed"))
	$VBoxContainer/ScrollContainer/HBoxContainer/buttonGame3.connect("pressed", Callable(self, "_on_Game3_pressed"))
	$VBoxContainer/buttonRooms.connect("pressed", Callable(self, "_on_Rooms_pressed"))

func _on_Game1_pressed():
	get_tree().change_scene_to_file("res://Game1Scene.tscn")

func _on_Game2_pressed():
	get_tree().change_scene_to_file("res://Game2Scene.tscn")

func _on_Game3_pressed():
	get_tree().change_scene_to_file("res://Game3Scene.tscn")

func _on_Rooms_pressed():
	get_tree().change_scene_to_file("res://rooms.tscn")
