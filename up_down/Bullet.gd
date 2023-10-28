extends CharacterBody2D

var speed = 150

func _physics_process(delta):
	#print (position)
	position += velocity * speed * delta


func _on_area_body_entered(body):
	var i = 0
	for hit_body in $area.get_overlapping_bodies():
		if hit_body.is_in_group("Hit"):
			hit_body.take_damage(10)
		
	queue_free()
