extends Area2D
@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print("You died, lol.")
	Engine.time_scale = 0.4
	body.get_node("CollisionShape2D2").queue_free()
	timer.start()
	
	


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
