extends Node2D
#Script fase 2 cena 1
var resposta = 0
var idusuario
var idsessao
var apelido

#var listanum = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59]
var listanum = [1,2,3,4,5,6,7,8,9,10]
var pergunta_retirada
var fase
var listanum_atualizada
var perguntaatual1
var perguntaatual2
var perguntaatual3
var conjunto
var textoPergunta1
var textoPergunta2
var textoPergunta3
var respostaPergunta1_1
var respostaPergunta1_2
var respostaPergunta1_3
var respostaPergunta1_4
var respostaPergunta2_1
var respostaPergunta2_2
var respostaPergunta2_3
var respostaPergunta2_4
var respostaPergunta3_1
var respostaPergunta3_2
var respostaPergunta3_3
var respostaPergunta3_4
var respostaPergunta4_1
var respostaPergunta4_2
var respostaPergunta4_3
var respostaPergunta4_4
var statusResposta1_1
var statusResposta1_2
var statusResposta1_3
var statusResposta1_4
var statusResposta2_1
var statusResposta2_2
var statusResposta2_3
var statusResposta2_4
var statusResposta3_1
var statusResposta3_2
var statusResposta3_3
var statusResposta3_4

# Primeira cena do jogo
func _ready() -> void:
	var sequencia = ""
	var query = "sequencia="+sequencia
	$HTTPRequest_cena2.request("http://127.0.0.1/serdigiPhp/serdigi_pontuacao.php?" + query)
	print("Enviei a requisição")
	fase = 2
	# Algoritmo para embaralhar o vetor de perguntas
	listanum.shuffle()
	print (listanum)
	perguntaatual1 = listanum.pop_front() #Pega e guarda o elemento da lista
	perguntaatual2 = listanum.pop_front()
	perguntaatual3 = listanum.pop_front()
	print("Perguntas atual: ", perguntaatual1,", ", perguntaatual2, ", ",perguntaatual3)
	print(listanum)
	#Passagem da lista para o singleton
	DADOS_JOGO.recebe_lista_pergunta_atualizada(listanum)

	listanum_atualizada = DADOS_JOGO.devolve_lista_pergunta_atualizada()
	print("Lista de perguntas atualizada: ", listanum_atualizada)
	
	#Envia os números das perguntas sorteadas para o banco de dados devolver
	var sequencia2 = str(perguntaatual1)+","+str(perguntaatual2)+","+str(perguntaatual3)
	var query2 = "sequencia2="+sequencia2
	$HTTPRequestBuscaPergunta_cena2.request("http://127.0.0.1/serdigiPhp/serdigi_buscapergunta.php?" + query2)
	
	
	DADOS_JOGO.recebeResposta(resposta)
	idusuario = DADOS_JOGO.devolve_idusuario()
	idsessao = DADOS_JOGO.devolve_idsessao()
	apelido = DADOS_JOGO.devolve_apelido()
	print(idusuario, idsessao, apelido)
	$Hud.show()
	$HudAvisos.show()
	$telaLivro.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_http_request_busca_pergunta_cena_2_request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray) -> void:
	if result == HTTPRequest.RESULT_SUCCESS:
		print("O request teve sucesso")


		if response_code == 200:
			var servidor = body.get_string_from_utf8()
			#print("VOLTOU DO SERVIDOR: ", servidor)
			
			conjunto = servidor.split(";")
			DADOS_JOGO.recebe_conjunto(conjunto)
			if conjunto.size() >= 15:

				textoPergunta1 = conjunto[0] #conjunto contém o array de perguntas/respostas sorteadas
				respostaPergunta1_1 = conjunto[1]
				respostaPergunta1_2 = conjunto[2]
				respostaPergunta1_3 = conjunto[3]
				respostaPergunta1_4 = conjunto[4]
				textoPergunta2 = conjunto[5]
				respostaPergunta2_1 = conjunto[6]
				respostaPergunta2_2 = conjunto[7]
				respostaPergunta2_3 = conjunto[8]
				respostaPergunta2_4 = conjunto[9]
				textoPergunta3 = conjunto[10]
				respostaPergunta3_1 = conjunto[11]
				respostaPergunta3_2 = conjunto[12]
				respostaPergunta3_3 = conjunto[13]
				respostaPergunta3_4 = conjunto[14]
				statusResposta1_1 = conjunto[15]
				statusResposta1_2 = conjunto[16]
				statusResposta1_3 = conjunto[17]
				statusResposta1_4 = conjunto[18]
				statusResposta2_1 = conjunto[19]
				statusResposta2_2 = conjunto[20]
				statusResposta2_3 = conjunto[21]
				statusResposta2_4 = conjunto[22]
				statusResposta3_1 = conjunto[23]
				statusResposta3_2 = conjunto[24]
				statusResposta3_3 = conjunto[25]
				statusResposta3_4 = conjunto[26]

				
				DADOS_JOGO.recebe_idusuario_idsessao_apelido(perguntaatual1,perguntaatual2,perguntaatual3)
				print("Pergunta1: ",textoPergunta1,",",respostaPergunta1_1,",",statusResposta1_1,",",respostaPergunta1_2,",",statusResposta1_2,",",respostaPergunta1_3,",",statusResposta1_3 ,",",respostaPergunta1_4,",",statusResposta1_4)
				print("Pergunta2: ", textoPergunta2,",",respostaPergunta2_1,",",statusResposta2_1,",",respostaPergunta2_2,",",statusResposta2_2,",",respostaPergunta2_3,",",statusResposta2_3,",",respostaPergunta2_4,",",statusResposta2_4)
				print("Pergunta3: ", textoPergunta3,",",respostaPergunta3_1,",",statusResposta3_1,",",respostaPergunta3_2,",",statusResposta3_2,",",respostaPergunta3_3,",",statusResposta3_3,",",respostaPergunta3_4,",",statusResposta3_4)
			else:
				print("Resposta inesperada: ", servidor)
		else:
			print("Http error: ", response_code)
	else:
		print("Erro na requisição: ", result)	
	pass # Replace with function body.
