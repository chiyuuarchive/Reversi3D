extends Node3D

var width : int = 8
var height : int = 8
var diff : int = 8
var tilegrid ={}
func _ready():
	SetupBoard()
func SetupBoard():
	var preloadtile = preload("res://Assets/Models/tile.glb")
	for n in width:
		for m in height:
			var tile = preloadtile.instantiate()
			tile.position = Vector3(n*diff,0,m*diff)
			tilegrid[tile.position]= tile
			tile.scale = tile.scale*4
			$".".add_child(tile)
	for key in tilegrid:
		var value = tilegrid[key]
		print(key, value)
