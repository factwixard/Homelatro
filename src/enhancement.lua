SMODS.Enhancement {
	key = 'blank',
	atlas = 'hmltmisc',
	pos = { x = 1, y = 2 },
	config = {
		bonus = 150,
		h_chips = 50,
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.bonus, card.ability.h_chips } }
	end,
	replace_base_card = true,
	no_rank = true,
	any_suit = true,
	always_scores = true,
}
if next(SMODS.find_mod('artbox')) then
local ref = Game.main_menu
function Game:main_menu(change_context)
ArtBox.add_collectible('m_hmlt_blank',
	{ atlas = 'hmlt_hmltcollect', pos = { x = 0, y = 0 }, soul_pos = { x = 1, y = 0 } })
	ref(self, change_context)
end
end
