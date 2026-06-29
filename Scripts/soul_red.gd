extends CharacterBody2D

@export var Speed = 150
@export var Sprite: Sprite2D

var frequency = 0.03
var amplitude = 8
var am_alive = true

func _physics_process(delta: float) -> void:
	
	##HANDLING MOVEMENT
	var x_axis = -Input.get_axis("MOVE_LEFT", "MOVE_RIGHT")
	var y_axis = Input.get_axis("MOVE_UP", "MOVE_DOWN")
	velocity = Vector2(x_axis, y_axis)*Speed
	var collision = move_and_collide(velocity*delta)
	if collision:
		var collider = collision.get_collider()
		if collider.is_in_group("SPIKES"):
			get_tree().reload_current_scene()
	
	##BASIC SPRITE ANIMATIONS
	Sprite.rotation_degrees = sin(Time.get_ticks_msec() * frequency) * amplitude
	if(x_axis != 0):
		Sprite.scale.x = x_axis*4
	if (x_axis == 0 && y_axis == 0):
		Sprite.rotation_degrees = 0

func Death():
	pass
