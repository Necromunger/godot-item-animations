class_name Weapon

extends Resource

@export var name: String
@export var idle_anim: Animation
@export var attack_anim: Animation
@export var block_anim: Animation

func _init(name = "", idle_anim = null, attack_anim = null, block_anim = null):
	name = name
	idle_anim = idle_anim
	attack_anim = attack_anim
	block_anim = block_anim
