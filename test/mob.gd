extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
#	returns array of all 3 animation names: walk, swim, fly
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
#	picks one of them at random (based of indexes: 0-2)
	$AnimationSprite2D.animation = mob_types.pick_random()
	$AnimatedSprite2D.play()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# function that deletes node at the end of the frame
func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
