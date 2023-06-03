extends ColorRect

var alpha = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0']

signal code1(code)
signal code2(code)

func _ready():
	randomize()

	

func goo():
	var keys = []
	for i in range(100):
		keys.append(randi())
		
	var code = "une banana magica"
	for key in keys:
		code = cesar(code, key)
	emit_signal("code1", code)
	keys.invert()
	for key in keys:
		code = decesar(code, key)
	emit_signal("code2", code)
	

	
	
func cesar(word: String, key: int) -> String:
	var result = ""
	for c in word:
		result += decal(c, key)
#		result += str(word.count(c))
	return result
	
func decesar(word: String, key: int) -> String:
	return cesar(word, -key)

func decal(letter: String, key: int) -> String:
	var letter_index = alpha.find(letter)
	var final_index = (letter_index + key) % alpha.size()
	var final_letter = alpha[final_index]
	return final_letter
