class_name Card extends Node2D

@export var card_name: String = "Card Name"
@export var card_desc: String = "Card description"
@export var card_cost: int = 1
@export var card_image : Node2D

@onready var cost_lbl : Label = $CostDisplay/CostLbl
@onready var name_lbl : Label = $NameDisplay/NameLbl
@onready var desc_lbl : Label = $DescDisplay/DescLbl

func _ready():
	set_values(card_cost, card_name, card_desc)

func set_card_values(_cost : int, _name : string, _desc : string):
	card_name = _name
	card_desc = _desc
	card_cost = _cost

	cost_lbl.set_text(str(_cost))
	name_lbl.set_text(_name)
	desc_lbl.set_text(card_desc)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
