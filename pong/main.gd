extends Node

var screen_size = Vector2(426,240)
var opponent_score = 0
var player_score = 0

func _ready() -> void:	
	$Ball.stop()
	$Opponent.ball = $Ball
	$CountDownTimer.start()

func _process(delta: float) -> void:
	$CountDown.text = str(int($CountDownTimer.time_left) + 1)

func _on_count_down_timer_timeout() -> void:
	$Ball.reset()


func _on_left_dead_body_entered(body: Node2D) -> void:	
	$Ball.position = screen_size / 2
	$Ball.stop()
	$CountDownTimer.start()
	opponent_score += 1
	$OpponentScore.text = str(opponent_score)


func _on_right_dead_body_entered(body: Node2D) -> void:	
	$Ball.position = screen_size / 2
	$Ball.stop()
	$CountDownTimer.start()
	player_score += 1
	$PlayerScore.text = str(player_score)
