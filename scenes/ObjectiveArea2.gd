extends Area2D


func _on_ObjectiveArea2_body_entered(body: RigidBody2D):
	if  body != null and body.name == "BlueShip":
		body.reset = true
		print("Anda Gagal! Ulangi Lagi")

