extends Node2D

class_name carro_base

#func _init(r: int, g: int, b: int, re: Tipo_roda, rd: Tipo_roda) -> void:
	#self.carro_cor(r, g ,b)
	#self.trocar_roda_direita(rd)
	#self.trocar_roda_esquerda(re)
	
@onready var carro_sprite: Sprite2D = $CarroSprite

enum Tipo_roda{
	GRANDE, 
	MEDIA,
	PEQUENA
}

@export var R: int;
@export var G: int;
@export var B: int;
#no inspector podemos mudar o tipo de roda gracas a isso baby


#aqui basicamente muda a cor da textura de maneria bem simples usando RGB
func carro_cor(r: int, g: int, b: int):
	carro_sprite.modulate = Color(r/255.0, g/255.0, b/255.0)

func trocar_roda_esquerda(re: Tipo_roda):
	match re:
		Tipo_roda.GRANDE:
			pass
		Tipo_roda.MEDIA:
			pass
		Tipo_roda.PEQUENA:
			pass

func trocar_roda_direita(rd: Tipo_roda):
	match rd:
		Tipo_roda.GRANDE:
			pass
		Tipo_roda.MEDIA:
			pass
		Tipo_roda.PEQUENA:
			pass
