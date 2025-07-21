extends Node2D

@onready
var basemap := $BaseMap

@onready
var select := $Select
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	basemap.select = select


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
