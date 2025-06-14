extends Node2D
#Script fase 2 cena 1
var resposta = 0
var idusuario
var idsessao
var apelido

var listanum = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59]
var pergunta_retirada
var fase
var listanum_atualizada


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sequencia = ""
	var query = "sequencia="+sequencia
	$HTTPRequest_cena2.request("http://127.0.0.1/serdigiPhp/serdigi_pontuacao.php?" + query)
	print("Enviei a requisição")
	fase = 2
	# Algoritmo para embaralhar o vetor de perguntas
	listanum.shuffle()
	print (listanum)
	pergunta_retirada = listanum.pop_back()
	print(pergunta_retirada)
	print(listanum)
	#Passagem da lista para o singleton
	DADOS_JOGO.recebe_lista_pergunta_atualizada(listanum)

	listanum_atualizada = DADOS_JOGO.devolve_lista_pergunta_atualizada()
	print("Lista de perguntas atualizada: ", listanum_atualizada)
	
	DADOS_JOGO.recebeResposta(resposta)
	idusuario = DADOS_JOGO.devolve_idusuario()
	idsessao = DADOS_JOGO.devolve_idsessao()
	apelido = DADOS_JOGO.devolve_apelido()
	print(idusuario, idsessao, apelido)
	$Hud.show()
	$HudAvisos.show()

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
