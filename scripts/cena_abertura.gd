extends Node2D

#Script cena de abertura

var conjunto = []
var idsessao = ""
var idusuario = ""
var apelido = ""

func _ready() -> void:
	var sequencia = ""
	var query = "sequencia="+sequencia
	$HTTPRequest_abertura.request("http://127.0.0.1/serdigiPhp/serdigi_abertura.php?" + query)
	print("Enviei a requisição")


func _on_http_request_abertura_request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray) -> void:
	if result == HTTPRequest.RESULT_SUCCESS:
		print("O request teve sucesso")


		if response_code == 200:
			var servidor = body.get_string_from_utf8()
			#print("VOLTOU DO SERVIDOR: ", servidor)
			
			conjunto = servidor.split(";")
			
			if conjunto.size() >= 3:

				idsessao = conjunto[0]
				idusuario = conjunto[1]
				apelido = conjunto[2]
				DADOS_JOGO.recebe_idusuario_idsessao_apelido(idusuario,idsessao,apelido)
				print("Sessao: ",idsessao)
				print("Id Usuario: ", idusuario)
				print("Apelido: ", apelido)
			else:
				print("Resposta inesperada: ", servidor)
		else:
			print("Http error: ", response_code)
	else:
		print("Erro na requisição: ", result)


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://cenas/cena_2.tscn")
	
