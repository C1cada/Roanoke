extends Node2D

signal hovered
signal hovered_off
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_mouse_entered() -> void:
	hovered.emit()
	
func _on_area_2d_mouse_exited() -> void:
	hovered_off.emit()

func set_shape(shape: Vector2i):
	$Area2D/CollisionShape2D.shape.extends(shape)
