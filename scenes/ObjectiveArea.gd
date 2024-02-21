extends Area2D

export(String, FILE) var NEXT_LEVEL: String = ""

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
		if NEXT_LEVEL!="":
			get_tree().change_scene(NEXT_LEVEL)
