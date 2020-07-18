extends Node2D



var ennemyScene = load("res://Ennemy.tscn")


func _ready():
    Global.level = self
    #if get_children().size() == 0:
        #pass
        #var e = ennemyScene.instance()
        #add_child(e)


func _input(event):
    if event.is_action_pressed("save_and_quit"):
        Global.save_game_and_quit()
