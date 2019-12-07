extends Area2D



func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	print(bodies)
	for body in bodies:
		if body.name == "KinematicBody2D":
			var con = get_parent().get_parent().get_node("text/Control")
			con.show()

