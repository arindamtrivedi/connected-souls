extends Node2D

@onready var soul_green = get_tree().root.get_node("Node2D/Soul_Green")
@onready var soul_red = get_tree().root.get_node("Node2D/Soul_Red")
@export var next_level: PackedScene

var wc_green = false
var wc_red = false

func _physics_process(delta: float) -> void:
		
	if(wc_green == true and wc_red == true):
		get_tree().change_scene_to_packed(next_level)
	if (soul_green.am_alive and soul_red.am_alive):
		pass
	else:
		print("You Lost!")
		get_tree().quit()
