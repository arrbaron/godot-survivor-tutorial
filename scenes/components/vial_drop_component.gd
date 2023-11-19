class_name VialDropComponent
extends Node

@export_range(0, 100) var drop_percent: float = .5
@export var health_component: HealthComponent
@export var vial_scene: PackedScene


func _ready():
	health_component.died.connect(on_died)


func on_died():
	if randf() > drop_percent:
		return

	if vial_scene == null || not owner is Node2D:
		return

	var spawn_position = (owner as Node2D).global_position
	var vial_instance = vial_scene.instantiate() as Node2D

	get_tree().get_first_node_in_group("entities_layer").add_child(vial_instance)
	vial_instance.global_position = spawn_position
