extends Node2D
# time (milliseconds), action, params
var schedule = [
	[2100, "dialogue_visible", true],
	[2100, "dialogue", "Hehehehehehe..."],
	[4200, "dialogue", "It is I, EVIL GOOG..."],
	[5400, "dialogue", "and I will END you!!!!!!!!!!!!11!!!!!"],
	[6300, "dialogue_visible", false],
	[6300, "spawn_moving_danger", ["Evil Goog Enemy", 0, 500, 1000, 0, 1]],
	[6800, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 500, 700, 1]],
	[7300, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 525, 700, 1]],
	[7450, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 550, 700, 1]],
	[7600, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 575, 700, 1]],
	[7750, "spawn_moving_danger", ["Evil Goog Enemy", 525, 0, 600, 700, 1]],
	[8050, "spawn_moving_danger", ["Evil Goog Enemy", 0, 350, 1200, 350, 0.5]],
	[8050, "spawn_moving_danger", ["Evil Goog Enemy", 1200, 350, 0, 350, 0.5]],
	[8420, "spawn_moving_danger", ["Evil Goog Enemy", 0, 350, 1200, 350, 0.5]],
	[8420, "spawn_moving_danger", ["Evil Goog Enemy", 1200, 350, 0, 350, 0.5]]
]


func sleep(time: float) -> void:
	await get_tree().create_timer(time).timeout
	return

func spawn_danger_area(x1: float, y1: float, x2: float, y2: float, time: float) -> void:
	print(Vector2(x1, y1))
	await sleep(time)
	print(Vector2(x2, y2))

var started_at = Time.get_ticks_msec()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var now = Time.get_ticks_msec() - started_at
	for thingtodo in schedule:
		if now >= thingtodo[0]:
			schedule.erase(thingtodo)
			match thingtodo[1]:
				"dialogue_visible":
					$"Player/Camera2D/speech".visible = thingtodo[2]
					$"Player/Camera2D/speech/RichTextLabel".visible = thingtodo[2]
				"dialogue":
					$"Player/Camera2D/speech/RichTextLabel".text = thingtodo[2]
				"spawn_moving_danger":
					var enemy = get_node(thingtodo[2][0]).duplicate()
					add_child(enemy)
					enemy.position = Vector2(thingtodo[2][1], thingtodo[2][2])
					var tween = get_tree().create_tween()
					tween.tween_property(enemy, "position", Vector2(thingtodo[2][3], thingtodo[2][4]), thingtodo[2][5])
					
				_:
					print("Invalid argument")
