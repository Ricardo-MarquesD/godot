extends Node2D
var textoAviso = "Nada"

func _on_area_aviso_inicial_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		textoAviso = str("Procura o quadro negro para conhecer a pergunta da fase")
		$"../HudAvisos/mensagem".text = textoAviso
	pass # Replace with function body.
