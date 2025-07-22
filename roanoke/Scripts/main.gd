extends Node2D

@onready
var clock: Node = $Clock

@onready
var gui: Control = $Gui

@onready
var world: Node2D = $World

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Get alerted whenever day or week passed
	clock.day_passed.connect(day_passed)
	clock.week_passed.connect(week_passed)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func day_passed(day: int) -> void:
	print(day)
	
func week_passed(week: int) -> void:
	print(week)
