extends KinematicBody2D

var pre_path = "res://imgs/Ships/"
var input_vector = Vector2.ZERO
var velocity = Vector2.ZERO
export var speed = 200

var airplanes_imgs = [
	"a_01.png", "a_02.png", "a_03.png",
	"b_01.png", "b_02.png", "b_03.png",
	"c_01.png", "c_02.png", "c_03.png",
	"d_01.png", "d_02.png", "d_03.png"
	]

func _ready():
	pass

func _process(delta):
	movement()

func movement():
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = input_vector * speed
	velocity.normalized()
	move_and_slide(velocity)
