#Creates all the card objects
class_name card_factory

const wood_hut = preload("res://Scenes/Buildings/WoodHut.tscn")

func create_wood_hut():
	var hut = wood_hut.instantiate()
	return hut
