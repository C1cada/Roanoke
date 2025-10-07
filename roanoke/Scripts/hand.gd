extends Node2D

#current number
var hand_size = 0

#dont go over this number
var max_size = 8

#Space between each card
var spacing = 10

#variable card size?
var card_width = 64

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
	print("added")
	update_hand_positions()
	
func update_hand_positions() -> void:
	var i = 0
	for card in hand:
		var pos = Vector2(
			(position.x) + ((card_width + spacing) * i), 
			position.y)
		move_to_position(card, pos)
		card.set_home(pos)
		i += 1
		
		print(card.position)
		
func move_to_position(card, position):
	var tween = get_tree().create_tween()
	tween.tween_property(card, "position", position, 0.1)
			
#func set_card_width():
	#card_width = max(250 - (player_hand.size() * 10),100)
