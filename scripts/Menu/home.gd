extends Button

func _on_PlayButton_pressed() -> void:
	get_tree().change_scene("res://scripts/main.tscn")
	

func _on_icButton_pressed() -> void:
	get_tree().change_scene("res://scripts/ItemShop/item_shop.tscn")
	

func _on_quitButton_pressed():
	get_tree().quit()
