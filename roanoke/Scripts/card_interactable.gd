extends Node2D

signal hovered
signal hovered_off
signal untethered

# If card is picked up
var tethered = false

# What is moved
var interactable = self

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (tethered):
		interactable.position = get_global_mouse_position()

func _on_area_2d_mouse_entered() -> void:
	hovered.emit()
	
func _on_area_2d_mouse_exited() -> void:
	hovered_off.emit()

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton):
		if (event.button_index == MouseButton.MOUSE_BUTTON_LEFT):
			if (event.pressed):
				tethered = true
				print(tethered)
			else:
				untethered.emit()
				tethered = false
				print(tethered)
				
func set_shape(shape: Vector2i):
	$Area2D/CollisionShape2D.shape.extents = shape
	
func set_interactable(target: Node2D):
	interactable = target
