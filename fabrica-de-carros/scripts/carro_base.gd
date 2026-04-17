extends Node2D

@onready var carro_sprite: Sprite2D = $CarroSprite

@export var R: int;
@export var G: int;
@export var B: int;

func carro_cor(r: int, g: int, b: int):
	carro_sprite.modulate = Color(r, g ,b)

func _ready() -> void:
	carro_cor(R, G ,B)
