extends Area2D




func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	print(bodies)
	for body in bodies:
		if body.name == "KinematicBody2D":
			$Timer.start()
			$CanvasModulate.show()

			


func _on_Timer_timeout():
	get_tree().change_scene("res://world.tscn")
	pass # Replace with function body.
