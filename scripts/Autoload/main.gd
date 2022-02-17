extends Node2D

var enemies = []
var shape

var enemy

func _ready():
	var enssc = preload('res://scripts/enemy.tscn')
	if Global.mode == "Easy":
		for i in 40:
			randomize()
			var ensc = enssc.instance()
			ensc.set_name("Circle_"+ str(i))
			get_node(".").add_child(ensc)
			var nop = get_node("Circle_" + str(i))
			nop.get_node("CollisionShape2D").shape.set_radius(nop.enemy.size)
			if i % 16 == 0:
				nop.enemy.color = Color.aqua
				nop.enemy.deadly = true
				
	if Global.mode == "Medium":
		for i in 80:
			randomize()
			var ensc = enssc.instance()
			ensc.set_name("Circle_"+ str(i))
			get_node(".").add_child(ensc)
			var nop = get_node("Circle_" + str(i))
			nop.get_node("CollisionShape2D").shape.set_radius(nop.enemy.size)
			if i % 10 == 0:
				nop.enemy.color = Color.aqua
				nop.enemy.deadly = true 
				
	if Global.mode == "Hard":
		for i in 120:
			randomize()
			var ensc = enssc.instance()
			ensc.set_name("Circle_"+ str(i))
			get_node(".").add_child(ensc)
			var nop = get_node("Circle_" + str(i))
			nop.get_node("CollisionShape2D").shape.set_radius(nop.enemy.size)
			if i % 4 == 0:
				nop.enemy.color = Color.aqua
				nop.enemy.deadly = true 

func _on_RespawnTimer_timeout():
	var enssc = preload('res://scripts/enemy.tscn')
	if Global.mode == "Easy":
		for i in 20:
			randomize()
			var ensc = enssc.instance()
			ensc.set_name("Circle_"+ str(i))
			get_node(".").add_child(ensc)
			var nop = get_node("Circle_" + str(i))
			nop.get_node("CollisionShape2D").shape.set_radius(nop.enemy.size)
			if i % 16 == 0:
				nop.enemy.color = Color.aqua
				nop.enemy.deadly = true
			
	if Global.mode == "Medium":
		for i in 40:
			randomize()
			var ensc = enssc.instance()
			ensc.set_name("Circle_"+ str(i))
			get_node(".").add_child(ensc)
			var nop = get_node("Circle_" + str(i))
			nop.get_node("CollisionShape2D").shape.set_radius(nop.enemy.size)
			if i % 10 == 0:
				nop.enemy.color = Color.aqua
				nop.enemy.deadly = true 
			
	if Global.mode == "Hard":
		for i in 60:
			randomize()
			var ensc = enssc.instance()
			ensc.set_name("Circle_"+ str(i))
			get_node(".").add_child(ensc)
			var nop = get_node("Circle_" + str(i))
			nop.get_node("CollisionShape2D").shape.set_radius(nop.enemy.size)
			if i % 4 == 0:
				nop.enemy.color = Color.aqua
				nop.enemy.deadly = true
				
	$RespawnTimer.start()
