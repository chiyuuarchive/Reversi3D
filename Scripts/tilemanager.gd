extends Node3D

@export var width : int = 8
@export var height : int = 8
var tileSize : int = 8
var tilegrid ={}

func _ready():
	SetupBoard()

func SetupBoard():
	var preloadtile = preload("res://Assets/Models/tile.glb")
	for n in width:
		for m in height:
			var tile = preloadtile.instantiate()
			tile.position = Vector3(n*tileSize,0,m*tileSize)
			tilegrid[tile.position]= tile
			tile.scale = tile.scale*4
			
			var tileScript = preload("res://Scripts/tile.gd")
			#call constructor (commented code lines doesn't work)
			# tileScript._init(Vector2(n,m))
			# tileScript.SetState(tilestate.Neutral)
			
			$".".add_child(tile)
	for key in tilegrid:
		var value = tilegrid[key]
		print(key, value)
