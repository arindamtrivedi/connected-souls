extends Camera2D
@onready var Soul = get_tree().root.get_node("Node2D/Soul_Green")

func _physics_process(delta: float) -> void:
	if(Soul.position.y <= 5*64):
		position.y = Soul.position.y - 5*64
