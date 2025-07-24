extends TileMapLayer

var select: Node2D;
var last_select_pos: Vector2;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _input(event):
	if Input.is_action_just_released("click"):
		var pos = local_to_map(event.position)
		var target = map_to_local(pos)
		print(get_cell_tile_data(pos).get_custom_data("type"))
		if (target != last_select_pos):
			select.visible = true
			select.position = target
			last_select_pos = target
		else:
			select.visible = false
