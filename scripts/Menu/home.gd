extends Button


var scene = "res://scripts/main.tscn"

func _pressed() -> void:
	get_tree().change_scene(scene)
	
