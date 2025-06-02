extends Node2D

func _on_area_antivirus_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		if "tem_antivirus" in body:
			body.tem_antivirus = true
			DADOS_JOGO.antivirus = true
			$"../Hud/Caixa".show()
			print("Antivírus coletado pelo player.")
			queue_free()
