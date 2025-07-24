SMODS.Joker {
	key = 'ectobiologist',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 0, y = 0 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { chips = 50, size = 3 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.chips, card.ability.extra.size, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_ectobiologist', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
						return true
					end
				}))
				G.GAME.pool_flags.hmlt_ectobiologist_extinct = true
					return {
						message = localize('hmlt_extinct')
					}
				else
			return {
				message = localize('hmlt_safe')
			}
		end
	end
		if context.joker_main and #context.full_hand <= card.ability.extra.size then
			return {
				chips = card.ability.extra.chips
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_ectobiologist_extinct
	end
}
SMODS.Joker {
	key = 'gardengnostic',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 1, y = 0 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { chips = 50, suits = 3 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.chips, card.ability.extra.suits, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_gardengnostic', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
						return true
					end
				}))
				G.GAME.pool_flags.hmlt_gardengnostic_extinct = true
					return {
						message = localize('hmlt_extinct')
					}
				else
			return {
				message = localize('hmlt_safe')
			}
		end
	end
	local suits = 0
		for k, v in pairs(G.play.cards) do
			if v:is_suit("Hearts") then
				suits = suits + 1
			end
			if v:is_suit("Diamonds") then
				suits = suits + 1
			end
			if v:is_suit("Clubs") then
				suits = suits + 1
			end
			if v:is_suit("Spades") then
				suits = suits + 1
			end
		end
		if context.joker_main and suits >=3 then
			return {
			chips = card.ability.extra.chips
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_gardengnostic_extinct
	end
}
SMODS.Joker {
	key = 'tentacletherapist',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 2, y = 0 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { chips = 50, suits = 2 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.chips, card.ability.extra.suits, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_tentacletherapist', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
						return true
					end
				}))
				G.GAME.pool_flags.hmlt_tentacletherapist_extinct = true
					return {
						message = localize('hmlt_extinct')
					}
				else
			return {
				message = localize('hmlt_safe')
			}
		end
	end
	local suits = 0
		for k, v in pairs(G.play.cards) do
			if v:is_suit("Hearts") then
				suits = suits + 1
			end
			if v:is_suit("Diamonds") then
				suits = suits + 1
			end
			if v:is_suit("Clubs") then
				suits = suits + 1
			end
			if v:is_suit("Spades") then
				suits = suits + 1
			end
		end
		if context.joker_main and suits <=2 then
			return {
				chips = card.ability.extra.chips
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_tentacletherapist_extinct
	end
}
SMODS.Joker {
	key = 'turntechgodhead',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 3, y = 0 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { chips = 50, cards = 4 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.chips, card.ability.extra.cards, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_turntechgodhead', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
						return true
					end
				}))
				G.GAME.pool_flags.hmlt_turntechgodhead_extinct = true
					return {
						message = localize('hmlt_extinct')
					}
				else
					return {
						message = localize('hmlt_safe')
					}
				end
			end
		if context.joker_main and #context.scoring_hand >= card.ability.extra.cards then
			return {
				chips = card.ability.extra.chips
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_turntechgodhead_extinct
	end
}
SMODS.Joker {
	key = 'gutsygumshoe',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 0, y = 1 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { chips = 30, unscored = 0 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.chips, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_gutsygumshoe', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
						return true
					end
				}))
				G.GAME.pool_flags.hmlt_gutsygumshoe_extinct = true
					return {
						message = localize('hmlt_extinct')
					}
				else
			return {
				message = localize('hmlt_safe')
			}
		end
	end
	if context.joker_main and #context.full_hand - #context.scoring_hand >= 1 then
		card.ability.extra.unscored = #context.full_hand - #context.scoring_hand
			return {
				chips = card.ability.extra.chips * card.ability.extra.unscored
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_gutsygumshoe_extinct
	end
}
SMODS.Joker {
	key = 'golgothasterror',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 1, y = 1 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { chips = 150, size = 1 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.chips, card.ability.extra.size, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_golgothasterror', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
						return true
					end
				}))
				G.GAME.pool_flags.hmlt_golgothasterror_extinct = true
					return {
						message = localize('hmlt_extinct')
					}
				else
			return {
				message = localize('hmlt_safe')
			}
		end
	end
		if context.joker_main and #context.full_hand == card.ability.extra.size then
			return {
				chips = card.ability.extra.chips
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_golgothasterror_extinct
	end
}
SMODS.Joker {
	key = 'tipsygnostalgic',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 2, y = 1 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { chips_gain = 20, chips = 0 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.chips_gain, card.ability.extra.chips, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_tipsygnostalgic', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
						return true
					end
				}))
				G.GAME.pool_flags.hmlt_tipsygnostalgic_extinct = true
					return {
						message = localize('hmlt_extinct')
					}
				else
					return {
						message = localize('hmlt_safe')
					}
				end
		end
		if context.post_trigger and (context.other_ret.jokers.chips or context.other_ret.jokers.h_chips or context.other_ret.jokers.chip_mod) and context.other_card ~= card then
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_gain
			return {
				message = localize('hmlt_steal'),
				message_card = card
			}
		end
		if context.joker_main then
			return {
				chips = card.ability.extra.chips
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_tipsygnostalgic_extinct
	end
}
SMODS.Joker {
	key = 'timaeustestified',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 3, y = 1 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { chips = 80 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.chips, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_timaeustestified', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
			G.GAME.pool_flags.hmlt_timaeustestified_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
	local hearts = true
		for k, v in pairs(G.play.cards) do
			if not v:is_suit("Hearts") then
			hearts = false
			break
		end
	end
	if context.joker_main and hearts then
		return {
			chips = card.ability.extra.chips
		}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_timaeustestified_extinct
	end
}
SMODS.Joker {
	key = 'apocalypsearisen',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 0, y = 2 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult = 8 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_apocalypsearisen', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
			G.GAME.pool_flags.hmlt_apocalypsearisen_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
	local nofaces = true
		for k, v in pairs(G.play.cards) do
			if v:is_face() then
			nofaces = false
			break
		end
	end
	if context.joker_main and nofaces then
		return {
			mult = card.ability.extra.mult
		}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_apocalypsearisen_extinct
	end
}
SMODS.Joker {
	key = 'adiostoreador',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 1, y = 2 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult = 20, size = 1 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult, card.ability.extra.size, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_adiostoreador', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
			G.GAME.pool_flags.hmlt_adiostoreador_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
	if context.joker_main and #context.full_hand == card.ability.extra.size then
		return {
			mult = card.ability.extra.mult
		}
	end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_adiostoreador_extinct
	end
}
SMODS.Joker {
	key = 'twinarmageddons',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 2, y = 2 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult_gain = 2, mult = 0 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_twinarmageddons', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
			G.GAME.pool_flags.hmlt_twinarmageddons_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
		if context.before and context.scoring_name == "Pair" then
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
			return {
				message = localize('hmlt_upgrade')
			}
		end
		if context.joker_main then
			return {
				mult = card.ability.extra.mult
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_twinarmageddons_extinct
	end
}
SMODS.Joker {
	key = 'carcinogeneticist',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 3, y = 2 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult = 69 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_carcinogeneticist', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
				G.GAME.pool_flags.hmlt_carcinogeneticist_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
	local has_rank_one, has_rank_two = false, false
		for k, v in pairs(G.play.cards) do
			if v:get_id() == 6 then
				has_rank_one = true
			end
			if v:get_id() == 9 then
				has_rank_two = true
			end
		end
	if context.joker_main and has_rank_one and has_rank_two then
		return {
			mult = card.ability.extra.mult
		}
	end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_carcinogeneticist_extinct
	end
}
SMODS.Joker {
	key = 'arseniccatnip',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 0, y = 3 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult_gain = 8, mult = 0 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_arseniccatnip', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
				G.GAME.pool_flags.hmlt_arseniccatnip_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
	if context.post_trigger and (context.other_ret.jokers.mult or context.other_ret.jokers.h_mult or context.other_ret.jokers.mult_mod) and context.other_card ~= card then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
		return {
			message = localize('hmlt_steal'),
			message_card = card
		}
	end
	if context.joker_main then
		return {
			mult = card.ability.extra.mult
		}
	end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_arseniccatnip_extinct
	end
}
SMODS.Joker {
	key = 'grimauxiliatrix',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 1, y = 3 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult = 12 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = {card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_grimauxiliatrix', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
			G.GAME.pool_flags.hmlt_grimauxiliatrix_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
		if context.joker_main and next(context.poker_hands["Pair"]) and #context.full_hand >= #context.scoring_hand + 1 then
			return {
				mult = card.ability.extra.mult
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_grimauxiliatrix_extinct
	end
}
SMODS.Joker {
	key = 'gallowscalibrator',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 2, y = 3 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult_gain = 12, mult = 0 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_gallowscalibrator', 1, 4.13, 'hmlt_ascend_chance') then
			G.E_MANAGER:add_event(Event({
				func = function()
					play_sound('slice1')
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0,
						blockable = false,
						func = function()
							card:remove()
							return true
						end
					}))
					return true
				end
			}))
			G.GAME.pool_flags.hmlt_gallowscalibrator_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
	if context.hand_drawn then
		local face_down = 0
			for k, v in pairs(context.hand_drawn) do
				if v.facing == "back" then
					face_down = face_down + 1
				end
			end
	card.ability.extra.mult = card.ability.extra.mult + (card.ability.extra.mult_gain * face_down)
		if face_down >=1 then
			return {
				message = localize('hmlt_upgrade')
			}
		end
	end
	if context.joker_main then
		return {
			mult = card.ability.extra.mult
		}
	end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_gallowscalibrator_extinct
	end
}
SMODS.Joker {
	key = 'arachnidsgrip',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 3, y = 3 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult_gain = 8, mult = 0 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_arachnidsgrip', 1, 4.13, 'hmlt_ascend_chance') then
			G.E_MANAGER:add_event(Event({
				func = function()
					play_sound('slice1')
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0,
						blockable = false,
						func = function()
							card:remove()
							return true
						end
					}))
					return true
				end
			}))
				G.GAME.pool_flags.hmlt_arachnidsgrip_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
	if context.before then
	local chance_card = 0
		for k, v in pairs(context.scoring_hand) do
			if SMODS.has_enhancement(v, 'm_glass') or SMODS.has_enhancement(v, 'm_lucky') then
				chance_card = chance_card + 1
			end
		end
		if chance_card >= 1 then
			card.ability.extra.mult = card.ability.extra.mult + (card.ability.extra.mult_gain * chance_card)
			return {
				message = localize('hmlt_upgrade')
			}
		end
	end
	if context.joker_main then
		return {
			mult = card.ability.extra.mult
		}
	end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_arachnidsgrip_extinct
	end
}
SMODS.Joker {
	key = 'centaurstesticle',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 0, y = 4 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult = 30 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_centaurstesticle', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
			G.GAME.pool_flags.hmlt_centaurstesticle_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
		if context.joker_main and G.GAME.blind.boss then
			return {
				mult = card.ability.extra.mult
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_centaurstesticle_extinct
	end
}
SMODS.Joker {
	key = 'terminallycapricious',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 1, y = 4 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult = 20 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_terminallycapricious', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
					end
				}))
				G.GAME.pool_flags.hmlt_terminallycapricious_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
		if context.destroy_card and context.cardarea == 'unscored' then
			if not context.destroy_card.ability.hmlt_life_st then
				return {remove = true}
			end
		end
		if context.joker_main then
			return {
				mult = card.ability.extra.mult
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_terminallycapricious_extinct
	end
}
SMODS.Joker {
	key = 'caligulasaquarium',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 2, y = 4 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult_gain = 8, mult = 0 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_caligulasaquarium', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
						return true
					end
				}))
				G.GAME.pool_flags.hmlt_caligulasaquarium_extinct = true
				return {
					message = localize('hmlt_extinct')
				}
			else
				return {
					message = localize('hmlt_safe')
				}
			end
		end
	local hearts = true
		for k, v in pairs(G.play.cards) do
			if not v:is_suit("Hearts") then
				hearts = false
				break
			end
		end
	if context.before and hearts and #context.full_hand == 1 then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
		return {
			message = localize('hmlt_upgrade')
		}
		end
	if context.destroy_card and hearts and #context.full_hand == 1 and context.cardarea == G.play then
		if not context.destroy_card.ability.hmlt_life_st then
			return {remove = true}
		end
	end
	if context.joker_main then
		return {
			mult = card.ability.extra.mult
		}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_caligulasaquarium_extinct
	end
}
SMODS.Joker {
	key = 'cuttlefishculler',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 3, y = 4 },
	rarity = 'hmlt_player',
	cost = 4,
	config = { extra = { mult = 12 } },
	loc_vars = function(self, info_queue, card)
		local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, 4.13, 'hmlt_ascend_chance')
		return { vars = { card.ability.extra.mult, new_numerator, new_denominator } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			if SMODS.pseudorandom_probability(card, 'hmlt_cuttlefishculler', 1, 4.13, 'hmlt_ascend_chance') then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('slice1')
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0,
							blockable = false,
							func = function()
								card:remove()
								return true
							end
						}))
					return true
				end
			}))
		G.GAME.pool_flags.hmlt_cuttlefishculler_extinct = true
			return {
				message = localize('hmlt_extinct')
			}
		else
			return {
				message = localize('hmlt_safe')
			}
		end
	end
	local faces = true
		for k, v in pairs(G.play.cards) do
			if not v:is_face() then
			faces = false
			break
		end
	end
	if context.joker_main and faces then
		return {
			mult = card.ability.extra.mult
		}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_cuttlefishculler_extinct
	end
}
SMODS.Joker {
	key = 'heirofbreath',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 4, y = 0 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xchips = 2.5, size = 3 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xchips, card.ability.extra.size } }
	end,
	calculate = function(self, card, context)
		if context.joker_main and #context.full_hand <= card.ability.extra.size then
		return {
			x_chips = card.ability.extra.Xchips
		}
	end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_ectobiologist_extinct
	end,
}
SMODS.Joker {
	key = 'witchofspace',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 5, y = 0 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xchips = 2.5, suits = 3 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xchips, card.ability.extra.suits } }
	end,
	calculate = function(self, card, context)
		local suits = 0
			for k, v in pairs(G.play.cards) do
				if v:is_suit("Hearts") then
					suits = suits + 1
				end
				if v:is_suit("Diamonds") then
					suits = suits + 1
				end
				if v:is_suit("Clubs") then
					suits = suits + 1
				end
				if v:is_suit("Spades") then
					suits = suits + 1
				end
			end
		if context.joker_main and suits >=3 then
			return {
				xchips = card.ability.extra.Xchips
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_gardengnostic_extinct
	end
}
SMODS.Joker {
	key = 'seeroflight',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 6, y = 0 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xchips = 2.5, suits = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xchips, card.ability.extra.suits } }
	end,
	calculate = function(self, card, context)
		local suits = 0
			for k, v in pairs(G.play.cards) do
				if v:is_suit("Hearts") then
					suits = suits + 1
				end
				if v:is_suit("Diamonds") then
					suits = suits + 1
				end
				if v:is_suit("Clubs") then
					suits = suits + 1
				end
				if v:is_suit("Spades") then
					suits = suits + 1
				end
			end
		if context.joker_main and suits <=2 then
			return {
				xchips = card.ability.extra.Xchips
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_tentacletherapist_extinct
	end
}
SMODS.Joker {
	key = 'knightoftime',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 7, y = 0 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xchips = 2.5, cards = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xchips, card.ability.extra.cards } }
	end,
	calculate = function(self, card, context)
		if context.joker_main and #context.scoring_hand >= card.ability.extra.cards then
			return {
				xchips = card.ability.extra.Xchips
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_turntechgodhead_extinct
	end
}
SMODS.Joker {
	key = 'maidoflife',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 4, y = 1 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xchips = 1.5, unscored = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xchips } }
	end,
	calculate = function(self, card, context)
		if context.joker_main and #context.full_hand - #context.scoring_hand >= 1 then
			card.ability.extra.unscored = #context.full_hand - #context.scoring_hand
			return {
				xchips = card.ability.extra.Xchips * card.ability.extra.unscored
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_gutsygumshoe_extinct
	end
}
SMODS.Joker {
	key = 'pageofhope',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 5, y = 1 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xchips = 5, size = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xchips, card.ability.extra.size } }
	end,
	calculate = function(self, card, context)
		if context.joker_main and #context.full_hand == card.ability.extra.size then
		return {
			x_chips = card.ability.extra.Xchips
		}
	end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_golgothasterror_extinct
	end
}
SMODS.Joker {
	key = 'rogueofvoid',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 6, y = 1 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xchips_gain = 0.5, Xchips = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xchips_gain, card.ability.extra.Xchips } }
	end,
	calculate = function(self, card, context)
		if context.post_trigger and (context.other_ret.jokers.xchips or context.other_ret.jokers.x_chips or context.other_ret.jokers.Xchip_mod) and context.other_card ~= card then
			card.ability.extra.Xchips = card.ability.extra.Xchips + card.ability.extra.Xchips_gain
			return {
				message = localize('hmlt_steal'),
				message_card = card
			}
		end
		if context.joker_main then
			return {
				xchips = card.ability.extra.Xchips
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_tipsygnostalgic_extinct
	end
}
SMODS.Joker {
	key = 'princeofheart',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 7, y = 1 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xchips = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xchips } }
	end,
	calculate = function(self, card, context)
	local hearts = true
		for k, v in pairs(G.play.cards) do
			if not v:is_suit("Hearts") then
			hearts = false
			break
		end
	end
	if context.joker_main and hearts then
		return {
			xchips = card.ability.extra.Xchips
		}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_timaeustestified_extinct
	end
}
SMODS.Joker {
	key = 'maidoftime',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 4, y = 2 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult = 1.75 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
		local nofaces = true
			for k, v in pairs(G.play.cards) do
			if v:is_face() then
			nofaces = false
			break
		end
	end
	if context.joker_main and nofaces then
		return {
			xmult = card.ability.extra.Xmult
		}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_apocalypsearisen_extinct
	end
}
SMODS.Joker {
	key = 'pageofbreath',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 5, y = 2 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult = 4, size = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.size } }
	end,
	calculate = function(self, card, context)
	if context.joker_main and #context.full_hand == card.ability.extra.size then
		return {
			x_mult = card.ability.extra.Xmult
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_adiostoreador_extinct
	end
}
SMODS.Joker {
	key = 'mageofdoom',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 6, y = 2 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult_gain = 0.2, Xmult = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
		if context.before and next(context.poker_hands["Pair"]) then
			card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
			return {
				message = localize('hmlt_upgrade')
			}
		end
		if context.joker_main then
			return {
				xmult = card.ability.extra.Xmult
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_twinarmageddons_extinct
	end
}
SMODS.Joker {
	key = 'knightofblood',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 7, y = 2 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult = 6.9 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
		local has_rank
			for k, v in pairs(G.play.cards) do
				if v:get_id() == 6 or v:get_id() == 9 then
					has_rank = true
					break
				end
			end
		if context.joker_main and has_rank then
			return {
				xmult = card.ability.extra.Xmult
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_carcinogeneticist_extinct
	end
}
SMODS.Joker {
	key = 'rogueofheart',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 4, y = 3 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult_gain = 0.25, Xmult = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
		if context.post_trigger and (context.other_ret.jokers.xmult or context.other_ret.jokers.x_mult or context.other_ret.jokers.Xmult_mod) and context.other_card ~= card then
			card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
			return {
				message = localize('hmlt_steal'),
				message_card = card
			}
		end
		if context.joker_main then
			return {
				xmult = card.ability.extra.Xmult
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_arseniccatnip_extinct
	end
}
SMODS.Joker {
	key = 'sylphofspace',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 5, y = 3 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main and next(context.poker_hands["Pair"]) and #context.full_hand >= #context.scoring_hand + 1 then
			return {
				xmult = card.ability.extra.Xmult
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_grimauxiliatrix_extinct
	end
}
SMODS.Joker {
	key = 'seerofmind',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 6, y = 3 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult_gain = 0.6, Xmult = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
	if context.hand_drawn then
		local face_down = 0
			for k, v in pairs(context.hand_drawn) do
				if v.facing == "back" then
					face_down = face_down + 1
				end
			end
		card.ability.extra.Xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_gain * face_down)
		if face_down >=1 then
			return {
				message = localize('hmlt_upgrade')
			}
		end
	end
	if context.joker_main then
		return {
			xmult = card.ability.extra.Xmult
		}
	end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_gallowscalibrator_extinct
	end
}
SMODS.Joker {
	key = 'thiefoflight',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 7, y = 3 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult_gain = 0.4, Xmult = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
	if context.before then
	local chance_card = 0
		for k, v in ipairs(context.scoring_hand) do
			if SMODS.has_enhancement(v, 'm_glass') or SMODS.has_enhancement(v, 'm_lucky') then
				chance_card = chance_card + 1
			end
		end
		if chance_card >= 1 then
			card.ability.extra.Xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_gain * chance_card)
			return {
				message = localize('hmlt_upgrade')
			}
		end
	end
	if context.joker_main then
		return {
			xmult = card.ability.extra.Xmult
		}
	end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_arachnidsgrip_extinct
	end
}
SMODS.Joker {
	key = 'heirofvoid',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 4, y = 4 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult = 7.5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
		if context.joker_main and G.GAME.blind.boss then
			return {
				xmult = card.ability.extra.Xmult
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_centaurstesticle_extinct
	end
}
SMODS.Joker {
	key = 'bardofrage',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 5, y = 4 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult = 3.5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
		if context.destroy_card and context.cardarea == 'unscored' then
			if not context.destroy_card.ability.hmlt_life_st then
				return {remove = true}
			end
		end
		if context.joker_main then
			return {
				xmult = card.ability.extra.Xmult
			}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_terminallycapricious_extinct
	end
}
SMODS.Joker {
	key = 'princeofhope',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 6, y = 4 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult_gain = 0.75, Xmult = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
	local hearts = true
		for k, v in pairs(G.play.cards) do
			if not v:is_suit("Hearts") then
				hearts = false
				break
			end
		end
		if context.before and hearts and #context.full_hand == 1 then
			card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
			return {
				message = localize('hmlt_upgrade')
			}
		end
		if context.destroy_card and hearts and #context.full_hand == 1 and context.cardarea == G.play then
			if not context.destroy_card.ability.hmlt_life_st then
				return {remove = true}
			end
		end
		if context.joker_main then
		return {
			xmult = card.ability.extra.Xmult
		}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_caligulasaquarium_extinct
	end
}
SMODS.Joker {
	key = 'witchoflife',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 7, y = 4 },
	rarity = 'hmlt_godtier',
	cost = 8,
	config = { extra = { Xmult = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
	local faces = true
		for k, v in pairs(G.play.cards) do
			if not v:is_face() then
			faces = false
			break
		end
	end
	if context.joker_main and faces then
		return {
			xmult = card.ability.extra.Xmult
		}
		end
	end,
	in_pool = function(self, args)
		return G.GAME.pool_flags.hmlt_cuttlefishculler_extinct
	end
}
SMODS.Joker {
	key = 'breath',
	blueprint_compat = false,
	atlas = 'hmltjokers',
	pos = { x = 0, y = 5 },
	rarity = 'hmlt_aspect',
	cost = 6,
	config = { extra = { effect = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.effect } }
	end,
	add_to_deck = function(self, card, from_debuff)
		change_shop_size(card.ability.extra.effect)
		SMODS.change_booster_limit(card.ability.extra.effect)
		SMODS.change_voucher_limit(card.ability.extra.effect)
	end,
	remove_from_deck = function(self, card, from_debuff)
		change_shop_size(-card.ability.extra.effect)
		SMODS.change_booster_limit(-card.ability.extra.effect)
		SMODS.change_voucher_limit(-card.ability.extra.effect)
	end
}
SMODS.Joker {
	key = 'time',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 1, y = 5 },
	rarity = 'hmlt_aspect',
	cost = 6,
	config = { extra = { Xmult = 4, scoring = 5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult, card.ability.extra.scoring } }
	end,
	calculate = function(self, card, context)
		if context.joker_main and #context.scoring_hand >= card.ability.extra.scoring then
			return {
				xmult = card.ability.extra.Xmult
			}
		end
	end
}
SMODS.Joker {
	key = 'light',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 2, y = 5 },
	rarity = 'hmlt_aspect',
	cost = 6,
	config = { extra = { retriggers = 2 } },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.m_lucky
		return { vars = { card.ability.extra.retriggers } }
	end,
	calculate = function (self, card, context)
		if context.repetition and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_lucky') then
			return {
				repetitions = card.ability.extra.retriggers
			}
		end
	end
}
SMODS.Joker {
	key = 'space',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 3, y = 5 },
	rarity = 'hmlt_aspect',
	cost = 6,
	calculate = function(self, card, context)
		if context.first_hand_drawn then
			local _card = create_playing_card ({
				front = pseudorandom_element(G.P_CARDS, pseudoseed('hmlt_space')),
				center = G.P_CENTERS.c_base
			}, G.discard, true, nil, {G.C.SECONDARY_SET.Enhanced}, true)
			_card:set_edition(poll_edition("hmlt_space", nil, nil, true))
			return {
				func = function()
					G.E_MANAGER:add_event(Event({
						func = function()
							G.hand:emplace(_card)
							_card:start_materialize()
							G.GAME.blind:debuff_card(_card)
							G.hand:sort()
							return true
							end
						}))
						SMODS.calculate_context({ playing_card_added = true, cards = { _card } })
				end
			}
		end
	end
}
SMODS.Joker {
	key = 'life',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 4, y = 5 },
	rarity = 'hmlt_aspect',
	cost = 6,
	calculate = function(self, card, context)
		if context.setting_blind and G.GAME.blind.boss then
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('timpani')
					SMODS.add_card({ set = 'Joker', rarity = pseudorandom_element({"Rare", "hmlt_aspect"}, pseudoseed("seed")) })
					card:juice_up(0.3, 0.5)
					return true
				end
			}))
		return {
			message = localize('hmlt_summon')
		}
	end
	end
}
SMODS.Joker {
	key = 'hope',
	blueprint_compat = false,
	atlas = 'hmltjokers',
	pos = { x = 5, y = 5 },
	rarity = 'hmlt_aspect',
	cost = 6,
}
SMODS.Joker {
	key = 'heart',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 6, y = 5 },
	rarity = 'hmlt_aspect',
	cost = 6,
	config = { extra = { chance = 4 } },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.c_soul
		return { vars = { G.GAME.probabilities.normal, card.ability.extra.chance } }
	end,
	calculate = function(self, card, context)
		if context.open_booster then
			if pseudorandom('hmlt_heart') < G.GAME.probabilities.normal / card.ability.extra.chance then
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.4,
					func = function()
						if G.consumeables.config.card_limit > #G.consumeables.cards then
							play_sound('timpani')
							SMODS.add_card({ key = 'c_soul' })
							card:juice_up(0.3, 0.5)
						end
						return true
					end
				}))
			end
		end
	end
}
SMODS.Joker {
	key = 'void',
	blueprint_compat = false,
	atlas = 'hmltjokers',
	pos = { x = 7, y = 5 },
	rarity = 'hmlt_aspect',
	cost = 6,
	config = { extra = { effect = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.effect } }
	end,
	add_to_deck = function(self, card, from_debuff)
		G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.effect
		G.hand:change_size(card.ability.extra.effect)
		G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.effect
		SMODS.change_play_limit(card.ability.extra.effect)
		SMODS.change_discard_limit(card.ability.extra.effect)
	end,
	remove_from_deck = function(self, card, from_debuff)
		G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.effect
		G.hand:change_size(-card.ability.extra.effect)
		G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.effect
		SMODS.change_play_limit(-card.ability.extra.effect)
		SMODS.change_discard_limit(-card.ability.extra.effect)
	end
}
SMODS.Joker {
	key = 'rage',
	blueprint_compat = true,
	atlas = 'hmltjokers',
	pos = { x = 0, y = 6 },
	rarity = 'hmlt_aspect',
	cost = 6,
	config = { extra = { Xmult_gain = 0.5, Xmult = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
	end,
	calculate = function(self, card, context)
		if context.skipping_booster then
			card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_gain
			return {
				message = localize('hmlt_upgrade')
			}
		end
		if context.joker_main then
			return {
				xmult = card.ability.extra.Xmult
			}
		end
	end
}
SMODS.Joker {
	key = 'doom',
	blueprint_compat = false,
	atlas = 'hmltjokers',
	pos = { x = 1, y = 6 },
	rarity = 'hmlt_aspect',
	cost = 6,
	calculate = function(self, card, context)
		if context.end_of_round and context.game_over and context.main_eval then
			G.E_MANAGER:add_event(Event({
				func = function()
					G.hand_text_area.blind_chips:juice_up()
					G.hand_text_area.game_chips:juice_up()
					play_sound('slice1')
					card:start_dissolve()
					return true
				end
			}))
			G.GAME.pool_flags.hmlt_doom_extinct = true
			return {
				message = localize('k_saved_ex'),
				saved = 'k_hmlt_doom',
				colour = G.C.RED
			}
		end
	end,
	in_pool = function(self, args)
		return not G.GAME.pool_flags.hmlt_doom_extinct
	end
}
SMODS.Joker {
	key = 'mind',
	blueprint_compat = false,
	atlas = 'hmltjokers',
	pos = { x = 2, y = 6 },
	rarity = 'hmlt_aspect',
	cost = 6,
	config = { extra = { seal = 'Red' } },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.m_steel
		info_queue[#info_queue + 1] = G.P_SEALS[card.ability.extra.seal]
	end,
	calculate = function(self, card, context)
		if context.before and context.main_eval then
			for k, v in ipairs(G.hand.cards) do
				if SMODS.has_enhancement(v, 'm_steel') and v.seal ~= 'Red' then
					v:set_seal(card.ability.extra.seal, nil, true)
				end
			end
		end
	end
}
SMODS.Joker {
	key = 'blood',
	blueprint_compat = false,
	atlas = 'hmltjokers',
	pos = { x = 3, y = 6 },
	rarity = 'hmlt_aspect',
	cost = 6
}
