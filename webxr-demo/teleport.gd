extends XRController3D

@onready var ray: RayCast3D = $TeleportRay
@onready var marker: MeshInstance3D = $TeleportMarker
var xr_origin: XROrigin3D
var xr_camera: XRCamera3D

func _ready() -> void:
    xr_origin = get_parent() as XROrigin3D
    xr_camera = xr_origin.get_node("XRCamera3D") as XRCamera3D
    marker.visible = false

func _process(_delta: float) -> void:
    if ray.is_colliding():
        marker.global_position = ray.get_collision_point()
        marker.visible = true
    else:
        marker.visible = false

func teleport_now() -> void:
    if not ray.is_colliding():
        return
    
    # Pobieramy punkt, w który celujesz (np. podłoga)
    var target_point: Vector3 = ray.get_collision_point()

    # Pobieramy obecną pozycję środka pokoju i kamery
    var origin_pos := xr_origin.global_position
    var cam_pos := xr_camera.global_position

    # --- TUTAJ BYŁ BŁĄD, A TO JEST POPRAWKA ---
    # Obliczamy przesunięcie gracza względem środka pokoju TYLKO w poziomie (X, Z).
    # Ignorujemy wysokość (Y), bo nie chcemy odejmować wzrostu gracza od poziomu podłogi.
    var offset_x = cam_pos.x - origin_pos.x
    var offset_z = cam_pos.z - origin_pos.z

    # Nowa pozycja Origin to: Punkt docelowy MINUS przesunięcie gracza
    # Dzięki temu to KAMERA wyląduje nad celem, a nie środek pokoju.
    var new_origin_pos = Vector3(
        target_point.x - offset_x,
        target_point.y,             # Zachowujemy poziom podłogi celu
        target_point.z - offset_z
    )

    xr_origin.global_position = new_origin_pos


func _on_right_controller_button_released(button_name: String) -> void:
    # Debugowanie w konsoli
    print("Puszczono przycisk: ", button_name) 
    
    # Uruchom teleport, jeśli to główny spust (trigger)
    if button_name == "trigger_click": 
        teleport_now()
