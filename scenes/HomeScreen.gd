extends Control


func _ready():
	pass


func _on_ColorRect_code1(code):
	$Code1.text = code


func _on_ColorRect_code2(code):
	$Code2.text = code


func _on_Timer_timeout():
	$ColorRect.goo()
