extends Node2D

@onready
var interactable = $CardInteractable

@onready
var return_home = $ReturnHome

@onready
var sprite = $Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#interactable.set_shape(sprite.get_rect().size)
	interactable.set_interactable(self)
	interactable.untethered.connect(return_home.return_home)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_home(home):
	return_home.set_home(home)
