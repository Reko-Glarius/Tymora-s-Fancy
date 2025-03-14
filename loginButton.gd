extends Button

func _ready():
	connect("pressed", Callable(self, "_on_Button_pressed"))

func _on_Button_pressed():
	var username = get_node("../loginName").text
	var password = get_node("../loginPassword").text
	if authenticate_user(username, password):
		print("Login exitoso")
		# Aquí cargarías la siguiente escena
	else:
		print("Login fallido")

func authenticate_user(username, password):
	# Simulación de autenticación
	return username == "user" and password == "pass"
