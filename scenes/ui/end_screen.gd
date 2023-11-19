class_name EndScreen
extends CanvasLayer


func _ready():
	get_tree().paused = true
	%RestartButton.pressed.connect(on_restart_button_pressed)
	%QuitButton.pressed.connect(on_quit_button_pressed)


func set_victory():
	%TitleLabel.text = "Victory"
	%DescriptionLabel.text = "You win!"


func set_defeat():
	%TitleLabel.text = "Defeat"
	%DescriptionLabel.text = "You lost!"


func on_restart_button_pressed():
	get_tree().paused = false
	var main_scene_path := "res://scenes/main/main.tscn"
	get_tree().change_scene_to_file(main_scene_path)


func on_quit_button_pressed():
	get_tree().quit()
