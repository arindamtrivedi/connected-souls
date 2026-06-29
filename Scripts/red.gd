extends Area2D
@onready var Master = get_tree().root.get_node("Node2D")

func _on_body_entered(body: Node2D) -> void:
	if (body.name == "Soul_Red"):
		Master.wc_red = true
		print("Red Done")
