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
	}
}