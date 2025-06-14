extends Node2D
#Script quadro_pergunta
var ponto = 0
var pontoRetornado = 0
var idusuario = ""
var idsessao = ""
var apelido = ""
var tipocatado


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
		#Pontua a ação com 1 ponto
		tipocatado = 4
		ponto = 1
		idusuario = DADOS_JOGO.devolve_idusuario()
		idsessao = DADOS_JOGO.devolve_idsessao()
		apelido = DADOS_JOGO.devolve_apelido()
		print("Dados retornados pelo singleton: ",apelido," ", idusuario," ", idsessao)
		DADOS_JOGO.recebePontos(ponto)
		pontoRetornado = DADOS_JOGO.devolvePontos()
		print("Ponto retornado pelo singleton: ", pontoRetornado)
		$"../Hud/pontuacao".text = str(pontoRetornado)
		#Requisição http
		var sequencia = str(idusuario)+";"+str(ponto)+";"+str(idsessao)+";"+str(tipocatado)+";"+str(apelido)
		var query = "sequencia="+sequencia
		$HTTPRequest_livroResposta.request("http://127.0.0.1/serdigiPhp/serdigi_pontuacao.php?" + query)
		print("Enviei a requisição")


func _on_area_livro_resposta_area_exited(_area: Area2D) -> void:
	$"../telaLivro".hide()
