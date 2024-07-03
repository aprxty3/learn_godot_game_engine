class_name Character

extends Node

@export var profession : String
@export var health : int

func die():
	health = 0
	print(profession + " died.")
