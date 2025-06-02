extends Node2D
#Script quadro_pergunta
var ponto = 0
var pontoRetornado = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_livro_resposta_area_entered(_area: Area2D) -> void:
	if _area.name == "areaPlayer":
		$"../telaLivro".show()
		ponto = 1
		DADOS_JOGO.recebePontos(ponto)
		pontoRetornado = DADOS_JOGO.devolvePontos()
		print("Ponto retornado pelo singleton no livroResposta: ", pontoRetornado)
		$"../Hud/pontuacao".text = str(pontoRetornado)


func _on_area_livro_resposta_area_exited(_area: Area2D) -> void:
	$"../telaLivro".hide()
