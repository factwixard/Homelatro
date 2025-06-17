SMODS.PokerHand {
	key = 'bl_hand',
	mult = 20,
	chips = 0,
	l_mult = 20,
	l_chips = 0,
	example = {
		{ 'S_A', true, enhancement = 'm_hmlt_blank' },
		{ 'S_A', true, enhancement = 'm_hmlt_blank' },
		{ 'S_A', true, enhancement = 'm_hmlt_blank' },
		{ 'S_A', true, enhancement = 'm_hmlt_blank' },
		{ 'S_A', true, enhancement = 'm_hmlt_blank' },
	},
	visible = false,
	above_hand = 'Flush Five',
	evaluate = function(parts, hand)
		local blanks = {}
		for i, card in ipairs(hand) do
			if
				card.config.center_key == "m_hmlt_blank"
			then
				blanks[#blanks + 1] = card
			end
		end
		return #blanks >= 5 and { blanks } or {}
	end,
}
