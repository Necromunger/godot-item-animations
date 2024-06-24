extends Node3D

@export var weapon: Weapon
@onready var animation_tree = $AnimationTree as AnimationTree

var idle: AnimationNodeAnimation
var attack: AnimationNodeAnimation

# Called when the node enters the scene tree for the first time.
func _ready():
	var root = animation_tree.tree_root as AnimationNodeBlendTree
	idle = root.get_node("Idle") as AnimationNodeAnimation
	attack = root.get_node("Attack") as AnimationNodeAnimation
	
	print_debug(weapon.idle_anim.resource_name)
	idle.animation = weapon.idle_anim.resource_name

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
