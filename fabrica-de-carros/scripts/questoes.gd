extends RefCounted
class_name QUESTOES


# Fórmula usada nas questões:
# (cor operador1 roda_frente) operador2 roda_tras


static var questoes := {
	1: {
		"cor": [1, 3, 6],
		"operador1": "+",
		"roda_tras": [1, 5, 8],
		"operador2": "-",
		"roda_frente": [2, 4, 7],
		"resultado": 12
		# Conta: (6 + 7) - 1 = 12
	},

	2: {
		"cor": [-2, 4, 7],
		"operador1": "+",
		"roda_tras": [1, 5, 8],
		"operador2": "-",
		"roda_frente": [3, 6, 9],
		"resultado": 3
		# Conta: (-2 + 6) - 1 = 3
	},

	3: {
		"cor": [5, 8, 11],
		"operador1": "-",
		"roda_tras": [2, 6, 10],
		"operador2": "+",
		"roda_frente": [-3, 7, 14],
		"resultado": 24
		# Conta: (11 - -3) + 10 = 24
	},

	4: {
		"cor": [-6, 9, 13],
		"operador1": "-",
		"roda_tras": [-3, 7, 12],
		"operador2": "-",
		"roda_frente": [4, -8, 15],
		"resultado": 24
		# Conta: (13 - -8) - -3 = 24
	},

	6: {
		"cor": [2, 3, 4],
		"operador1": "*",
		"roda_tras": [4, 7, 9],
		"operador2": "+",
		"roda_frente": [3, 5, 6],
		"resultado": 27
		# Conta: (4 * 5) + 7 = 27
	},

	7: {
		"cor": [9, 12, 15],
		"operador1": "-",
		"roda_tras": [-3, 3, 5],
		"operador2": "*",
		"roda_frente": [2, 4, 6],
		"resultado": 55
		# Conta: (15 - 4) * 5 = 55
	},

	8: {
		"cor": [18, 24, 30],
		"operador1": "/",
		"roda_tras": [4, 7, 9],
		"operador2": "*",
		"roda_frente": [3, 5, 6],
		"resultado": 45
		# Conta: (30 / 6) * 9 = 45
	},

	9: {
		"cor": [-4, 6, 8],
		"operador1": "*",
		"roda_tras": [-6, 10, 12],
		"operador2": "-",
		"roda_frente": [-3, 5, 7],
		"resultado": 62
		# Conta: (8 * 7) - -6 = 62
		}}


# QUESTÃO ESPECIAL - FASE 5

static var cores_fase_5 := ["Cor 1", "Cor 2"]
static var rodas_tras_fase_5 := ["Roda Traseira 1", "Roda Traseira 2"]
static var rodas_frente_fase_5 := ["Roda Dianteira 1", "Roda Dianteira 2"]

static var total_carros_fase_5 := 8
static var carros_feitos_fase_5 := []


static func iniciar_fase_5() -> Dictionary:
	carros_feitos_fase_5 = []

	return {
		"fase": 5,
		"pergunta": "Seguindo o princípio da casa dos pombos, quantos carros diferentes você consegue montar?",
		"mensagem": "Agora monte todos os carros possíveis.",
		"cores": cores_fase_5,
		"rodas_tras": rodas_tras_fase_5,
		"rodas_frente": rodas_frente_fase_5,
		"total_carros": total_carros_fase_5
	}


static func criar_carro_fase_5(indice_cor: int, indice_roda_tras: int, indice_roda_frente: int) -> Dictionary:
	if not indices_validos_fase_5(indice_cor, indice_roda_tras, indice_roda_frente):
		return {
			"aceito": false,
			"fase_concluida": false,
			"mensagem": "Escolha inválida. Tente montar outro carro."
		}

	var chave_carro = str(indice_cor) + "_" + str(indice_roda_tras) + "_" + str(indice_roda_frente)

	for carro in carros_feitos_fase_5:
		if carro["chave"] == chave_carro:
			return {
				"aceito": false,
				"fase_concluida": false,
				"mensagem": "Esse carro já foi construído. Faça outro carro diferente."
			}

	var novo_carro = {
		"ordem": carros_feitos_fase_5.size() + 1,
		"cor": cores_fase_5[indice_cor],
		"roda_tras": rodas_tras_fase_5[indice_roda_tras],
		"roda_frente": rodas_frente_fase_5[indice_roda_frente],
		"chave": chave_carro
	}

	carros_feitos_fase_5.append(novo_carro)

	if carros_feitos_fase_5.size() == total_carros_fase_5:
		return {
			"aceito": true,
			"fase_concluida": true,
			"mensagem": "Parabéns! Você construiu 8 carros diferentes e concluiu a fase 5.",
			"carro": novo_carro,
			"carros_feitos": carros_feitos_fase_5
		}

	return {
		"aceito": true,
		"fase_concluida": false,
		"mensagem": "Carro construído com sucesso. Continue montando carros diferentes.",
		"carro": novo_carro,
		"carros_feitos": carros_feitos_fase_5
	}


static func get_carros_feitos_fase_5() -> Array:
	return carros_feitos_fase_5


static func indices_validos_fase_5(indice_cor: int, indice_roda_tras: int, indice_roda_frente: int) -> bool:
	if indice_cor < 0 or indice_cor >= cores_fase_5.size():
		return false

	if indice_roda_tras < 0 or indice_roda_tras >= rodas_tras_fase_5.size():
		return false

	if indice_roda_frente < 0 or indice_roda_frente >= rodas_frente_fase_5.size():
		return false

	return true
