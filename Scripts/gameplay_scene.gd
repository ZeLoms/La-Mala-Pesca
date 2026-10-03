extends Control

var seconds: int = 40
var points: int = 0
var player_name: String
var Good: bool
var T


var Level: String = "Phising"

func _ready() -> void:
	$Level.set_script(load("res://Scripts/Levels/"+Level+".gd"))
	$Timer.start(seconds)
	$Last10.start(seconds-10)
	_set_var()

func _set_var():
	$Gameplay/Bad.disabled = false
	$Gameplay/Good.disabled = false
	$Gameplay/Message.modulate = Color("ffffff")
	if $Level.Good.is_empty():
		Good = false
	elif $Level.Bad.is_empty():
		Good = true
	else:
		Good = [true, false].pick_random()
	var key
	if Good:
		key = $Level.Good.keys().pick_random()
		T = $Level.Good[key]
		$Level.Good.erase(key)
	else:
		key = $Level.Bad.keys().pick_random()
		T = $Level.Bad[key]
		$Level.Bad.erase(key)
	if T is Dictionary:
		$Gameplay/Message/Person/MD/Mail.text = T["User"]
		$Gameplay/Message/Person/Profile.texture = load("res://Sprites/"+T["Profile"]+" Perfil.png")
		$Gameplay/Message/Person/MD/Issue.text = T["Issue"]
		$Gameplay/Message/MainText.text = T["Mail"]
	else:
		$Gameplay/Message/MainText.text = T
	$Gameplay/Points.text = str(points)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	$Gameplay/Time.text = str(round($Timer.time_left))
	

func _on_timer_timeout() -> void:
	var A = load("res://Scenes/initial_menu.tscn").instantiate()
	A.player_name = player_name
	if A.max_score < points:
		A.max_score = points
		A.victor = player_name
	get_parent().add_child(A)
	queue_free()

func _on_bad_pressed() -> void:
	if Good:
		_incorrect()
	else:
		correct()

func _on_good_pressed() -> void:
	if Good:
		correct()
	else:
		_incorrect()
		$Gameplay/Message/MainText.text = T["Incorrect"]

func _incorrect():
	points -= 1
	$Gameplay/Message.modulate = Color("ffc9c9ff")
	$Gameplay/Bad.disabled = true
	$Gameplay/Good.disabled = true
	await get_tree().create_timer(3.0).timeout
	_set_var()

func correct():
	points += 1
	$Gameplay/Message.modulate = Color("dbffddff")
	$Gameplay/Bad.disabled = true
	$Gameplay/Good.disabled = true
	await get_tree().create_timer(0.2).timeout
	_set_var()

func _on_last_10_timeout() -> void:
	$Warning.visible = true
	if $Timer.time_left > 3:
		$Last10.start(1)
		await get_tree().create_timer(0.2).timeout
		$Warning.visible = false
