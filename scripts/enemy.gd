extends KinematicBody2D

var gravity
var hover : bool = false
var enemies
var shape
var deadly : bool = false
var enemy
var xp : int = 0

class Enemy:
	var position = Vector2()
	var body = RID()
	var velocity = Vector2.ZERO
	var size
	var color
	var deadly : bool = false
	var player

func _ready():
	randomize()
	enemy = Enemy.new()
	gravity = rand_range(4, 8)
	var x_range = Vector2(512, 1200)
	var y_range = Vector2(25, 575)
	
	var random_x = randi() % int(x_range[1] - x_range[0]) + 1 + x_range[0]
	var random_y =  randi() % int(y_range[1]-y_range[0]) + 1 + y_range[0]
	var random_pos = Vector2(random_x, random_y)
	
	position = random_pos
	enemy.size = rand_range(10, 20)
	enemy.color = Color(rand_range(0, 1), rand_range(0, 1), rand_range(0, 1))
	
func _process(_delta):
	update()

func _physics_process(_delta):
	if hover == true:
		if Input.is_action_just_pressed("mouse_click"):
			var Score : int
			var Level : int
			var score = get_parent().get_node("scoreLabel").get_text()
			var level = get_parent().get_node('levelLabel').get_text()
			Score = int(score) + 1
			score = Score
			if (score % 16 == 0): 
				Level = int(level) + 1
				level = Level
				get_parent().get_node("levelLabel").set_text('Level: '+str(Level))
				enemy.color = Color.green
			get_parent().get_node("scoreLabel").set_text('Score: '+str(Score))
			if enemy.deadly == true:
				 get_tree().reload_current_scene()
				
			queue_free()
	enemy.velocity.x -= gravity / 15
	enemy.position.x -= gravity / 15
	get_node("CollisionShape2D").position.x -= gravity / 15

func _draw():
	draw_circle(enemy.position, enemy.size, enemy.color)

func mouse_entered():
	hover = true

func mouse_exited():
	hover = false
	
