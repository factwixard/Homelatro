SMODS.Rarity {
	key = 'player',
	default_weight = 0.35,
	badge_colour = HEX("53A3FF"),
	pools =  { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		if not (G.GAME.pool_flags.hmlt_ectobiologist_extinct and G.GAME.pool_flags.hmlt_gardengnostic_extinct and G.GAME.pool_flags.hmlt_tentacletherapist_extinct and G.GAME.pool_flags.hmlt_turntechgodhead_extinct and G.GAME.pool_flags.hmlt_gutsygumshoe_extinct and G.GAME.pool_flags.hmlt_golgothasterror_extinct and G.GAME.pool_flags.hmlt_tipsygnostalgic_extinct and G.GAME.pool_flags.hmlt_timaeustestified_extinct and G.GAME.pool_flags.hmlt_apocalypsearisen_extinct and G.GAME.pool_flags.hmlt_adiostoreador_extinct and G.GAME.pool_flags.hmlt_twinarmageddons_extinct and G.GAME.pool_flags.hmlt_carcinogeneticist_extinct and G.GAME.pool_flags.hmlt_arseniccatnip_extinct and G.GAME.pool_flags.hmlt_grimauxiliatrix_extinct and G.GAME.pool_flags.hmlt_gallowscalibrator_extinct and G.GAME.pool_flags.hmlt_arachnidsgrip_extinct and G.GAME.pool_flags.hmlt_centaurstesticle_extinct and G.GAME.pool_flags.hmlt_terminallycapricious_extinct and G.GAME.pool_flags.hmlt_caligulasaquarium_extinct and G.GAME.pool_flags.hmlt_cuttlefishculler_extinct) then
			return weight
		else
			return 0
		end
	end
}
SMODS.Rarity {
	key = 'aspect',
	default_weight = 0.05,
	badge_colour = HEX("D00009"),
	pools =  { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		return weight
	end
}
SMODS.Rarity {
	key = 'godtier',
	default_weight = 0.25,
	badge_colour = HEX("FF6000"),
	pools =  { ["Joker"] = true },
	get_weight = function(self, weight, object_type)
		if (G.GAME.pool_flags.hmlt_ectobiologist_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_heirofbreath")))) or (G.GAME.pool_flags.hmlt_gardengnostic_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_witchofspace")))) or (G.GAME.pool_flags.hmlt_tentacletherapist_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_seeroflight")))) or (G.GAME.pool_flags.hmlt_turntechgodhead_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_knightoftime")))) or (G.GAME.pool_flags.hmlt_gutsygumshoe_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_maidoflife")))) or (G.GAME.pool_flags.hmlt_golgothasterror_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_pageofhope")))) or (G.GAME.pool_flags.hmlt_tipsygnostalgic_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_rogueofvoid")))) or (G.GAME.pool_flags.hmlt_timaeustestified_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_princeofheart")))) or (G.GAME.pool_flags.hmlt_apocalypsearisen_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_maidftime")))) or (G.GAME.pool_flags.hmlt_adiostoreador_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_pageofbreath")))) or (G.GAME.pool_flags.hmlt_twinarmageddons_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_mageofdoom")))) or (G.GAME.pool_flags.hmlt_carcinogeneticist_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_knightofblood")))) or (G.GAME.pool_flags.hmlt_arseniccatnip_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_rogueofheart")))) or (G.GAME.pool_flags.hmlt_grimauxiliatrix_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_sylphofspace")))) or (G.GAME.pool_flags.hmlt_gallowscalibrator_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_seerofmind")))) or (G.GAME.pool_flags.hmlt_arachnidsgrip_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_thiefoflight")))) or (G.GAME.pool_flags.hmlt_centaurstesticle_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_heirofvoid")))) or (G.GAME.pool_flags.hmlt_terminallycapricious_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_bardofrage")))) or (G.GAME.pool_flags.hmlt_caligulasaquarium_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_princeofhope")))) or (G.GAME.pool_flags.hmlt_cuttlefishculler_extinct and (SMODS.showman() or not next(SMODS.find_card("j_hmlt_witchoflife")))) then
			return weight
		else
			return 0
		end
	end
}
