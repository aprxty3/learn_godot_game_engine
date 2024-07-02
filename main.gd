extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello")
	$Label.text = "Hello Green"
	$Label.modulate = Color.GREEN
