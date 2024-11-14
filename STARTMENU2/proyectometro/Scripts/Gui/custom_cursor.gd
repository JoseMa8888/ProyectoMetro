extends Control

var _default = load("res://Sprites/Mouse/pointer_c_shaded.png")
var _point = load("res://Sprites/Mouse/hand_point.png")
var _grab = load("res://Sprites/Mouse/hand_closed.png")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_custom_mouse_cursor(_point, Input.CURSOR_POINTING_HAND)
	

func _input(event) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed() and Input.get_current_cursor_shape() == 2:
			Input.set_custom_mouse_cursor(_grab, Input.CURSOR_POINTING_HAND)
			await get_tree().create_timer(0.3).timeout
			print("Boton presionado")
			Input.set_custom_mouse_cursor(_point, Input.CURSOR_POINTING_HAND)
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
