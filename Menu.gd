extends Node


func _ready():
    print(" ")


func _input(event):
    if event.is_action_pressed("load_game"):
        Global.load_game()
