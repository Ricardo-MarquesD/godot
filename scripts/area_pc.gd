extends Node2D

var jogador_na_area = false
var acao_ja_foi_executada = false
var ponto = 0
var pontoRetornado = 0
var idusuario
var idsessao
var apelido
var tipocatado = 0

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
		#Pontua a ação com 1 ponto
			tipocatado = 7
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
			$HTTPRequest_areaPC.request("http://127.0.0.1/serdigiPhp/serdigi_pontuacao.php?" + query)
			print("Enviei a requisição")
