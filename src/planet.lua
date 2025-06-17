SMODS.Consumable {
	key = 'alternia',
	set = 'Planet',
	atlas = 'hmltplanet',
	config = { hand_type = 'hmlt_bl_hand', softlock = true },
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				G.GAME.hands['hmlt_bl_hand'].level,
			colours = {
				(G.GAME.hands[card.ability.hand_type].level == 1 and G.C.UI.TEXT_DARK or G.C.HAND_LEVELS[math.min(7, G.GAME.hands[card.ability.hand_type].level)])
				},
			},
		}
	end,
		set_card_type_badge = function(self, card, badges)
		badges[1] = create_badge(localize("k_planet_q"), get_type_colour(self or card.config, card), nil, 1.2)
	end
}
