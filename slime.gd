extends Node2D

const ENEMY_SPEED = 60

var direction = 1

# Directional Movement (left or right)
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft

func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
	if ray_cast_left.is_colliding():
		direction = 1
	position.x += direction * ENEMY_SPEED * delta
	
	
