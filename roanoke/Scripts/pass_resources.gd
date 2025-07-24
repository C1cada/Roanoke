extends Node


signal send_resources(type: String, num: int)

func resources_ready(type: String, num: int):
	send_resources.emit(type, num)
	
