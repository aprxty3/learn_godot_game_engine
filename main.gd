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
	
	var result = add(10,21)
	print(result)
#
	var character_height = randi_range(120,200)
	print("character height:" + str(character_height))
	
	var items: Array[String] = ["Potion", "Feater","Stolen harp"]
	print(items[0])
	
	items[0] = "Ntaps"
	print(items[0])
	
	items.remove_at(1)
	print(items)
	
	items.append("hahah")
	print(items)
	
	for item in items:
		print(item)
		
	var glass := 0.0
	
	while glass < 0.5:
		glass += randf_range(0.01, 0.2)
		
		if glass > 0.3:
			break
		print(glass)
	
	print("walaa")
	
	var players = {
		"Satu": 1,
		"Lima": 5,
		"Sepuluh": 10,
	}
	
	players["Satu"] = 22
	players["Dwayne"] = 100
	
	for usernmae in players:
		print(usernmae + ": " + str(players[usernmae]))
		
	var enemies = {
		"Satu" : {"Level": 10 , "Darah": 100},
		"Dua" : {"Level": 15 , "Darah": 150},
		"Tiga" : {"Level": 20 , "Darah": 200},
	}
	
	print(enemies["Satu"]["Darah"])


func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.RED
		health -= 20
		print(health)
		
		if health <= 0:
			health = 0
			print("You Die")
		elif health < 50:
			print("You Injured")
		else:
			print("Healty")
		
		jump()
		
		var roll = randf()
		if roll <= 0.8:
			print("get Common Item")
		else:
			print("get Rare Item")
	
	if event.is_action_released("my_action"):
		$Label.modulate = Color.GREEN
	


func jump():
	#add effect
	print("Jump!")

func add(num1: int, num2:int)-> int:
	var result = num1 + num2
	return result
