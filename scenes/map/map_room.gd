class_name MapRoom
extends Area2D

const ICONS := {
	Room.Type.NOT_ASSIGNED: [null, Vector2.ONE],
	Room.Type.MONSTER: [preload("res://art/tile_0103.png"), Vector2.ONE],
	Room.Type.TREASURE: [preload("res://art/tile_0089.png"), Vector2.ONE],
	Room.Type.CAMPFIRE: [preload("res://art/player_heart.png"), Vector2(0.6, 0.6)],
	Room.Type.SHOP: [preload("res://art/gold.png"), Vector2(0.6, 0.6)],
	Room.Type.BOSS: [preload("res://art/tile_0105.png"), Vector2(1.25, 1.25)],
}

@onready var sprite_2d: Sprite2D = $Sprite2D

var room: Room : set = set_room


func set_room(new_data: Room) -> void:
	room = new_data
	position = room.position
	sprite_2d.texture = ICONS[room.type][0]
	sprite_2d.scale = ICONS[room.type][1]