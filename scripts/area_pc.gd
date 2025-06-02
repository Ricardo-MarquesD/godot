extends Node2D

var jogador_na_area = false
var acao_ja_foi_executada = false
var ponto = 0
var pontoRetornado = 0

func _on_pc_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":  
		jogador_na_area = true
		print("Jogador entrou na área")

func _on_pc_area_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		jogador_na_area = false
		acao_ja_foi_executada = true
		print("Jogador saiu da área")

func _process(_delta):
	if jogador_na_area and not acao_ja_foi_executada:
		if Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_select"):
			acao_ja_foi_executada = true
			$"../camera/laser".show()
			$"../camera/areaCamera/colisaoAreaCamera".disabled = false
			ponto = 1
			DADOS_JOGO.recebePontos(ponto)
			pontoRetornado = DADOS_JOGO.devolvePontos()
			print("Ponto retornado pelo singleton: ", pontoRetornado)
