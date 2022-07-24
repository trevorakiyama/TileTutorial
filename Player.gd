extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# Movement
	var direction = Input.get_vector("move_left","move_right","move_up","move_down").normalized()
	
	direction *=30
	move_and_slide(direction, Vector2(0,1))
	
	var count = get_slide_count()
	if (count > 0 ):
		print(count)
	
	
	
	
