extends AudioStreamPlayer


func _ready() -> void:
	var audios = get_meta("Audios")
	print("goog")
	for i in range(0, 99999999):
		audios.shuffle()
		for j in range(0, len(audios)):
			self.stream = load(audios[j])
			self.play()
			await self.finished
