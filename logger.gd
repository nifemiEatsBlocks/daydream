extends Node

@onready var console_label: Label = $"../CanvasLayer/Panel/ConsoleLabel"

func log(message: String) -> void:
	console_label.text += message + "\n"
