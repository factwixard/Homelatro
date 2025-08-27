SMODS.Sticker {
	key = 'br_st',
	atlas = 'hmltmisc',
	pos = { x = 1, y = 1 },
	config = { extra = { xmult = 1.25 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { self.config.extra.xmult } }
	end,
	badge_colour = HEX("0086EB"),
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.deck then
			return {
				xmult = self.config.extra.xmult
			}
		end
	end
}
SMODS.Sticker {
	key = 'ti_st',
	atlas = 'hmltmisc',
	pos = { x = 4, y = 1 },
	badge_colour = HEX("B70D0E"),
	config = { extra = { Xmult = 1.5, scoring = 5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { self.config.extra.Xmult }
		}
	end,
	calculate = function(self, card, context)
		if context.final_scoring_step and context.cardarea ~= G.deck and #context.scoring_hand >= self.config.extra.scoring then
			return {
				xmult = self.config.extra.Xmult
			}
		end
	end
}
SMODS.Sticker {
	key = 'li_st',
	atlas = 'hmltmisc',
	pos = { x = 4, y = 0 },
	badge_colour = HEX("F98100"),
	calculate = function(self, card, context)
		if context.open_booster then
			draw_card(G.deck, G.hand, nil, nil, nil, card)
		end
	end
}
SMODS.Sticker {
	key = 'sp_st',
	atlas = 'hmltmisc',
	pos = { x = 0, y = 2 },
	badge_colour = HEX("000000"),
	calculate = function(self, card, context)
		if context.final_scoring_step and context.cardarea == G.play then
			return {
				level_up = true
			}
		end
	end
}
SMODS.Sticker {
	key = 'life_st',
	atlas = 'hmltmisc',
	pos = { x = 6, y = 0 },
	badge_colour = HEX("CCC3B4")
}

SMODS.Sticker {
	key = 'ho_st',
	atlas = 'hmltmisc',
	pos = { x = 5, y = 0 },
	badge_colour = HEX("FFE094"),
	calculate = function(self, card, context)
		if context.setting_blind and context.cardarea == G.deck then
			draw_card(G.deck, G.hand, nil, nil, nil, card)
		end
	end
}
SMODS.Sticker {
	key = 'vo_st',
	atlas = 'hmltmisc',
	pos = { x = 0, y = 1 },
	badge_colour = HEX("033476"),
	config = { extra = { xchips = 1.5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { self.config.extra.xchips } }
	end,
	calculate = function(self, card, context)
		if context.cardarea == 'unscored' and context.main_scoring then
			return {
				xchips = self.config.extra.xchips,
				extra = { xchips = self.config.extra.xchips}
			}
		end
	end
}
SMODS.Sticker {
	key = 'he_st',
	atlas = 'hmltmisc',
	pos = { x = 3, y = 1 },
	badge_colour = HEX("6E0E2E"),
	calculate = function(self, card, context)
		if context.main_scoring and card == context.scoring_hand[1] then
			G.playing_card = (G.playing_card and G.playing_card + 1) or 1
			local copy_card = copy_card(context.scoring_hand[1], nil, nil, G.playing_card)
				copy_card:add_to_deck()
				G.deck.config.card_limit = G.deck.config.card_limit + 1
				table.insert(G.playing_cards, copy_card)
				G.hand:emplace(copy_card)
				copy_card.states.visible = nil
				G.E_MANAGER:add_event(Event({
					func = function()
						copy_card:start_materialize()
						return true
					end
				}))
			return {
				message = localize('hmlt_summon'),
				func = function()
					G.E_MANAGER:add_event(Event({
						func = function()
							SMODS.calculate_context({ playing_card_added = true, cards = { copy_card } })
							return true
						end
					}))
				end
			}
		end
	end
}
SMODS.Sticker {
	key = 'bl_st',
	atlas = 'hmltmisc',
	pos = { x = 5, y = 1 },
	badge_colour = HEX("3D1909"),
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			return {
				balance = true
			}
		end
	end
}
SMODS.Sticker {
	key = 'mi_st',
	atlas = 'hmltmisc',
	pos = { x = 6, y = 1 },
	badge_colour = HEX("50B250"),
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.main_scoring and not context.hmlt_retrigger then
			for k, v in pairs(context.scoring_hand) do
				if v ~= card and not v.ability.hmlt_mi_st then
					context.hmlt_retrigger = true
						SMODS.score_card(v, context)
					context.hmlt_retrigger = nil
				end
			end
		end
	end
}
SMODS.Sticker {
	key = 'do_st',
	atlas = 'hmltmisc',
	pos = { x = 3, y = 0 },
	badge_colour = HEX("20401F"),
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 3, 'hmlt_destroy_chance')
		return { vars = { new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.destroy_card and context.cardarea == 'unscored' and context.destroy_card == card and SMODS.pseudorandom_probability(card, 'hmlt_do_st', 1, 3, 'hmlt_destroy_chance') then
			if not context.destroy_card.ability.hmlt_life_st then
				return {
					remove = true,
				}
			end
		elseif context.destroy_card and context.cardarea == 'unscored' and context.destroy_card == card then
			return {
				message = localize('hmlt_safe')
			}
		end
	end
}
SMODS.Sticker {
	key = 'ra_st',
	atlas = 'hmltmisc',
	pos = { x = 2, y = 1 },
	badge_colour = HEX("391E71"),
	config = { extra = { Xchips = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { self.config.extra.Xchips } }
	end,
	calculate = function(self, card, context)
		if context.final_scoring_step and context.cardarea == G.hand then
			return {
				xchips = self.config.extra.Xchips
			}
		end
	end
}
