extends KinematicBody2D

var ParticleSystem = null
var player = null

export var EnemySpeed = 500
export var Gravity = 10

var is_dead = false



var EnemyMotion = Vector2()
var EnemyDirection = 1
var UP = Vector2(0,-1)
var OppositeDirection = -1





func _ready():
 set_physics_process(true)


#func dead():
#	is_dead = true
#	EnemySpeed = 0
#	EnemyMotion = Vector2(0, 0)
#	$CollisionShape2D.disabled = true
#	$Area2D/CollisionShape2D.disabled = true
#	var female = get_parent().get_parent().get_node("EnemyHolder/femalezombie2/FemaleZombie2")
#	female.hide()



	 
	
	

	
#func _process(delta):
 #for i in range(get_slide_count()):
  #if "Player2" in get_slide_collision(i).collider.name:
   #var player2 = get_parent().get_parent().get_node("Player2/Player")
   #player2.TakeDamage()
   #queue_free()
  

func _physics_process(delta): 
 

 
 
 #EnemyMotion.y += Gravity
 if is_on_wall():
	  EnemyDirection = EnemyDirection * OppositeDirection

  #$RayCast2D.position.x = OppositeDirection * 27
  #$RayCast2D2.position.x = -27

#enemy will kill player by using raycast ...not needed as now i m using area2d
# if $RayCast2D2.is_colliding():
#	#if $RayCast2D2.get_collider():
#			var ayer2 = get_parent().get_parent().get_node("Player2/Player")
#			ayer2.TakeDamage(1)
#			if(ayer2.health == 3):
#				$MaleZombie2.play("AttackZ")
				
			

			#ParticleSystem.show()
			#$MaleZombie2.play("AttackZ")
			#ayer2.can_move()
			#yield(get_tree().create_timer(ParticleSystem.lifetime), "timeout")
			#get_tree().reload_current_scene()
#	
#	player.hide()
#	ParticleSystem.show()
#	yield(get_tree().create_timer(ParticleSystem.lifetime), "timeout")
#	get_tree().reload_current_scene()
			
			


  
   
  
  
 if EnemyDirection == 1:
	  $FemaleZombie2.flip_h = false



 elif EnemyDirection == -1:
	  $FemaleZombie2.flip_h = true


  #$RayCast2D.position.x = 27
  #$RayCast2D2.position.x = 27
  

  
 EnemyMotion.x = EnemyDirection * EnemySpeed
 
 EnemyMotion = move_and_slide(EnemyMotion, UP)
 