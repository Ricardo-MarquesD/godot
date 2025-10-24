extends Node2D
#Script Livro resposta 2
var ponto = 0
var pontoRetornado = 0
var idusuario = ""
var idsessao = ""
var apelido = ""
var tipocatado
var recebe_entrou_no_livro = 0
var conjunto  = ""
var lista
var flag_fase = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_livro_resposta_area_entered(_area: Area2D) -> void:
	if _area.name == "areaPlayer":
		$"../telaLivro".show()
		DADOS_JOGO.recebePontos(ponto)
		pontoRetornado = DADOS_JOGO.devolvePontos()
		print("Ponto retornado pelo singleton no livroResposta: ", pontoRetornado)
		$"../Hud/pontuacao".text = str(pontoRetornado)
		#Pontua a ação com 1 ponto
		tipocatado = 4
		ponto = 1
		flag_fase = 12 #Fase 1 Livro 2
		DADOS_JOGO.recebeflagfase = flag_fase
		idusuario = DADOS_JOGO.devolve_idusuario()
		idsessao = DADOS_JOGO.devolve_idsessao()
		apelido = DADOS_JOGO.devolve_apelido()
		print("Dados retornados pelo singleton: ",apelido," ", idusuario," ", idsessao)
		DADOS_JOGO.recebePontos(ponto)
		pontoRetornado = DADOS_JOGO.devolvePontos()
		print("Ponto retornado pelo singleton: ", pontoRetornado)
		$"../Hud/pontuacao".text = str(pontoRetornado)
		lista = DADOS_JOGO.devolve_lista_pergunta_atualizada()
		conjunto =  DADOS_JOGO.devolve_conjunto()
		print(conjunto[2])
		$"../telaLivro/LabelTelaLivro".text = str(conjunto[2])
		#Requisição http
		var sequencia = str(idusuario)+";"+str(ponto)+";"+str(idsessao)+";"+str(tipocatado)+";"+str(apelido)
		var query = "sequencia="+sequencia
		$HTTPRequest_livroResposta2.request("http://127.0.0.1/serdigiPhp/serdigi_pontuacao.php?" + query)
		print("Enviei a requisição")
		#Entrada no livro
		DADOS_JOGO.recebe_entrou_no_livro(1)



func _on_area_livro_resposta_area_exited(_area: Area2D) -> void:
	$"../telaLivro".hide()
