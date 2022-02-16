extends Button



func _on_x2CoinButton_pressed():
	var shop_items = Global.shop_items.new()
	shop_items.double_coins = true
	disabled = true
