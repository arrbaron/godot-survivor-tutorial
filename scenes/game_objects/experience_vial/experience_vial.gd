extends Node2D


func _ready():
	$Area2D.area_entered.connect(on_area_entered)


func on_area_entered(_area: Area2D):
	queue_free()
