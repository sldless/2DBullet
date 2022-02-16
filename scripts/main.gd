extends Node2D

var enemies = []
var shape

var enemy

func _ready():
	var enssc = preload('res://scripts/enemy.tscn')
	for i in 80:
		randomize()
		var ensc = enssc.instance()
		ensc.set_name("Circle_"+ str(i))
		get_node(".").add_child(ensc)
		var nop = get_node("Circle_" + str(i))
		nop.get_node("CollisionShape2D").shape.set_radius(nop.enemy.size)
		if i % 6 == 0:
			nop.enemy.color = Color.aqua
			nop.enemy.deadly = true 
func _on_RespawnTimer_timeout():
	var enssc = preload('res://scripts/enemy.tscn')
	for i in 20:
		randomize()
		var ensc = enssc.instance()
		ensc.set_name("Circle_"+ str(i))
		get_node(".").add_child(ensc)
		var nop = get_node("Circle_" + str(i))
		nop.get_node("CollisionShape2D").shape.set_radius(nop.enemy.size)
	$RespawnTimer.start()
