SMODS.Consumable {
	key = 'scratch',
	set = 'Spectral',
	atlas = 'hmltspectral',
	config = { max_highlighted = 2, mod_conv = 'm_hmlt_blank' },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
		return { vars = { card.ability.max_highlighted } }
	end,
	can_use = function(self, card)
		for k, v in pairs(G.hand.highlighted) do
			if SMODS.has_enhancement(v, 'm_hmlt_blank') then
			return false
			end
		end
		return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
	end
}
