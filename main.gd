extends Node


var health = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello")
	$Label.text = "Hello Green"
	$Label.modulate = Color.GREEN
	
	print(health)	
	#health = 40
	#print(health)
	#health = 20 + 30
	#print(health)
	#health += 20
	#print(health)
	#health -= 10
	#print(health)
	#health *= 4
	#print(health)
	#health /= 2
	#print(health)


func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.RED
		health -= 20
		print(health)
	
	if event.is_action_released("my_action"):
		$Label.modulate = Color.GREEN
	
	
