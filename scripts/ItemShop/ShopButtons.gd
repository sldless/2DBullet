extends Button



func _on_x2CoinButton_pressed():
	var shop_items = Global.shop_items.new()
	shop_items.double_coins = true
	disabled = true


func _on_backButton_pressed() -> void:
	get_tree().change_scene("res://scripts/Menu/Menu.tscn")
