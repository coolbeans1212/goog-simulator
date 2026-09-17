extends AudioStreamPlayer

var audios = ["res://music/Pickup at 10.15.mp3"]

func _ready() -> void:
	print("goog")
	for i in range(0, 99999999):
		audios.shuffle()
		for j in range(0, len(audios)):
			self.stream = load(audios[j])
			self.play()
			await self.finished
