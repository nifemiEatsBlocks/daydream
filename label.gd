extends Label

var health: int = 12

func _ready() -> void:
	update_label()

# Damage function
func take_damage(amount: int) -> void:
	health -= amount
	update_label()
	print("💔 UI health:", health)

	if health <= 0:
		text = "☠ Dead!"

# Update the label text
func update_label() -> void:
	var hearts = ""
	for i in range(health):
		hearts += "❤️"
	text = hearts

# Optional: press space to test damage
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):  # Space key
		take_damage(1)


func _on_area_2d_body_entered(body: Node2D) -> void:
	take_damage(1)
