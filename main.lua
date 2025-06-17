SMODS.current_mod.optional_features = {
	post_trigger = true,
	cardareas = {
		deck = true,
	},
}
SMODS.load_file("src/atlas.lua")()
SMODS.load_file("src/rarity.lua")()
SMODS.load_file("src/enhancement.lua")()
SMODS.load_file("src/hand.lua")()
SMODS.load_file("src/voucher.lua")()
SMODS.load_file("src/planet.lua")()
SMODS.load_file("src/spectral.lua")()
SMODS.load_file("src/joker.lua")()
SMODS.load_file("src/sticker.lua")()
SMODS.load_file("src/tarot.lua")()
SMODS.load_file("src/back.lua")()
SMODS.load_file("src/ownership.lua")()
