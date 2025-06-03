extends CharacterBody2D
var tem_antivirus: bool = false
const SPEED: int = 130

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


func _on_body_entered(body: Node):
	if body.name == "areaInimigo1" and tem_antivirus:
		body.get_parent().queue_free()
