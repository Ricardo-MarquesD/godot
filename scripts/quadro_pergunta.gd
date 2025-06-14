extends Node2D
#Script quadro_pergunta
var ponto = 0
var pontoRetornado = 0
var idusuario
var idsessao
var apelido
var tipocatado = 0

# Called when the node enters the scene tree for the first time.





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_quadro_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$"../Tela".show()
		#Pontua a ação com 1 ponto
		tipocatado = 1
		ponto = 1
		idusuario = DADOS_JOGO.devolve_idusuario()
		idsessao = DADOS_JOGO.devolve_idsessao()
		apelido = DADOS_JOGO.devolve_apelido()
		print("Dados retornados pelo singleton: ",apelido," ", idusuario," ", idsessao)
		DADOS_JOGO.recebePontos(ponto)
		pontoRetornado = DADOS_JOGO.devolvePontos()
		print("Ponto retornado pelo singleton: ", pontoRetornado)
		$"../Hud/pontuacao".text = str(pontoRetornado)
		$"../HudAvisos/mensagem".text = str("Leia a pergunta com atençao!")
		#Requisição http
		var sequencia = str(idusuario)+";"+str(ponto)+";"+str(idsessao)+";"+str(tipocatado)+";"+str(apelido)
		var query = "sequencia="+sequencia
		$"HTTPRequest_quadroPergunta".request("http://127.0.0.1/serdigiPhp/serdigi_pontuacao.php?" + query)
		print("Enviei a requisição")
		


func _on_area_quadro_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		$"../Tela".hide()
		$"../HudAvisos/mensagem".text = str(" ")
