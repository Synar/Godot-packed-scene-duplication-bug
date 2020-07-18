extends Node

var menuScene = ("res://Menu.tscn")

var level

var packed_scene = PackedScene.new()


func save_game_and_quit():
    save_game()
    print("game saved")
    get_tree().change_scene(menuScene)


func save_game():
    _set_owner(level, level)
    packed_scene.pack(level)
    ResourceSaver.save("res://saved_scene.tscn", packed_scene)


func _set_owner(node, root):
    if node!= root and node.owner!= root:
        node.owner = root
    for child in node.get_children():
        _set_owner(child, root)


func load_game():
    print("load game")
    get_tree().change_scene("res://saved_scene.tscn")
