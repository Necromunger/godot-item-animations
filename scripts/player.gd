extends Node3D

@export var weapon: Weapon
@onready var animation_tree = $AnimationTree as AnimationTree

var idle: AnimationNodeAnimation
var attack: AnimationNodeAnimation

func _ready():
	var root = animation_tree.tree_root as AnimationNodeBlendTree
	idle = root.get_node("Idle") as AnimationNodeAnimation
	attack = root.get_node("Attack") as AnimationNodeAnimation
	
	idle.animation = weapon.idle_anim.resource_name
	attack.animation = weapon.attack_anim.resource_name

	animation_tree["parameters/OneShot/request"] = AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE
