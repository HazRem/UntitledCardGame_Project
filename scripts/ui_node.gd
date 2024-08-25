extends Node2D

@onready var card_scene: PackedScene = preload("res://scenes/card.tscn")
@onready var spawn_point = $CanvasLayer/Spawn
# Called when the node enters the scene tree for the first time.
func _ready():
	print(card_scene)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_create_card_1_pressed():
	print("pressed")
	
	var card = card_scene.instantiate()
	card.set_card_values(1, "slide", "Knocks down oponents while sliding to another tile")
	spawn_point.add_child(card)