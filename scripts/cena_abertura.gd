extends Node2D
#Script da cena de abertura

var conjunto = ""
var idsessao = ""
var idusuario = ""
var apelido = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sequencia = ""
	var query = "sequencia="+sequencia
	var headers = ["User-Agent:Firefox/1.0"]
	$HTTPRequest_abertura.request("http://127.0.0.1/serdigi_abertura.php");
	print("Enviei a requisição")
	pass	
	
func _on_HTTPRequest_abertura_request_completed(result, response_code, headers, body):
	if result == HTTPRequest.RESULT_SUCCESS:
		print("O request teve sucesso")
		if response_code==200:			
			var servidor = (body.get_string_from_utf8())
			print("VOLTOU DO SERVIDOR: ",servidor) # RETORNO DE SERVIDOR 
			#testa_retorno(servidor)				
			conjunto = servidor.split(";", true, 0)
			print(conjunto)
			idsessao = conjunto[0]
			idusuario = conjunto[1]
			apelido = conjunto[2]
			DADOS_JOGO.recebe_idusuario_idsessao_apelido(idusuario, idsessao, apelido)
		else:
			print("Http error")
		
				
