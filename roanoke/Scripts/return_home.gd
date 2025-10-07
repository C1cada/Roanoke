extends Node2D

var home

func return_home():
	print("called")
	print(home)
	var tween = get_tree().create_tween()
	tween.tween_property(self.get_parent(), "position", home, 0.1)
	
func set_home(target):
	home = target
