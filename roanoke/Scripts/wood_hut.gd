extends Node2D

#coordinates of top left
var x
var y

#building dimensions
var length = 2
var width = 2

#days to complete construction
var speed = 3

#timer
var timer = speed

@onready
var passer: Node = $PassResources

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func day_passed(day: int) -> void:
	timer -= 1
	if timer == 0:
		#call resource producer
		timer = speed
		passer.resources_ready("wood", 1)
	
func week_passed(week: int) -> void:
	pass
