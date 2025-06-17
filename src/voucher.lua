SMODS.Voucher {
	key = 'sburbdisc',
	atlas = 'hmltvouchers',
	pos = { x = 0, y = 0 },
	config = { extra = { effect = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { self.config.extra.effect } }
	end,
	redeem = function(self, card)
		G.E_MANAGER:add_event(Event({
			func = function()
				G.GAME.hmlt_player_mod = G.GAME.hmlt_player_mod * self.config.extra.effect
				G.GAME.hmlt_aspect_mod = G.GAME.hmlt_aspect_mod * self.config.extra.effect
				G.GAME.hmlt_godtier_mod = G.GAME.hmlt_godtier_mod * self.config.extra.effect
				return true
			end,
		}))
	end
}
SMODS.Voucher {
	key = 'thetreasure',
	atlas = 'hmltvouchers',
	pos = { x = 1, y = 0 },
	config = { extra = { effect = 4 } },
	requires = { 'v_hmlt_sburbdisc' },
	loc_vars = function(self, info_queue, card)
		return { vars = { self.config.extra.effect } }
	end,
	redeem = function(self, card)
		G.E_MANAGER:add_event(Event({
			func = function()
				G.GAME.hmlt_player_mod = G.GAME.hmlt_player_mod * ( self.config.extra.effect / 2 )
				G.GAME.hmlt_aspect_mod = G.GAME.hmlt_aspect_mod * ( self.config.extra.effect / 2 )
				G.GAME.hmlt_godtier_mod = G.GAME.hmlt_godtier_mod * ( self.config.extra.effect / 2 )
				return true
			end,
		}))
	end
}
