extends Node2D

var player_score = -2
var oponent_score = -2

func _process(delta):
	$MarcadorPlayer.text = str(player_score)
	$MarcadorOponent.text = str(oponent_score)
	

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(1920/2,1080/2)
	$Ball._reset_ball()


func _on_ArcoPlayer_body_entered(body):
	player_score += 1
	_restart_game() # Replace with function body.


func _on_ArcoPlayer2_body_entered(body):
	oponent_score +=1
	_restart_game() # Replace with function body.
