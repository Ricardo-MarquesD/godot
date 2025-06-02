extends Node2D
#Script quadro_pergunta
var ponto = 0
var pontoRetornado = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_quadro_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$"../Tela".show()
		#Pontua a ação com 1 ponto
		ponto = 1
		DADOS_JOGO.recebePontos(ponto)
		pontoRetornado = DADOS_JOGO.devolvePontos()
		print("Ponto retornado pelo singleton: ", pontoRetornado)
		$"../Hud/pontuacao".text = str(pontoRetornado)
		$"../HudAvisos/mensagem".text = str("Leia a pergunta com atençao!")


func _on_area_quadro_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		$"../Tela".hide()
		$"../HudAvisos/mensagem".text = str(" ")
