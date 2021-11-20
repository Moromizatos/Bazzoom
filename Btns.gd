extends Triggerable
class_name Btns

func effect(value:bool) -> void:
	if not value:
		self.pressed = false

func _on_Button_toggled(button_pressed):
	if button_pressed:
		set_active(true)
		print(_active)
	else:
		set_active(false)
		print(_active)
