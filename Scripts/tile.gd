class_name Tile

enum tilestate {NEUTRAL, BLACK, WHITE}

var state:tilestate
var gridPos:Vector2
var mesh:Node3D

# constructor
func _init(gridPos:Vector2):
	self.gridPos = gridPos
	print(gridPos, state)
	
func SetState(state:tilestate):
	self.state = state
 
