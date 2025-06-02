extends CharacterBody2D

@export var velocidade: float = 100.0
@export var pontos_de_patrulha: Array[Vector2] = []
@export var distancia_minima_para_perseguir: float = 200.0

var jogador: Node2D = null
var perseguindo: bool = false
var indice_atual: int = 0
var morreu: bool = false

func _ready():
	$areaInimigo1.body_entered.connect(_quando_jogador_entrar)
	$areaInimigo1.body_exited.connect(_quando_jogador_sair)
	$areaInimigo1.body_entered.connect(_on_body_entered)

func _physics_process(delta):
	if morreu:
		velocity = Vector2.ZERO
		return

	if perseguindo and jogador:
		perseguir_jogador(delta)
	else:
		patrulhar(delta)

func patrulhar(_delta):
	if pontos_de_patrulha.is_empty():
		return

	var alvo = pontos_de_patrulha[indice_atual]
	var direcao = (alvo - global_position).normalized()
	velocity = direcao * velocidade
	move_and_slide()

	if global_position.distance_to(alvo) < 10:
		indice_atual = (indice_atual + 1) % pontos_de_patrulha.size()

func perseguir_jogador(_delta):
	var direcao = (jogador.global_position - global_position).normalized()
	velocity = direcao * velocidade
	move_and_slide()

func _quando_jogador_entrar(body):
	if body.name == "Player":
		jogador = body
		perseguindo = true

func _quando_jogador_sair(body):
	if body == jogador:
		jogador = null
		perseguindo = false

func _on_body_entered(body: Node) -> void:
	if body.name == "Player" and body.tem_antivirus and not morreu:
		morreu = true
		body.tem_antivirus = false
		$malware.play("morte")
		print("Malware derrotado")

func _on_malware_animation_finished() -> void:
	if $malware.animation == "morte":
		print("inimigo removido")
		$"../Hud/Caixa".hide()
		queue_free()
