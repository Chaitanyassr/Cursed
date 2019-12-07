extends KinematicBody2D




'''defining var and const'''
var UP = Vector2(0, -1)
var motion = Vector2()

var timer : float = 0
onready var animation = $Sprite
var jump = 0


'''function for the game'''
func _ready():
	set_physics_process(true)
	set_process(true)
	
	
#to call rich rect tile for score
func _process(delta):
	pass

	
	#ParticleSystem = get_parent().get_parent().get_node("Player2/Player/DeathParticle/Particles2D")
	#player = get_parent().get_parent().get_node("Player2/Player")
	



func _physics_process(delta):
	motion.y += 50 
	

	
	
	
	var friction = false
	
	
	
	
	
#we can also wirte code by using if else statement for lerp and friciton
#x+20 is acceleration and 500 is speed
		
	if Input.is_action_pressed("ui_down"):
	
		if Input.is_action_pressed("ui_right"):
			motion.x = min(motion.x+20, 500)   
			$Sprite.flip_h = false
			$Sprite.play("Actionrun")
			#var play = get_parent().get_parent().get_node("Effects/SlowTime")
			#play.start()
			
		elif Input.is_action_pressed("ui_left"):
			motion.x = max(motion.x-20, -500)
			$Sprite.flip_h = true
			$Sprite.play("Actionrun")
			#var play = get_parent().get_parent().get_node("Effects/SlowTime")
			#play.start()
		
			
		else:
			$Sprite.play("Action")
			#var play = get_parent().get_parent().get_node("Effects/SlowTime")
			#play.start()
			friction = true
			
			#var tt = get_parent().get_parent().get_node("EnemyHolder/Female")
			#tt.hide()
	
	elif Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x+20, 500)   
		$Sprite.flip_h = false
		$Sprite.play("Run")
		



	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x-20, -500)
	 $Sprite.flip_h = true
	 $Sprite.play("Run")
	
	
	
	else: 
		$Sprite.play("Idle")
		friction = true


	if motion.y < 0:
		$Sprite.play("Jump")
		
		
##double jump start code part 1
#	if jump == 3:
#		motion.y = 1000
#		jump = 0
#		$Sprite.play("jump")
#		if friction == true:
#			motion.x = lerp(motion.x, 0, 0.2)
##double jump end code part 1
		
	if is_on_floor():
		
##s##		#single jump main code
		if Input.is_action_just_pressed("ui_up"):

			motion.y = -1000
	
	
		
			

###
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.2)
	else:
		$Sprite.play("Jump")
		if friction == true:
				motion.x = lerp(motion.x, 0, 0.2)
###
###		#sky walk
#		if Input.is_action_just_pressed("ui_up"):
#			motion.y = -1000
#
##
#		if friction == true:
#			motion.x = lerp(motion.x, 0, 0.2)
#	elif Input.is_action_just_pressed("ui_up"):
#		motion.y = -1000
#		$Sprite.play("Jump")
#		if friction == true:
#				motion.x = lerp(motion.x, 0, 0.2)
#
##double jump part 2 code
#		if Input.is_action_just_pressed("ui_up"):
#			jump = 1
#			motion.y = -1000
#			$Sprite.play("Jump")
##
###
#		if friction == true:
#			motion.x = lerp(motion.x, 0, 0.2)
#	elif Input.is_action_just_pressed("ui_up"):
#		if jump < 2:
#			jump += 1
#			motion.y = -1000
#			$Sprite.play("Jump")
#		if friction == true:
#				motion.x = lerp(motion.x, 0, 0.2)
#	else:
#		friction = true
#		$Sprite.play("Jump")
		
##double jump part 2 code end

				
				

	
	
		
	

	motion = move_and_slide(motion, UP)
	
