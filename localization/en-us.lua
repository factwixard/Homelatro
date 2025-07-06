 return {
	descriptions = {
		Back = {
			b_hmlt_beta = {
				name = 'Beta Deck',
				text = {
					'Start run with {C:attention}ectoBiologist{},',
					'{C:attention}gardenGnostic{}, {C:attention}tentacleTherapist{},',
					'and {C:attention}turntechGodhead{}',
				},
			},
			b_hmlt_alpha = {
				name = 'Alpha Deck',
				text = {
					'Start run with {C:attention}gutsyGumshoe{},',
					'{C:attention}golgothasTerror{}, {C:attention}tipsyGnostalgic{},',
					'and {C:attention}timaeusTestified{}',
				},
			},
			b_hmlt_sgrub = {
				name = 'Sgrub Deck',
				text = {
					'Start run with',
					'{C:attention}Sburb Disc{}',
				},
			},
			b_hmlt_scratchd = {
				name = 'Scratched Deck',
				text = {
					'All {C:attention}playing cards{}',
					'Are {C:enhanced}Blank{} Cards',
				},
			},
		},
		Planet = {
			c_hmlt_alternia = {
				name = 'Alternia',
				text = {
					'{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){}',
					'Level up',
					'{C:attention}a certain hand{}',
					'{C:mult}+20{} Mult',
				},
			},
		},
		Spectral = {
			c_hmlt_scratch = {
				name = 'Scratch',
				text = {
					{
						'Enhances {C:attention}#1#{} selected cards',
						'to {C:enhanced}Blank{} Cards',
					},
				},
			},
		},
		Tarot = {
			c_hmlt_questbed = {
				name = 'Quest Bed',
				text = {
					'Adds a random {C:attention}Aspect Sticker{}',
					'to {C:attention}#1#{} selected card',
				},
			},
		},
		Voucher = {
			v_hmlt_sburbdisc = {
				name = 'Sburb Disc',
				text = {
					{
						'{C:green}Homelatro{} Jokers appear',
						'{C:attention}#1#X{} as often',
					},
				},
			},
			v_hmlt_thetreasure = {
				name = 'The Treasure',
				text = {
					'{C:green}Homelatro{} Jokers appear',
					'{C:attention}#1#X{} as often',
				},
			},
		},
		Joker = {
			j_hmlt_ectobiologist = {
				name = 'ectoBiologist',
				text = {
					{
						'{C:chips}+#1#{} Chips if {C:attention}played hand{}',
						'is {C:attention}#2# or fewer{} cards',
					},
					{
						'{C:green}#3# in #4#{} chance of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_gardengnostic = {
				name = 'gardenGnostic',
				text = {
					{
						'{C:chips}+#1#{} Chips if {C:attention}played hand{}',
						'has {C:attention}#2# or more{} {C:clubs}S{C:diamonds}u{C:spades}i{C:hearts}t{}s',
					},
					{
						'{C:green}#3# in #4#{} chance of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_tentacletherapist = {
				name = 'tentacleTherapist',
				text = {
					{
						'{C:chips}+#1#{} Chips if {C:attention}played hand{}',
						'has {C:attention}#2# or less{} {C:clubs}S{C:diamonds}u{C:spades}i{C:hearts}t{}s',
					},
					{
						'{C:green}#3# in #4#{} chance of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_turntechgodhead = {
				name = 'turntechGodhead',
				text = {
					{
						'{C:chips}+#1#{} Chips if {C:attention}played hand{}',
						'has at least {C:attention}#2# scoring cards{}',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_gutsygumshoe = {
				name = 'gutsyGumshoe',
				text = {
					{
						'{C:chips}+#1#{} Chips for each played {C:attention}unscoring card{}',
					},
					{
						'{C:green}#2# in #3# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_golgothasterror = {
				name = 'golgothasTerror',
				text = {
					{
						'{C:chips}+#1#{} Chips if {C:attention}played hand{}',
						'has only {C:attention}#2#{} card',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_tipsygnostalgic = {
				name = 'tipsyGnostalgic',
				text = {
					{
						'Gains {C:chips}+#1#{} Chips when other Jokers',
						'that give {C:chips}+Chips{} are triggered',
						'{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips){}',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_timaeustestified = {
				name = 'timaeusTestified',
				text = {
					{
						'{C:chips}+#1#{} Chips if {C:attention}played hand{}',
						'contains only {C:hearts}Hearts{} cards',
					},
					{
						'{C:green}#2# in #3# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_apocalypsearisen = {
				name = 'apocalypseArisen',
				text = {
					{
						'{C:mult}+#1#{} Mult if {C:attention}played hand{}',
						'contains no {C:attention}face cards{}',
					},
					{
						'{C:green}#2# in #3# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_adiostoreador = {
				name = 'adiosToreador',
				text = {
					{
						'{C:mult}+#1#{} Mult if {C:attention}played hand{}',
						'has only {C:attention}#2#{} card',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_twinarmageddons = {
				name = 'twinArmageddons',
				text = {
					{
						'Gains {C:mult}+#1#{} Mult if {C:attention}played hand{}',
						'is a {C:attention}Pair{}',
						'{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult){}',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_carcinogeneticist = {
				name = 'carcinoGeneticist',
				text = {
					{
						'{C:mult}+#1#{} Mult if {C:attention}played hand{}',
						'contains both a {C:attention}6{} and {C:attention}9{}',
					},
					{
						'{C:green}#2# in #3# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_arseniccatnip = {
				name = 'arsenicCatnip',
				text = {
					{
						'Gains {C:mult}+#1#{} Mult when other Jokers',
						'that give {C:mult}+Mult{} are triggered',
						'{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult){}',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_grimauxiliatrix = {
				name = 'grimAuxiliatrix',
				text = {
					{
						'{C:mult}+#1#{} Mult if {C:attention}played hand{} contains',
						'a {C:attention}Pair{} and an {C:attention}unscoring{} card',
					},
					{
						'{C:green}#2# in #3# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_gallowscalibrator = {
				name = 'gallowsCalibrator',
				text = {
					{
						'Gains {C:mult}+#1#{} Mult every time a {C:attention}card{}',
						'is drawn {C:attention}face-down{}',
						'{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult){}',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_arachnidsgrip = {
				name = 'arachnidsGrip',
				text = {
					{
						'Gains {C:mult}+#1#{} Mult for every {C:attention}scored card{}',
						'that has a listed {C:green}chance{}',
						'{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult)',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_centaurstesticle = {
				name = 'centaursTesticle',
				text = {
					{
						'{C:mult}+#1#{} Mult against {C:attention}Boss Blinds{}',
					},
					{
						'{C:green}#2# in #3# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_terminallycapricious = {
				name = 'terminallyCapricious',
				text = {
					{
						'{C:mult}+#1#{} Mult, destroys all {C:attention}unscoring{} cards',
					},
					{
						'{C:green}#2# in #3# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_caligulasaquarium = {
				name = 'caligulasAquarium',
				text = {
					{
						'Gains {C:mult}+#1#{} Mult if {C:attention}played hand{} is',
						'a {C:attention}single {C:hearts}Hearts {C:attention}card{},',
						'destroys card used',
						'{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult){}',
					},
					{
						'{C:green}#3# in #4# chance{} of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_cuttlefishculler = {
				name = 'cuttlefishCuller',
				text = {
					{
						'{C:mult}+#1#{} Mult if {C:attention}played hand{}',
						'contains only {C:attention}face cards{}',
					},
					{
						'{C:green}#2# in #3#{} chance of being destroyed',
						'at the {C:attention}end of round{}',
					},
				},
			},
			j_hmlt_heirofbreath = {
				name = 'Heir of Breath',
				text = {
					'{X:chips,C:white}X#1#{} Chips if {C:attention}played hand{}',
					'is {C:attention}#2# or fewer{} cards',
				},
			},
			j_hmlt_witchofspace = {
				name = 'Witch of Space',
				text = {
					'{X:chips,C:white}X#1#{} Chips if {C:attention}played hand{}',
					'has {C:attention}#2# or more{} {C:clubs}S{C:diamonds}u{C:spades}i{C:hearts}t{}s',
				},
			},
			j_hmlt_seeroflight = {
				name = 'Seer of Light',
				text = {
					'{X:chips,C:white}X#1#{} Chips if {C:attention}played hand{}',
					'has {C:attention}#2# or less{} {C:clubs}S{C:diamonds}u{C:spades}i{C:hearts}t{}s',
				},
			},
			j_hmlt_knightoftime = {
				name = 'Knight of Time',
				text = {
					'{X:chips,C:white}X#1#{} Chips if {C:attention}played hand{}',
					'has at least {C:attention}#2# scoring cards{}',
				},
			},
			j_hmlt_maidoflife = {
				name = 'Maid of Life',
				text = {
					'{X:chips,C:white}X#1#{} Chips for each played {C:attention}unscoring card{}',
				},
			},
			j_hmlt_pageofhope = {
				name = 'Page of Hope',
				text = {
					'{X:chips,C:white}X#1#{} Chips if {C:attention}played hand{}',
					'has only {C:attention}#2#{} card',
				},
			},
			j_hmlt_rogueofvoid = {
				name = 'Rogue of Void',
				text = {
					'Gains {X:chips,C:white}X#1#{} Chips when other Jokers',
					'that give {X:chips,C:white}XChips{} are triggered',
					'{C:inactive}(Currently {X:chips,C:white}X#2#{} {C:inactive}Chips)',
				},
			},
			j_hmlt_princeofheart = {
				name = 'Prince of Heart',
				text = {
					'{X:chips,C:white}X#1#{} Chips if {C:attention}played hand{}',
					'contains only {C:hearts}Hearts{} cards',
				},
			},
			j_hmlt_maidoftime = {
				name = 'Maid of Time',
				text = {
					'{X:mult,C:white}X#1#{} Mult if {C:attention}played hand{}',
					'contains no {C:attention}face cards{}',
				},
			},
			j_hmlt_pageofbreath = {
				name = 'Page of Breath',
				text = {
					'{X:mult,C:white}X#1#{} Mult if {C:attention}played hand{}',
					'has only {C:attention}#2#{} Card',
				},
			},
			j_hmlt_mageofdoom = {
				name = 'Mage of Doom',
				text = {
					'Gains {X:mult,C:white}X#1#{} Mult if {C:attention}played hand{}',
					'contains a {C:attention}Pair{}',
					'{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult){}',
				},
			},
			j_hmlt_knightofblood = {
				name = 'Knight of Blood',
				text = {
					'{X:mult,C:white}X#1#{} Mult if {C:attention}played hand{}',
					'contains either a {C:attention}6{} or {C:attention}9{}',
				},
			},
			j_hmlt_rogueofheart = {
				name = 'Rogue of Heart',
				text = {
					'Gains {X:mult,C:white}X#1#{} Mult when other Jokers',
					'that give {X:mult,C:white}XMult{} are triggered',
					'{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)',
				},
			},
			j_hmlt_sylphofspace = {
				name = 'Sylph of Space',
				text = {
					'{X:mult,C:white}X#1#{} Mult if {C:attention}played hand{} contains',
					'a {C:attention}Pair{} and an {C:attention}unscoring{} card',
				},
			},
			j_hmlt_seerofmind = {
				name = 'Seer of Mind',
				text = {
					'Gains {X:mult,C:white}X#1#{} Mult each time a {C:attention}card{}',
					'is drawn {C:attention}face-down{}',
					'{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult){}',
				},
			},
			j_hmlt_thiefoflight = {
				name = 'Thief of Light',
				text = {
					'Gains {X:mult,C:white}X#1#{} Mult for every {C:attention}scored card{}',
					'that has a listed {C:green}chance{}',
					'{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult){}',
				},
			},
			j_hmlt_heirofvoid = {
				name = 'Heir of Void',
				text = {
					'{X:mult,C:white}X#1#{} Mult against {C:attention}Boss Blinds{}',
				},
			},
			j_hmlt_bardofrage = {
				name = 'Bard of Rage',
				text = {
					'{X:mult,C:white}X#1#{} Mult, destroys all {C:attention}unscoring{} cards',
				},
			},
			j_hmlt_princeofhope = {
				name = 'Prince of Hope',
				text = {
					'Gains {X:mult,C:white}X#1#{} Mult if {C:attention}played hand{} is',
					'a {C:attention}single {C:hearts}Hearts {C:attention}card{},',
					'destroys card used',
					'{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)'
				},
			},
			j_hmlt_witchoflife = {
				name = 'Witch of Life',
				text = {
					'{X:mult,C:white}X#1#{} Mult if {C:attention}played hand{}',
					'contains only {C:attention}face cards{}',
				},
			},
			j_hmlt_breath = {
				name = 'Breath',
				text = {
					'{C:attention}+#1# shop slot{}',
					'{C:attention}+#1# booster slot{}',
					'{C:attention}+#1# voucher slot{}',
				},
			},
			j_hmlt_time = {
				name = 'Time',
				text = {
					'{X:mult,C:white}X#1#{} Mult if {C:attention}played hand{}',
					'has at least {C:attention}#2# scoring cards{}',
				},
			},
			j_hmlt_light = {
				name = 'Light',
				text = {
					'{C:attention}Lucky Cards{} are {C:attention}retriggered{}',
					'{C:attention}#1#{} times when {C:attention}played',
				},
			},
			j_hmlt_space = {
				name = 'Space',
				text = {
					'When {C:attention}first hand{} is drawn,',
					'create a {C:attention}playing card{}',
					'with a random {C:edition}Edition{}',
				},
			},
			j_hmlt_life = {
				name = 'Life',
				text = {
					'Creates a random {C:rare}Rare{} Joker',
					'when {C:attention}Boss Blind{} is selected',
				},
			},
			j_hmlt_hope = {
				name = 'Hope',
				text = {
					'Tarot cards have {C:attention}twice{} the effect',
					'and {C:attention}twice{} the probability',
					'{C:inactive}(When applicable){}',
				},
			},
			j_hmlt_void = {
				name = 'Void',
				text = {
					'{C:attention}+#1# joker slot, +#1# consumable slot,{}',
					'{C:attention}+#1# hand size, +#1# card selection limit{}',
				},
			},
			j_hmlt_heart = {
				name = 'Heart',
				text = {
					'{C:green}#1# in #2# chance{} when {C:attention}Booster Pack{} opened',
					'to create a {C:legendary}Soul{} {C:spectral}Spectral{} card',
					'{C:inactive}(Must have room){}',
				},
			},
			j_hmlt_rage = {
				name = 'Rage',
				text = {
					'Gains {X:mult,C:white}X#1#{} Mult when',
					'any {C:attention}Booster Pack{} is skipped',
					'{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult){}',
				},
			},
			j_hmlt_doom = {
				name = 'Doom',
				text = {
					'Saves you from death...',
					'{C:attention}Once.{}',
				},
			},
			j_hmlt_blood = {
				name = 'Blood',
				text = {
					'{C:spectral}Spectral Cards{} have',
					'{C:attention}no negative effects{}',
				},
			},
			j_hmlt_mind = {
				name = 'Mind',
				text = {
					'{C:attention}Steel Cards{} held in hand',
					'gain {C:attention}Red Seals{} when hand played',
				},
			},
		},
		Enhanced = {
			m_hmlt_blank = {
				name = 'Blank',
				text = {
					'{C:chips}+#1#{} Chips when played',
					'{C:chips}+#2#{} Chips when held in hand',
					'no rank, any suit',
				},
			},
		},
		Other = {
			hmlt_br_st = {
				name = 'Breath',
				text = {
					'{C:attention}+#1#{} card selection limit',
					'when card {C:attention}held{} in hand',
				},
			},
			hmlt_ti_st = {
				name = 'Time',
				text = {
					'{X:mult,C:white}X#1#{} Mult when {C:attention}played hand{}',
					'has {C:attention}5 or more',
					'{C:attention}scoring cards{}',
				},
			},
			hmlt_li_st = {
				name = 'Light',
				text = {
					'Card cannot be drawn {C:attention}face down{}',
				},
			},
			hmlt_sp_st = {
				name = 'Space',
				text = {
					'Card levels up played {C:attention}poker hand{}',
					'when {C:attention}played{} and {C:attention}scoring{}',
				},
			},
			hmlt_life_st = {
				name = 'Life',
				text = {
					'Card cannot be {C:attention}destroyed{}',
				},
			},
			hmlt_ho_st = {
				name = 'Hope',
				text = {
					'Card is always drawn to {C:attention}first hand{}',
				},
			},
			hmlt_vo_st = {
				name = 'Void',
				text = {
					'{C:attention}+#1#{} hand size',
					'when card {C:attention}held{} in hand',
				},
			},
			hmlt_he_st = {
				name = 'Heart',
				text = {
					'Card is copied when {C:attention}first card{}',
					'in {C:attention}scored hand{}',
				},
			},
			hmlt_bl_st = {
				name = 'Blood',
				text = {
					'{C:chips}Chips{} and {C:mult}Mult{} are {C:attention}balanced{}',
					'when card is {C:attention}scored{}',
				},
			},
			hmlt_mi_st = {
				name = 'Mind',
				text = {
					'When card is {C:attention}scored{},',
					'all {C:attention}scoring cards{} are {C:attention}retriggered{}',
					'{C:inactive}(Does not retrigger other',
					'{C:inactive}cards with {C:attention}Mind{} {C:inactive}Stickers)',
				},
			},
			hmlt_do_st = {
				name = 'Doom',
				text = {
					'Card has a {C:green}#1# in #2#{} chance of being destroyed',
					'when card is {C:attention}played{} and {C:attention}unscoring{}',
				},
			},
			hmlt_ra_st = {
				name = 'Rage',
				text = {
					'{X:chips,C:white}X#1#{} Chips when card {C:attention}held{} in hand',
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_hmlt_player = 'Player',
			k_hmlt_aspect = 'Aspect',
			k_hmlt_godtier = 'God Tier',
			hmlt_extinct = 'Ascended!',
			hmlt_safe = 'Happen!',
			hmlt_summon = 'Life!',
			hmlt_upgrade = 'Bunp!',
			hmlt_steal = 'Steal!',
			hmlt_hand_bl_hand = '',
			k_hmlt_doom = 'Last Chance...',
		},
		poker_hands = {
			['hmlt_bl_hand'] = '',
		},
		poker_hand_descriptions = {
			['hmlt_bl_hand'] = {
				'5 blank cards',
			},
		},
		labels = {
			hmlt_br_st = 'Breath',
			hmlt_ti_st = 'Time',
			hmlt_sp_st = 'Space',
			hmlt_li_st = 'Light',
			hmlt_life_st = 'Life',
			hmlt_ho_st = 'Hope',
			hmlt_vo_st = 'Void',
			hmlt_he_st = 'Heart',
			hmlt_bl_st = 'Blood',
			hmlt_do_st = 'Doom',
			hmlt_mi_st = 'Mind',
			hmlt_ra_st = 'Rage',
			k_hmlt_player = 'Player',
			k_hmlt_aspect = 'Aspect',
			k_hmlt_godtier = 'God Tier',
		},
	},
}

