class_name EndlessHealingPotionRelic
extends Relic


func activate_relic(owner: RelicUI) -> void:
	var player := owner.get_tree().get_first_node_in_group("player") as Player
	player.stats.heal(6)
	relic_activated.emit(self)