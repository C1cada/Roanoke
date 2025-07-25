extends Node2D

#current number
var hand_size = 0

#dont go over this number
var max_size = 10

#variable card size?
var card_width

#keeps a list of all the cards in hand
var hand = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func add_to_hand(card) -> void:
	hand.insert(0, card)
	
func update_hand_positions() -> void:
	pass
#func set_card_width():
	#card_width = max(250 - (player_hand.size() * 10),100)
