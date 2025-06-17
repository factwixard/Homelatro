SMODS.Consumable {
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.max_highlighted,
			}
		}
	end,
	key = 'questbed',
	set = 'Tarot',
	atlas = 'hmltqb',
	cost = 4,
	config = {
		max_highlighted = 1
	},
	use = function(self, card, code, copier)
		local aspect_st =
			pseudorandom_element({
				'hmlt_br_st',
				'hmlt_ti_st',
				'hmlt_li_st',
				'hmlt_sp_st',
				'hmlt_life_st',
				'hmlt_ho_st',
				'hmlt_vo_st',
				'hmlt_he_st',
				'hmlt_bl_st',
				'hmlt_mi_st',
				'hmlt_do_st',
				'hmlt_ra_st'
			},
			pseudoseed("awpr9uoghadkfjvn"))
		for _, v in ipairs (G.hand.highlighted) do
			SMODS.Stickers[aspect_st]:apply(v, true)
			play_sound('tarot1')
		end
	end,
	can_use = function(self, card)
		if next(SMODS.find_card("j_hmlt_hope")) then
			return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
		else
			return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
		end
	end
}
