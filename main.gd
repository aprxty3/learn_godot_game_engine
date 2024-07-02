extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello")
	$Label.text = "Hello Green"
	$Label.modulate = Color.GREEN


func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.RED
	
	if event.is_action_released("my_action"):
		$Label.modulate = Color.GREEN
	
