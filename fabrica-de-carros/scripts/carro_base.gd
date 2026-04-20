extends Node2D

@onready var carro_sprite: Sprite2D = $CarroSprite

enum Tipo_roda_esquerda{
	GRANDE, 
	MEDIA,
	PEQUENA
}

enum Tipo_roda_direita{
	GRANDE, 
	MEDIA,
	PEQUENA
}


@export var R: int;
@export var G: int;
@export var B: int;
#no inspector podemos mudar o tipo de roda gracas a isso baby
@export var tipo_roda_esquerda: Tipo_roda_esquerda
@export var tipo_roda_direita: Tipo_roda_direita

#aqui basicamente muda a cor da textura de maneria bem simples usando RGB
func carro_cor(r: int, g: int, b: int):
	carro_sprite.modulate = Color(r, g ,b)

func trocar_roda_esquerda():
	match tipo_roda_esquerda:
		Tipo_roda_esquerda.GRANDE:
			pass
		Tipo_roda_esquerda.MEDIA:
			pass
		Tipo_roda_esquerda.PEQUENA:
			pass

func trocar_roda_direita():
	match tipo_roda_direita:
		Tipo_roda_direita.GRANDE:
			pass
		Tipo_roda_direita.MEDIA:
			pass
		Tipo_roda_direita.PEQUENA:
			pass
