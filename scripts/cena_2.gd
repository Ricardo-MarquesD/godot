extends Node2D
#Script cena2
var resposta = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DADOS_JOGO.recebeResposta(resposta)
	$Hud.show()
	$HudAvisos.show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
