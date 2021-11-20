extends Node2D
class_name Airplane

export(StreamTexture) var sprite

onready var spr = $Sprite

func _ready():
	if sprite != null:
		spr.texture = sprite
	else:
		print("no sprite")
