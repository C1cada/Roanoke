extends Node

@export
var speed = 1

var paused = false

var day = 0

var week = 0

var time_start: float
var time_now: float

signal day_passed(day: int)
signal week_passed(week: int)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	time_start = Time.get_unix_time_from_system()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (paused):
		pass
		
	time_now = Time.get_unix_time_from_system() - time_start
	if (time_now >= (1/speed)):
		time_start = Time.get_unix_time_from_system()
		day += 1
		if (day > 7):
			day = 1
			week += 1
			week_passed.emit(week)
		day_passed.emit(day)
		
