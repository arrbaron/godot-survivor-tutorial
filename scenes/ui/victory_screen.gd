class_name VictoryScreen
extends CanvasLayer


func _ready():
	get_tree().paused = true
	%RestartButton.pressed.connect(on_restart_button_pressed)
	%QuitButton.pressed.connect(on_quit_button_pressed)


func on_restart_button_pressed():
	get_tree().paused = false
	var main_scene := "res://scenes/main/main.tscn"
	get_tree().change_scene_to_file(main_scene)


func on_quit_button_pressed():
	get_tree().quit()
