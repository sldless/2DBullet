extends Button


func _on_PlayButton_pressed() -> void:
	get_tree().change_scene("res://scripts/Menu/GameMode.tscn")

func _on_quitButton_pressed():
	get_tree().quit()


func _on_EasyButton_pressed():
	Global.mode = 'Easy'
	get_tree().change_scene("res://scripts/main.tscn")
	


func _on_MeduimButton_pressed():
	Global.mode = 'Medium'
	get_tree().change_scene("res://scripts/main.tscn")
	
	
func _on_HardButton_pressed():
	Global.mode = 'Hard'
	get_tree().change_scene("res://scripts/main.tscn")


func _on_CreditButton_pressed():
	OS.shell_open("https://github.com/sldless/2DBullet")
