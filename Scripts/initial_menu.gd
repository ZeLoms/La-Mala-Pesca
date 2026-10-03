extends Control

var player_name: String
var max_score: int = 0
var victor: String

func _ready() -> void:
	if player_name != "":
		$Name.text = player_name
	
	if victor != "":
		$Points.text = victor+": "+str(max_score)

func _on_play_pressed() -> void:
	if $Name.text != "":
		var A = load("res://Scenes/gameplay_scene.tscn").instantiate()
		A.player_name = $Name.text
		get_parent().add_child(A)
		queue_free()
	else:
		$Name.placeholder_text = "¡Ponga su nombre!"

func _on_exit_pressed() -> void:
	get_tree().quit()
