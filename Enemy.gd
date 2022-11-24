extends KinematicBody2D

var speed = 1000
var Ball

func _ready():
	Ball = get_parent().find_node("Ball")


func _physics_process(delta):
	var direction = Vector2(0, _get_direction())
	move_and_slide(direction * speed)

func _get_direction():
	if abs(Ball.position.y - position.y) > 21.9:
		if Ball.position.y > position.y:
			return 1
		else: 
			return -1
	else:
		return 0
