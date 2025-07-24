extends Node2D

@onready
var clock: Node = $Clock

@onready
var gui: Control = $Gui

@onready
var world: Node2D = $World

# will store any tiles not on the basemap
var intersting_tiles = {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Get alerted whenever day or week passed
	clock.day_passed.connect(day_passed)
	clock.week_passed.connect(week_passed)
	create_wood()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func day_passed(day: int) -> void:
	print(day)
	
func week_passed(week: int) -> void:
	print(week)
	
func add_resources(type: String, num: int) -> void:
	print(type)
	print(num)
	
func create_wood():
	var hut = preload("res://Scenes/Buildings/WoodHut.tscn").instantiate()
	add_child(hut) 
	hut.passer.send_resources.connect(add_resources)
	clock.day_passed.connect(hut.day_passed)
	clock.week_passed.connect(hut.week_passed)
	
