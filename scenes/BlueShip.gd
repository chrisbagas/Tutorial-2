extends RigidBody2D

var speed = 400 # How fast the player will move (pixels/sec).
var thrust = Vector2(0, -190)
var torque = 8000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	gravity_scale = 0
func _integrate_forces(state):
	if Input.is_action_pressed("move_up"):
		set_applied_force(thrust.rotated(rotation))
	else:
		set_applied_force(Vector2())
	var rotation_dir = 0
	if Input.is_action_pressed("move_right"):
		rotation_dir += 1
	if Input.is_action_pressed("move_left"):
		rotation_dir -= 1
	set_applied_torque(rotation_dir * torque)
