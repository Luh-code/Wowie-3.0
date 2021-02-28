extends Node2D

var checkpoints = "Checkpoints/"
var doors = "Doors/"
var lasers = "Lasers/"
# Checkpoint template
#onready var cp = get_node(checkpoints + "")
onready var cp1 = get_node(checkpoints + "Checkpoint")
# Door template
#onready var d = get_node(doors + "")
onready var d1 = get_node(doors + "Door")
onready var d2 = get_node(doors + "Door2")
# Laser template
#onready var l = get_node(lasers + "")

signal logic_passon(logic_data, id_data)

func _ready():
	# Connection template
	#connect("logic_passon", cp, "_on_logic_passon")
	connect("logic_passon", cp1, "_on_logic_passon")
	#connect("logic_passon", d, "_on_logic_passon")
	connect("logic_passon", d1, "_on_logic_passon")
	connect("logic_passon", d2, "_on_logic_passon")
	#connect("logic_passon", l, "_on_logic_passon")
	pass

func _on_logic(logic_data, id_data):
	emit_signal("logic_passon", logic_data, id_data)