extends CharacterBody2D
#Script Player
var ponto = 0
var pontoRetornado = 0
var idusuario
var idsessao
var apelido
var tipocatado = 0
var tem_antivirus: bool = false
const SPEED: int = 130
var flag_fase = 0
var status_resposta = 0

var conjunto  = 0

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * SPEED

func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()

	if velocity.length() > 0:
		$animacaoPlayer.play("andando")
		if velocity.x != 0:
			$animacaoPlayer.flip_h = velocity.x < 0
	else:
		$animacaoPlayer.play("idle")
		
	var recebe_entrou_no_livro = DADOS_JOGO.devolve_entrou_no_livro()
	
	#momento em que o usuario escolhe o livro
	if ((Input.is_action_just_pressed("escolher_livro")) and (recebe_entrou_no_livro == 1)): 
		tipocatado = 5
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
		$HTTPRequest_player_livro.request("http://127.0.0.1/serdigiPhp/serdigi_pontuacao.php?" + query)
		print("Enviei a requisição")
		
		#Conferindo o acerto da resposta
		conjunto = DADOS_JOGO.devolve_conjunto()
		flag_fase = DADOS_JOGO.devolve_flag_fase() #identifica a fase  e a  resposta
		status_resposta = DADOS_JOGO.devolve_status_resposta()
		
		print(flag_fase, status_resposta)
		if (flag_fase == "11") and (status_resposta == "1"):
			print("Acertou")
		elif  (flag_fase == "12") and (status_resposta == "1"):
			print("Acertou")
		elif (flag_fase == "13") and (status_resposta == "1"):
			print("Acertou")
		elif (flag_fase == "14") and (status_resposta == "1"):
			print("Acertou")
		else:
			print("Errou")
		pass
		


func _on_body_entered(body: Node):
	if body.name == "areaInimigo1" and tem_antivirus:
		body.get_parent().queue_free()
		tem_antivirus = false
		print("Inimigo derrotado com antivírus!")
