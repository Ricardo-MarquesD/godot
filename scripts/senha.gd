extends Node2D

func _on_area_senha_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		DADOS_JOGO.senha = true
		$"../Hud/Senha".show()
		print("Senha coletado pelo player.")
		queue_free()
