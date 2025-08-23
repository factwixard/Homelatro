SMODS.Consumable:take_ownership('familiar',
	{
		config = { extra = { destroy = 1, cards = 3 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.cards } }
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
			local card_to_destroy = pseudorandom_element(G.hand.cards, pseudoseed('random_destroy'))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('tarot1')
					used_tarot:juice_up(0.3, 0.5)
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.1,
				func = function()
					if not next(SMODS.find_card("j_hmlt_blood")) then
						if not card_to_destroy.ability.hmlt_life_st then
							SMODS.destroy_cards(card_to_destroy)
						end
					end
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.7,
				func = function()
					local cards = {}
					for i = 1, card.ability.extra.cards do
						local faces = {}
						for _, rank_key in ipairs(SMODS.Rank.obj_buffer) do
							local rank = SMODS.Ranks[rank_key]
							if rank.face then table.insert(faces, rank) end
						end
						local _suit, _rank =
							pseudorandom_element(SMODS.Suits, pseudoseed('familiar_create')).card_key,
							pseudorandom_element(faces, pseudoseed('familiar_create')).card_key
						local cen_pool = {}
						for _, enhancement_center in pairs(G.P_CENTER_POOLS["Enhanced"]) do
							if enhancement_center.key ~= 'm_stone' and not enhancement_center.overrides_base_rank then
								cen_pool[#cen_pool + 1] = enhancement_center
							end
						end
						cards[i] = create_playing_card({
							front = G.P_CARDS[_suit .. '_' .. _rank],
							center = pseudorandom_element(cen_pool, pseudoseed('spe_card'))
						}, G.hand, nil, i ~= 1, { G.C.SECONDARY_SET.Spectral })
					end
					SMODS.calculate_context({ playing_card_added = true, cards = cards })
					return true
				end
			}))
			delay(0.3)
		end
	},
	true
)
SMODS.Consumable:take_ownership('grim',
	{
		config = { extra = { destroy = 1, cards = 2 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.cards } }
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
			local card_to_destroy = pseudorandom_element(G.hand.cards, pseudoseed('random_destroy'))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('tarot1')
					used_tarot:juice_up(0.3, 0.5)
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.1,
				func = function()
					if not next(SMODS.find_card("j_hmlt_blood")) then
						if not card_to_destroy.ability.hmlt_life_st then
							SMODS.destroy_cards(card_to_destroy)
						end
					end
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.7,
				func = function()
					local cards = {}
					for i = 1, card.ability.extra.cards do
						local _suit, _rank =
							pseudorandom_element(SMODS.Suits, pseudoseed('grim_create')).card_key, 'A'
						local cen_pool = {}
						for _, enhancement_center in pairs(G.P_CENTER_POOLS["Enhanced"]) do
							if enhancement_center.key ~= 'm_stone' and not enhancement_center.overrides_base_rank then
								cen_pool[#cen_pool + 1] = enhancement_center
							end
						end
						cards[i] = create_playing_card({
							front = G.P_CARDS[_suit .. '_' .. _rank],
							center = pseudorandom_element(cen_pool, pseudoseed('spe_card'))
						}, G.hand, nil, i ~= 1, { G.C.SECONDARY_SET.Spectral })
					end
					SMODS.calculate_context({ playing_card_added = true, cards = cards })
					return true
				end
			}))
			delay(0.3)
		end
	},
	true
)
SMODS.Consumable:take_ownership('incantation',
	{
		config = { extra = { destroy = 1, cards = 4 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.cards } }
		end,
		use = function(self, card, area, copier)
			local used_tarot = copier or card
			local card_to_destroy = pseudorandom_element(G.hand.cards, pseudoseed('random_destroy'))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('tarot1')
					used_tarot:juice_up(0.3, 0.5)
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.1,
				func = function()
					if not next(SMODS.find_card("j_hmlt_blood")) then
						if not card_to_destroy.ability.hmlt_life_st then
							SMODS.destroy_cards(card_to_destroy)
						end
					end
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.7,
				func = function()
					local cards = {}
					for i = 1, card.ability.extra.cards do
						local numbers = {}
						for _, rank_key in ipairs(SMODS.Rank.obj_buffer) do
							local rank = SMODS.Ranks[rank_key]
							if rank_key ~= 'Ace' and not rank.face then table.insert(numbers, rank) end
						end
						local _suit, _rank =
							pseudorandom_element(SMODS.Suits, pseudoseed('incantation_create')).card_key,
							pseudorandom_element(numbers, pseudoseed('incantation_create')).card_key
						local cen_pool = {}
						for _, enhancement_center in pairs(G.P_CENTER_POOLS["Enhanced"]) do
							if enhancement_center.key ~= 'm_stone' and not enhancement_center.overrides_base_rank then
								cen_pool[#cen_pool + 1] = enhancement_center
							end
						end
						cards[i] = create_playing_card({
							front = G.P_CARDS[_suit .. '_' .. _rank],
							center = pseudorandom_element(cen_pool, pseudoseed('spe_card'))
						}, G.hand, nil, i ~= 1, { G.C.SECONDARY_SET.Spectral })
					end
					SMODS.calculate_context({ playing_card_added = true, cards = cards })
					return true
				end
			}))
			delay(0.3)
		end
	},
	true
)
SMODS.Consumable:take_ownership('wraith',
	{
		use = function(self, card, area, copier)
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('timpani')
					SMODS.add_card({ set = 'Joker', rarity = 'Rare' })
					card:juice_up(0.3, 0.5)
					if G.GAME.dollars ~= 0 and not next(SMODS.find_card("j_hmlt_blood")) then
						ease_dollars(-G.GAME.dollars, true)
					end
					return true
				end
			}))
			delay(0.6)
		end
	},
	true
)
SMODS.Consumable:take_ownership('ouija',
	{
		use = function(self, card, area, copier)
			local used_tarot = copier or card
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('tarot1')
					used_tarot:juice_up(0.3, 0.5)
					return true
				end
			}))
			for i = 1, #G.hand.cards do
				local percent = 1.15 - (i - 0.999) / (#G.hand.cards - 0.998) * 0.3
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.15,
					func = function()
						G.hand.cards[i]:flip()
						play_sound('card1', percent)
						G.hand.cards[i]:juice_up(0.3, 0.3)
						return true
					end
				}))
			end
			local _rank = pseudorandom_element(SMODS.Ranks, pseudoseed('ouija'))
			for i = 1, #G.hand.cards do
				G.E_MANAGER:add_event(Event({
					func = function()
						local _card = G.hand.cards[i]
						assert(SMODS.change_base(_card, nil, _rank.key))
						return true
					end
				}))
			end
			if not next(SMODS.find_card("j_hmlt_blood")) then
				G.hand:change_size(-1)
			end
			for i = 1, #G.hand.cards do
				local percent = 0.85 + (i - 0.999) / (#G.hand.cards - 0.998) * 0.3
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.15,
					func = function()
						G.hand.cards[i]:flip()
						play_sound('tarot2', percent, 0.6)
						G.hand.cards[i]:juice_up(0.3, 0.3)
						return true
					end
				}))
			end
			delay(0.5)
		end
	},
	true
)
SMODS.Consumable:take_ownership('ectoplasm',
	{
		use = function(self, card, area, copier)
			local editionless_jokers = SMODS.Edition:get_edition_cards(G.jokers, true)
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					local eligible_card = pseudorandom_element(editionless_jokers, pseudoseed('ectoplasm'))
					eligible_card:set_edition({ negative = true })
					if not next(SMODS.find_card("j_hmlt_blood")) then
						G.GAME.ecto_minus = G.GAME.ecto_minus or 1
						G.hand:change_size(-G.GAME.ecto_minus)
						G.GAME.ecto_minus = G.GAME.ecto_minus + 1
					end
					card:juice_up(0.3, 0.5)
					return true
				end
			}))
		end
	},
	true
)
SMODS.Consumable:take_ownership('immolate',
	{
		config = { extra = { destroy = 5, dollars = 20 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.destroy, card.ability.extra.dollars } }
		end,
		use = function(self, card, area, copier)
			local destroyed_cards = {}
			local temp_hand = {}
			for _, playing_card in ipairs(G.hand.cards) do temp_hand[#temp_hand + 1] = playing_card end
			table.sort(temp_hand,
				function(a, b)
					return not a.playing_card or not b.playing_card or a.playing_card < b.playing_card
				end
				)
			pseudoshuffle(temp_hand, pseudoseed('immolate'))
			for i = 1, card.ability.extra.destroy do destroyed_cards[#destroyed_cards + 1] = temp_hand[i] end
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('tarot1')
					card:juice_up(0.3, 0.5)
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.1,
				func = function()
					for _, pcard in pairs(destroyed_cards) do
						if not pcard.ability.hmlt_life_st then
							SMODS.destroy_cards(pcard)
						end
					end
					return true
				end
			}))
			delay(0.5)
			ease_dollars(card.ability.extra.dollars)
			delay(0.3)
		end
	},
	true
)
SMODS.Consumable:take_ownership('ankh',
	{
		use = function(self, card, area, copier)
			local deletable_jokers = {}
			for _, joker in pairs(G.jokers.cards) do
				if not joker.ability.eternal then deletable_jokers[#deletable_jokers + 1] = joker end
			end
			local chosen_joker = pseudorandom_element(G.jokers.cards, pseudoseed('ankh_choice'))
			local _first_dissolve = nil
			G.E_MANAGER:add_event(Event({
				trigger = 'before',
				delay = 0.75,
				func = function()
					if not next(SMODS.find_card("j_hmlt_blood")) then
						for _, joker in pairs(deletable_jokers) do
							if joker ~= chosen_joker then
								joker:start_dissolve(nil, _first_dissolve)
								_first_dissolve = true
							end
						end
					end
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'before',
				delay = 0.4,
				func = function()
					local copied_joker = copy_card(chosen_joker, nil, nil, nil,
						chosen_joker.edition and chosen_joker.edition.negative)
					copied_joker:start_materialize()
					copied_joker:add_to_deck()
					if copied_joker.edition and copied_joker.edition.negative then
						copied_joker:set_edition(nil, true)
					end
					G.jokers:emplace(copied_joker)
					return true
				end
			}))
		end
	},
	true
)
SMODS.Consumable:take_ownership('hex',
	{
		use = function(self, card, area, copier)
			local editionless_jokers = SMODS.Edition:get_edition_cards(G.jokers, true)
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					local eligible_card = pseudorandom_element(editionless_jokers, pseudoseed('hex'))
					eligible_card:set_edition({ polychrome = true })
					local _first_dissolve = nil
					if not next(SMODS.find_card("j_hmlt_blood")) then
						for _, joker in pairs(G.jokers.cards) do
							if joker ~= eligible_card and (not joker.ability.eternal) then
								joker:start_dissolve(nil, _first_dissolve)
								_first_dissolve = true
							end
						end
					end
					card:juice_up(0.3, 0.5)
					return true
				end
			}))
		end
	},
	true
)
SMODS.Consumable:take_ownership('fool',
	{
		use = function(self, card, area, copier)
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					if G.consumeables.config.card_limit > #G.consumeables.cards then
						play_sound('timpani')
						SMODS.add_card({ key = G.GAME.last_tarot_planet })
						card:juice_up(0.3, 0.5)
					end
					if next(SMODS.find_card("j_hmlt_hope")) and G.consumeables.config.card_limit > #G.consumeables.cards then
						play_sound('timpani')
						SMODS.add_card({ key = G.GAME.last_tarot_planet })
						card:juice_up(0.3, 0.5)
					end
					return true
				end
			}))
			delay(0.6)
		end
	},
	true
)
SMODS.Consumable:take_ownership('magician',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('high_priestess',
	{
		config = { extra = { planets = 2 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.planets } }
		end,
		use = function(self, card, area, copier)
			if next(SMODS.find_card("j_hmlt_hope")) then
				for i = 1, math.min(card.ability.extra.planets * 2, G.consumeables.config.card_limit * 2 - #G.consumeables.cards) do
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0.4,
						func = function()
							if G.consumeables.config.card_limit * 2 > #G.consumeables.cards then
								play_sound('timpani')
								SMODS.add_card({ set = 'Planet' })
								card:juice_up(0.3, 0.5)
							end
							return true
						end
					}))
				end
			else
				for i = 1, math.min(card.ability.extra.planets, G.consumeables.config.card_limit - #G.consumeables.cards) do
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0.4,
						func = function()
							if G.consumeables.config.card_limit > #G.consumeables.cards then
								play_sound('timpani')
								SMODS.add_card({ set = 'Planet' })
								card:juice_up(0.3, 0.5)
							end
							return true
						end
					}))
				end
			end
			delay(0.6)
		end
	},
	true
)
SMODS.Consumable:take_ownership('empress',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('emperor',
	{
		config = { extra = { tarots = 2 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.tarots } }
		end,
		use = function(self, card, area, copier)
			if next(SMODS.find_card("j_hmlt_hope")) then
				for i = 1, math.min(card.ability.extra.tarots * 2, G.consumeables.config.card_limit * 2 - #G.consumeables.cards) do
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0.4,
						func = function()
							if G.consumeables.config.card_limit * 2 > #G.consumeables.cards then
								play_sound('timpani')
								SMODS.add_card({ set = 'Tarot' })
								card:juice_up(0.3, 0.5)
							end
							return true
						end
					}))
				end
			else
				for i = 1, math.min(card.ability.extra.tarots, G.consumeables.config.card_limit - #G.consumeables.cards) do
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0.4,
						func = function()
							if G.consumeables.config.card_limit > #G.consumeables.cards then
								play_sound('timpani')
								SMODS.add_card({ set = 'Tarot' })
								card:juice_up(0.3, 0.5)
							end
							return true
						end
					}))
				end
			end
			delay(0.6)
		end
	},
	true
)
SMODS.Consumable:take_ownership('heirophant',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('lovers',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('chariot',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('justice',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('hermit',
	{
		config = { extra = { max = 20 } },
		loc_vars = function(self, info_queue, card)
			return { vars = { card.ability.extra.max } }
		end,
		use = function(self, card, area, copier)
			if next(SMODS.find_card("j_hmlt_hope")) then
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.4,
					func = function()
						play_sound('timpani')
						card:juice_up(0.3, 0.5)
						ease_dollars(math.max(0, math.min(G.GAME.dollars * 2, card.ability.extra.max * 2)), true)
						return true
					end
				}))
			else
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.4,
					func = function()
						play_sound('timpani')
						card:juice_up(0.3, 0.5)
						ease_dollars(math.max(0, math.min(G.GAME.dollars, card.ability.extra.max)), true)
						return true
					end
				}))
			end
			delay(0.6)
		end
	},
	true
)
SMODS.Consumable:take_ownership('strength',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('hanged_man',
	{
		use = function(self, card, area, copier)
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('tarot1')
					card:juice_up(0.3, 0.5)
					return true
				end
			}))
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.2,
				func = function()
					SMODS.destroy_cards(G.hand.highlighted)
					return true
				end
			}))
			delay(0.3)
		end,
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('death',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('temperance',
	{
		use = function(self, card, area, copier)
			if next(SMODS.find_card("j_hmlt_hope")) then
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.4,
					func = function()
						play_sound('timpani')
						card:juice_up(0.3, 0.5)
						ease_dollars(card.ability.money * 2, true)
						return true
					end
				}))
			else
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.4,
					func = function()
						play_sound('timpani')
						card:juice_up(0.3, 0.5)
						ease_dollars(card.ability.money, true)
						return true
					end
				}))
			end
			delay(0.6)
		end
	},
	true
)
SMODS.Consumable:take_ownership('devil',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('tower',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('star',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('moon',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('sun',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
SMODS.Consumable:take_ownership('judgement',
	{
		use = function(self, card, area, copier)
			G.E_MANAGER:add_event(Event({
				trigger = 'after',
				delay = 0.4,
				func = function()
					play_sound('timpani')
					SMODS.add_card({ set = 'Joker' })
					card:juice_up(0.3, 0.5)
					return true
				end
			}))
			if next(SMODS.find_card("j_hmlt_hope")) then
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.4,
					func = function()
						play_sound('timpani')
						SMODS.add_card({ set = 'Joker' })
						card:juice_up(0.3, 0.5)
						return true
					end
				}))
			end
			delay(0.6)
		end
	},
	true
)
SMODS.Consumable:take_ownership('world',
	{
		can_use = function(self, card)
			if next(SMODS.find_card("j_hmlt_hope")) then
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted * 2
			else
				return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
			end
		end
	},
	true
)
