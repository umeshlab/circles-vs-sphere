extends KinematicBody2D

var motion = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var Player = get_parent().get_node("player")
	position += (Player.position - position)/50
	look_at(Player.position)
	move_and_collide(motion)


func _on_Area2D_body_entered(body):
	if "bullet" in body.name:
		queue_free()
		get_tree().change_scene("res://won.tscn")
