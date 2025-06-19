SMODS.Rarity {
	key = 'player',
	default_weight = 0.7,
	badge_colour = HEX("53A3FF"),
	pools =  { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
}
SMODS.Rarity {
	key = 'aspect',
	default_weight = 0.05,
	badge_colour = HEX("D00009"),
	pools =  { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
}
SMODS.Rarity {
	key = 'godtier',
	default_weight = 0.25,
	badge_colour = HEX("FF6000"),
	pools =  { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
}
