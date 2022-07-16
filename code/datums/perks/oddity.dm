/datum/perk/oddity
	gain_text = "You feel different. Exposure to oddities has changed you. Now you can't go back."

/datum/perk/oddity/toxic_revenger
	name = "Fungal Host"
	desc = "A small hostile fungal spores were on the oddity, hijacking your lungs and forcing them to emit toxins harmful to everyone around you every half hour. It will be a long time before your body can fight this off..."
	gain_text = "You feel a terrible aching pain in your lungs - an anomalous fungus on the oddity has infused your body!"
	//icon_state = "Hazmat" // https://game-icons.net
	var/cooldown = 30 MINUTES
	var/initial_time

/datum/perk/oddity/toxic_revenger/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time

/datum/perk/oddity/toxic_revenger/on_process()
	if(!..())
		return
	if(holder.species.flags & NO_BREATHE || holder.internal)
		return
	if(world.time < initial_time + cooldown)
		return
	initial_time = world.time
	for(var/mob/living/carbon/human/H in viewers(5, holder))
		if(H.stat == DEAD || H.internal || H.stats.getPerk(PERK_TOXIC_REVENGER) || H.species.flags & NO_BREATHE)
			continue
		if(H.head?.item_flags & BLOCK_GAS_SMOKE_EFFECT || H.wear_mask?.item_flags & BLOCK_GAS_SMOKE_EFFECT || BP_IS_ROBOTIC(H.get_organ(BP_CHEST)))
			continue

		H.reagents?.add_reagent("toxin", 5)
		H.emote("cough")
		to_chat(H, SPAN_WARNING("[holder] emits a strange smell."))

/datum/perk/oddity/gunslinger
	name = "Gunslinger"
	desc = "The latent effects of an oddity have granted you an insight into firing bullets faster than anyone else; a shame it doesn't make you immune to recoil."
	gain_text = "Your trigger finger feels more relaxed than ever..."
	//icon_state = "dual_shot" // https://game-icons.net/1x1/delapouite/bullet-impacts.html

/datum/perk/oddity/balls_of_plasteel
	name = "True Grit"
	desc = "Pain comes and goes, you feel as though can withstand far worse than ever before."
	gain_text = "Pain is merely weakness leaving the body."
	//icon_state = "golem" // https://game-icons.net

/datum/perk/oddity/fast_walker
	name = "Springheel"
	desc = "You're sure of your movements now, slow and steady may win the race but you can prove them wrong."
	gain_text = "You feel your pace quickening, your thoughts barely catching up with your stride..."
	//icon_state = "fast" // https://game-icons.net/1x1/delapouite/fast-forward-button.html

/datum/perk/oddity/harden
	name = "Natural Armor"
	desc = "Your skin has become harder, more durable, able to accept blunt force and endure."
	gain_text = "After all you've endured, you can't help but feel tougher than normal, your skin feels like iron."
	//icon_state = "" // - No icon, suggestion - Riot Shield?

/datum/perk/oddity/harden/assign(mob/living/carbon/human/H)
	..()
	holder.brute_mod_perk -= 0.1 // One third of subdermal armor
	holder.mob_bomb_defense += 5
	holder.falls_mod -= 0.2

/datum/perk/oddity/harden/remove()
	holder.brute_mod_perk += 0.1
	holder.mob_bomb_defense -= 5
	holder.falls_mod += 0.2
	..()

/datum/perk/oddity/thin_skin
	name = "Thin Skin"
	desc = "The anomaly has weakened your skin, making you less resistant to blunt trauma."
	gain_text = "You feel yourself growing softer...Did everything always hurt this much?"
	//icon_state = "" // - No icon, suggestion - Paper?

/datum/perk/oddity/thin_skin/assign(mob/living/carbon/human/H)
	..()
	holder.brute_mod_perk += 0.1
	holder.mob_bomb_defense -= 5
	holder.falls_mod += 0.2

/datum/perk/oddity/thin_skin/remove()
	holder.brute_mod_perk -= 0.1 // One third of subdermal armor
	holder.mob_bomb_defense += 5
	holder.falls_mod -= 0.2
	..()

/datum/perk/oddity/better_toxins
	name = "Toxic Resistance"
	desc = "You've been exposed to something toxic, yet your body fought it off and is now strengthened against poisoning as a result."
	gain_text = "What doesn't kill you, helps you survive it better."
	//icon_state = "" // - No icon, suggestion - Anti toxin needle?

/datum/perk/oddity/better_toxins/assign(mob/living/carbon/human/H)
	..()
	holder.toxin_mod_perk -= 0.1 //Might be to high...

/datum/perk/oddity/better_toxins/remove()
	holder.toxin_mod_perk += 0.1
	..()

/datum/perk/oddity/shell_shock
	name = "Shell Shock"
	desc = "Why are you not getting better at fighting? Why do mere roaches keep tumbling you down? Your body is weakened by self doubt and despair..."
	gain_text = "Things just get harder and harder..."
	//icon_state = "" // - No icon, suggestion, old knife?

/datum/perk/oddity/shell_shock/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_ROB, -5)
	holder.stats.changeStat(STAT_TGH, -5)
	holder.stats.changeStat(STAT_VIG, -5)

/datum/perk/oddity/shell_shock/remove()
	holder.stats.changeStat(STAT_ROB, 5)
	holder.stats.changeStat(STAT_TGH, 5)
	holder.stats.changeStat(STAT_VIG, 5)
	..()

/datum/perk/oddity/failing_mind
	name = "Failing Mind"
	desc = "The mind fogs, blanking out, always distracted. Did that anomaly make you dumber, or where you always like this?"
	gain_text = "The world is not as clear as it once was."
	//icon_state = "" // - No icon, suggestion, old newspaper?

/datum/perk/oddity/failing_mind/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_COG, -5)
	holder.stats.changeStat(STAT_MEC, -5)
	holder.stats.changeStat(STAT_BIO, -5)

/datum/perk/oddity/failing_mind/remove()
	holder.stats.changeStat(STAT_COG, 5)
	holder.stats.changeStat(STAT_MEC, 5)
	holder.stats.changeStat(STAT_BIO, 5)
	..()

/datum/perk/oddity/snackivore
	name = "Snackivore"
	desc = "The secret of the lounge lizards! Your body adapts to eating the worse kind of food in existence, allowing you to draw an exceptional amount of nutrition from snack foods. More so \
	it passively heals you like tricord, with pure toxins healing you the most. Rejoice trash mammals!"
	passivePerk = TRUE

/datum/perk/oddity/sharp_mind
	name = "Sharpened Mind"
	desc = "Narrowing in and extrapolating the inner workings of the world has never felt so much easier."
	gain_text = "The mind can over come any puzzle thrown at it!"
	//icon_state = "" // - No icon, suggestion, detective glass?

/datum/perk/oddity/sharp_mind/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_COG, 5)
	holder.stats.changeStat(STAT_MEC, 5)
	holder.stats.changeStat(STAT_BIO, 5)

/datum/perk/oddity/sharp_mind/remove()
	holder.stats.changeStat(STAT_COG, -5)
	holder.stats.changeStat(STAT_MEC, -5)
	holder.stats.changeStat(STAT_BIO, -5)
	..()

/datum/perk/oddity/strangth
	name = "Inner Strength"
	desc = "You're more keenly aware of your own abilities for combat. You feel more confident on your punches thrown, a bit tougher against those thrown at you, and you're starting to get the hang of shooting that one bulky gun..."
	gain_text = "The blood pumps, the muscles harden, and your trigger finger feels easier than ever..."
	//icon_state = "" // - No icon, suggestion, detective glass?

/datum/perk/oddity/strangth/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_ROB, 5)
	holder.stats.changeStat(STAT_TGH, 5)
	holder.stats.changeStat(STAT_VIG, 5)

/datum/perk/oddity/strangth/remove()
	holder.stats.changeStat(STAT_ROB, -5)
	holder.stats.changeStat(STAT_TGH, -5)
	holder.stats.changeStat(STAT_VIG, -5)
	..()

/datum/perk/oddity/iron_will
	name = "Will of Iron"
	desc = "The body is able to succumb to many negative affects but the mind can simply ignore them. Getting addicted to things is much harder and you can stomach more chemicals."
	//icon_state = "ironpill" // https://game-icons.net/1x1/lorc/underdose.html

/datum/perk/oddity/iron_will/assign(mob/living/carbon/human/H)
	..()
	holder.metabolism_effects.addiction_chance_multiplier = 0.2
	holder.metabolism_effects.nsa_bonus += 20
	holder.metabolism_effects.calculate_nsa()

/datum/perk/oddity/iron_will/remove()
	holder.metabolism_effects.addiction_chance_multiplier = 1
	holder.metabolism_effects.nsa_bonus -= 20
	holder.metabolism_effects.calculate_nsa()
	..()

/datum/perk/oddity/mind_of_matter
	name = "Will to Power"
	desc = "The mind protects the body by imposing limits to prevent severe harm to the self. With enough focus, you can push yourself past that limit."
	//icon_state = "ironpill" // https://game-icons.net/1x1/lorc/underdose.html

/datum/perk/oddity/mind_of_matter/assign(mob/living/carbon/human/H)
	..()
	holder.maxHealth += 20
	holder.health += 20

/datum/perk/oddity/mind_of_matter/remove()
	holder.maxHealth -= 20
	holder.health -= 20
	..()

///////////////////////////////////////
//////// JOB ODDITYS PERKS ////////////
///////////////////////////////////////

/datum/perk/nt_oddity
	gain_text = "The Absolute chose you to expand his will."

/datum/perk/nt_oddity/holy_light
	name = "Holy Light"
	desc = "You have been blessed by the grace of the Absolute. You now provide a weak healing aura, healing both brute and burn damage to any cruciform bearers nearby as well as yourself."
	//icon_state = "third_eye"  //https://game-icons.net/1x1/lorc/third-eye.html
	var/healing_power = 0.1
	var/cooldown = 1 SECONDS // Just to make sure that perk don't go berserk.
	var/initial_time

/datum/perk/nt_oddity/holy_light/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time

/datum/perk/nt_oddity/holy_light/on_process()
	if(!..())
		return
	if(!holder.get_core_implant(/obj/item/implant/core_implant/cruciform))
		return
	if(world.time < initial_time + cooldown)
		return
	initial_time = world.time
	for(var/mob/living/L in viewers(holder, 7))
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			if(H.stat == DEAD || !(H.get_core_implant(/obj/item/implant/core_implant/cruciform)))
				continue
			H.adjustBruteLoss(-healing_power)
			H.adjustFireLoss(-healing_power)

/datum/perk/bluespace
	name = "Bluespace Alinement"
	desc = "The sci tool is taxing on the mind but rewarding... Along with some other side affects..."
	gain_text = "With such much look and inside into stablizing bluespace you cant help but feel its affects."
	lose_text = "Time cures all."
	//icon_state = "" // - No icon, suggestion, vortex?
	var/initial_time

/datum/perk/bluespace/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time
	cooldown_time = world.time + rand(20, 60) MINUTES
	holder.stats.changeStat(STAT_COG, 5) //We keep this 5 per use
	if(!H.stats?.getPerk(PERK_SI_SCI) && prob(60))
		GLOB.bluespace_entropy += rand(80, 150) //You done fucked it up.
	if(H.stats?.getPerk(PERK_SI_SCI) && prob(50))
		GLOB.bluespace_entropy -= rand(20, 30) //High odds to do even better!
	GLOB.bluespace_entropy -= rand(30, 50)

/datum/perk/bluespace/remove(mob/living/carbon/human/H)
	if(!H.stats?.getPerk(PERK_SI_SCI) && prob(30))
		GLOB.bluespace_entropy += rand(80, 150)
	if(H.stats?.getPerk(PERK_SI_SCI) && prob(50))
		GLOB.bluespace_entropy -= rand(20, 30)
	GLOB.bluespace_entropy += rand(30, 50)
	..()

/datum/perk/bluespace/on_process()
	if(!..())
		return
	if(cooldown_time <= world.time)
		holder.stats.removePerk(type)
		to_chat(holder, SPAN_NOTICE("[lose_text]"))
		return
	if(holder.buckled)
		cooldown_time -= 5 SECONDS //Resting grately speeds this up

/datum/perk/guild/blackbox_insight
	name = "Blackbox Tinkering"
	desc = "It's sleek contours, the expert craftsmanship... The best of hand-made mechanical genius."
	gain_text = "What wondrous possibilities..."
	//icon_state = "" // - No icon, suggestion, detective glass?

/datum/perk/guild/blackbox_insight/assign(mob/living/carbon/human/H)
	..()
	holder.stats.changeStat(STAT_COG, 15)
	holder.stats.changeStat(STAT_MEC, 15)

/datum/perk/guild/blackbox_insight/remove()
	holder.stats.changeStat(STAT_COG, -10) //we keep 5 of each
	holder.stats.changeStat(STAT_MEC, -10)
	..()

