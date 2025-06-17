SMODS.Back {
	key = 'beta',
	atlas = 'hmltmisc',
	pos = { x = 0, y = 0 },
	config = { jokers = { 'j_hmlt_ectobiologist', 'j_hmlt_gardengnostic', 'j_hmlt_tentacletherapist', 'j_hmlt_turntechgodhead' } }
}
SMODS.Back {
	key = 'alpha',
	atlas = 'hmltmisc',
	pos = { x = 1, y = 0 },
	config = { jokers = { 'j_hmlt_gutsygumshoe', 'j_hmlt_golgothasterror', 'j_hmlt_tipsygnostalgic', 'j_hmlt_timaeustestified' } }
}
SMODS.Back {
	key = 'sgrub',
	atlas = 'hmltmisc',
	pos = { x = 2, y = 0 },
	config = { voucher = 'v_hmlt_sburbdisc' }
}
SMODS.Back {
	key = 'scratchd',
	atlas = 'hmltmisc',
	pos = { x = 2, y = 2 },
	apply = function(self, back)
		G.E_MANAGER:add_event(Event({
			blockable = false,
			func = (function()
				for _, pcard in ipairs(G.playing_cards) do
					pcard:set_ability('m_hmlt_blank')
				end
				return true
			end)
		}))
	end
}
