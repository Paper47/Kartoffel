extends Area2D

@onready var victory_screen: CanvasLayer = $victoryscreen

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		victory_screen.visible = true
		get_tree().paused = true
