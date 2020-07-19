extends Node2D


func _ready():
    print("ennemy :",self)
    print("ennemy children :")
    for child in get_children():
        print("    child :", child)
    #print("sprite from ennemy : ",$Sprite)
    #print("label from ennemy : ",$Sprite/Label)


