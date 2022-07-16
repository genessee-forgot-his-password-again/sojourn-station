//Perks for racial options, make sure to keep this organized.
//Perks can be both active and passive.


/////////////////////////////////////Sablekyne perks
/datum/perk/laststand
	name = "Last Stand"
	desc = "As a sablekyne your body is a tank, through will and biology you can ignore pain entirely for a short amount of time."
	active = FALSE
	passivePerk = FALSE

/datum/perk/laststand/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your nerves are shot, you'll need to recover before you can withstand greater pain again."))
		return FALSE
	cooldown_time = world.time + 15 MINUTES
	user.visible_message("<b><font color='red'>[user] begins growling as their muscles tighten!</font><b>", "<b><font color='red'>You feel a comfortable warmth as your body steels itself against all pain.</font><b>", "<b><font color='red'>You hear something growling!</font><b>")
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("sabledone", 10)
	return ..()

/datum/perk/bone
	name = "Bone Plated"
	desc = "All sablekyne are covered in bone-like plating across various parts of the body, this layer of natural armor along the shins, thighs, fore-arms, and shoulders allow you to absorb impacts better than anyone, adding a further tolerance to pain."
	//icon_state = "" // - No icon, suggestion - Riot Shield?

/datum/perk/brawn
	name = "Brawny Build"
	desc = "All sablekyne are stocky and built wide, your brawny build and low center of gravity gives you exceptional balance. Few beasts can knock you down and not even the strongest men can push you over."
	//icon_state = "muscular" // https://game-icons.net

/datum/perk/brawn/assign(mob/living/carbon/human/H)
	..()
	holder.mob_bump_flag = HEAVY

/datum/perk/brawn/remove()
	holder.mob_bump_flag = ~HEAVY
	..()

///////////////////////////////////////Mar'qua perks
/datum/perk/suddenbrilliance
	name = "Sudden Brilliance"
	desc = "Your intelligence is above the 'lesser races' and even the humblest of Mar'qua can prove it easily in moments of focus. Use this to center your thoughts and increase all your mental abilities."
	active = FALSE
	passivePerk = FALSE

/datum/perk/suddenbrilliance/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You are mentally exhausted, you'll need more rest before you can attempt greater thought."))
		return FALSE
	cooldown_time = world.time + 25 MINUTES
	user.visible_message("[user] suddenly looks lost in thought, their focus elsewhere for a moment.", "You clear your mind and feel your thoughts focusing into a single stream of brilliance.", "You hear the calming silence, as if someone nearby is thinking deeply.")
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("marquatol", 10)
	return ..()

/datum/perk/inspired
	name = "Inspired Intellect"
	desc = "Even the most humble Mar'qua is capable of study and extrapolation, your natural intellect allows you to become gain inspiration more easily."

/datum/perk/alien_nerves
	name = "Adapted Nervous System"
	desc = "A mar'qua's nervous system has long since adapted to the use of stimulants, chemicals, and different toxins. Unlike lesser races, you can handle a wide variety of chemicals before showing any side effects and you'll never become addicted."

/datum/perk/alien_nerves/assign(mob/living/carbon/human/H)
	..()
	holder.metabolism_effects.addiction_chance_multiplier = 0
	holder.metabolism_effects.nsa_bonus += 300
	holder.metabolism_effects.calculate_nsa()

/datum/perk/alien_nerves/remove()
	holder.metabolism_effects.addiction_chance_multiplier = 1
	holder.metabolism_effects.nsa_bonus -= 300
	holder.metabolism_effects.calculate_nsa()
	..()

//////////////////////////////////////Human perks
/datum/perk/tenacity
	name = "Tenacity"
	desc = "When everything looks grim, you can muster a moment of bravado, reminding yourself that you ain't got time to bleed. You toughen up your metabolism, allowing you to ignore some of your pain, while stopping your bleeding and slightly healing your wounds."
	active = FALSE
	passivePerk = FALSE

/datum/perk/tenacity/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("The human body can only take so much, you'll need more time before you've recovered enough to use this again."))
		return FALSE
	cooldown_time = world.time + 15 MINUTES
	user.visible_message("[user] grits their teeth and begins breathing slowly.", "You grit your teeth and remind yourself you ain't got time to bleed!")
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("adrenol", 5)
	return ..()

/datum/perk/iwillsurvive
	name = "Will to Survive"
	desc = "You push your primal desire to keep living to its limit, letting your body recover slightly from any internal damage out of sheer force of will at the cost of becoming extremely exhausted while it works."
	active = FALSE
	passivePerk = FALSE

/datum/perk/iwillsurvive/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("The human body can only take so much punishment, you'll need more time before you've recovered enough to use this again."))
		return FALSE
	cooldown_time = world.time + 30 MINUTES
	user.visible_message("[user] closes their eyes and takes a deep breath, slowing down as they focus on recovering!", "You feel exhausted as you slow down to let your body recover, focusing on controlling your breathing while your body slowly mends some of your internal damage.")
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("hustim", 5)
	return ..()


/datum/perk/slymarbo
	name = "Inspiring Battlecry"
	desc = "Life has taught you that beyond sheer force of will, what made your kind conquer the stars was also a sense of camaraderie and cooperation among your battle brothers and sisters. Your heroic warcry can inspire yourself and others to better performance in combat."
	active = FALSE
	passivePerk = FALSE

/datum/perk/slymarbo/activate()
	var/mob/living/carbon/human/user = usr
	var/list/people_around = list()
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You cannot muster the willpower to have a heroic moment just yet."))
		return FALSE
	cooldown_time = world.time + 30 MINUTES
	log_and_message_admins("used their [src] perk.")
	for(var/mob/living/carbon/human/H in view(user))
		if(H != user && !isdeaf(H))
			people_around.Add(H)
	if(people_around.len > 0)
		for(var/mob/living/carbon/human/participant in people_around)
			to_chat(participant, SPAN_NOTICE("You feel inspired by a heroic shout!"))
			give_boost(participant)
	give_boost(usr)
	usr.emote("urah")
	return ..()

/datum/perk/slymarbo/proc/give_boost(mob/living/carbon/human/participant)
	var/effect_time = 2 MINUTES
	var/amount = 10
	var/list/stats_to_boost = list(STAT_ROB = 10, STAT_TGH = 10, STAT_VIG = 10)
	for(var/stat in stats_to_boost)
		participant.stats.changeStat(stat, amount)
		addtimer(CALLBACK(src, .proc/take_boost, participant, stat, amount), effect_time)

/datum/perk/slymarbo/proc/take_boost(mob/living/carbon/human/participant, stat, amount)
	participant.stats.changeStat(stat, -amount)


//////////////////////////////////////Kriosan perks
/datum/perk/enhancedsenses
	name = "Enhance Senses"
	desc = "You're a predator at heart and have the senses to match, for a short time your body toughens and your aim improves drastically as your senses enhance."
	active = FALSE
	passivePerk = FALSE

/datum/perk/enhancedsenses/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You haven't quite recovered yet, your senses need more time before you may use this again."))
		return FALSE
	cooldown_time = world.time + 15 MINUTES
	user.visible_message("<b><font color='red'>[user] sneers lightly as their pupils dilate and tension builds in their body!</font><b>", "<b><font color='red'>You feel your senses focusing, sound becomes crystal clear and your reflexes as fluid as water.</font><b>")
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("kriotol", 5)
	return ..()

/datum/perk/exceptional_aim
	name = "Instinctual Skill"
	desc = "All kriosans understand the dynamics of shooting, to such a degree that guns are more extensions to one's hand than weapon. You take no penalty when firing any range weapon one handed."

////////////////////////////////////////Akula perks
/datum/perk/recklessfrenzy
	name = "Reckless Frenzy"
	desc = "Your body is powerful and strong when you succumb to instinct, but doing so leaves you without much higher reasoning for a short time. The rush of chemicals is also highly addictive \
	and often times will leave your body weaker for a short time."
	active = FALSE
	passivePerk = FALSE

/datum/perk/recklessfrenzy/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your body has been taxed to its limits, you need more time to recover before using this ability again."))
		return FALSE
	cooldown_time = world.time + 15 MINUTES
	user.visible_message("<b><font color='red'>[user] lets out deep guttural growl as their eyes glaze over!</font><b>", "<b><font size='3px'><font color='red'>You abandon all reason as your sink into a blood thirsty frenzy!</font><b>", "<b><font color='red'>You hear a terrifying roar!</font><b>")
	playsound(usr.loc, 'sound/voice/akularoar.ogg', 50, 1)
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("robustitol", 5)
	return ..()

/datum/perk/iron_flesh
	name = "Iron Flesh"
	desc = "Akula scales are not only tough and resistant to damage but exceptionally skilled at naturally forcing out embedded objects that somehow punch through. You'll never get a bullet nor object stuck inside when hit."


////////////////////////////////////////Naramad perks
/datum/perk/adrenalineburst
	name = "Adrenaline Burst"
	desc = "Naramads are built for extreme speed, be it for charging forward and retreating back."
	active = FALSE
	passivePerk = FALSE

/datum/perk/adrenalineburst/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your legs ache, you'll need more time to recover before using this again."))
		return FALSE
	cooldown_time = world.time + 15 MINUTES
	user.visible_message("[user] begins breathing much quicker as they let out a merp!", "You feel your heart rate increasing rapidly as everything seems to speed up and you let out an excited merp!", "You hear a loud merp...")
	playsound(usr.loc, 'sound/voice/merp.ogg', 50, 1)
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("naratonin", 5)
	return ..()

/datum/perk/stay_hydrated
	name = "Hydration Reliance"
	desc = "Naramad have adapted biology heavily reliant on the intake of fluids, in particular clean clear water. Drinking purified water, even tap water, heals your body slowly, as if you drank tricordizine!"

/datum/perk/born_warrior
	name = "Born Warrior"
	desc = "No matter their background all naramadi are capable bringing any object to bear as a weapon, be it bladed or blunt. Unlike other races your grip is iron and you'll never lose your weapon through embedding it in an enemy."

/////////////////////////////////////////Cindarite perks
/datum/perk/purgetoxins
	name = "Purge Toxins"
	desc = "You force your body to begin the process of removing toxins from your blood. All toxins, addictions, and stimulants are slowly purged while any toxin damage to your liver or body is healed but the effect leaves you exhausted."
	active = FALSE
	passivePerk = FALSE

/datum/perk/purgetoxins/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your body aches with the pain of its recent purge, you'll need more rest before using this effect again."))
		return FALSE
	cooldown_time = world.time + 15 MINUTES
	user.visible_message("[user] shivers slightly as they begin to slow down.", "You start to feel quite chilly and tired as your body begins purging toxins within your blood.")
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("cindpetamol", 5)
	return ..()

/datum/perk/purgeinfections
	name = "Uncanny Resiliance"
	desc = "Your body is adept not only at curing toxins and regulating its blood flow but also fighting off infections and disease in any form. All infections within you are slowly cured and diseases progression slowed if not outright cured, similar to as if you were injected with spaceacillin. Severe infections or late stage diseases may still need additional medical aid and this cannot restore necrotic tissue."
	active = FALSE
	passivePerk = FALSE

/datum/perk/purgeinfections/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your chemical sacks have not refilled yet, you'll need more rest before using this effect again."))
		return FALSE
	cooldown_time = world.time + 30 MINUTES
	user.visible_message("[user] shivers slightly before taking a deep breath.", "You shiver slightly and take a deep breath before willing your bodies chemical sacks to open and begin purging infections.")
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("cindicillin", 5)
	return ..()

/datum/perk/second_skin
	name = "Second Skin"
	desc = "Cindarites, be they bunker born or spacers, are used to wearing bulky enviromental suits. This life time of being acclimated to heavy clothing has become a second skin for many, allowing you to remove clothing instantly and never suffer slowdown from heavy armor."

///////////////////////////////////////////Opifex perks
/datum/perk/opifex_backup
	name = "Smuggled Tools"
	desc = "You retrieve your custom made quality tools hidden on your person somewhere, along with the opifex-made black webbing vest that holds them. As every opifex is told, never go anywhere without your kit. This kit is also yours alone and a specialized suite of tools, unless you're upgrading to new tools you should not ever sell or give these away."
	active = FALSE
	passivePerk = FALSE

/datum/perk/opifex_backup/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You've already retrieved your set of back up tools. You didn't lose them, did you?"))
		return FALSE
	cooldown_time = world.time + 12 HOURS
	to_chat(usr, SPAN_NOTICE("You discreetly and stealthily slip your back up tools out from their hiding place, the webbing unfolds as it quietly flops to the floor."))
	log_and_message_admins("used their [src] perk.")
	new /obj/item/storage/belt/utility/opifex/full(usr.loc)
	spawn(20) holder.stats.removePerk(src.type) // Delete the perk
	return ..()

/datum/perk/opifex_backup_medical
	name = "Smuggled Medicine"
	desc = "You retrieve your custom kitted medical webbing hidden on your person somewhere, along with the opifex-made black webbing vest that holds them. As every opifex is told, never go anywhere without your kit. This tool belt is yours alone and you should not allow any non-opifex to use it."
	active = FALSE
	passivePerk = FALSE


/datum/perk/opifex_backup_medical/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You've already retrieved your set of backup medicine. You didn't lose them, did you?"))
		return FALSE
	cooldown_time = world.time + 12 HOURS
	to_chat(usr, SPAN_NOTICE("You discreetly and stealthily slip your back up webbing out from their hiding place, the webbing unfolds as it quietly flops to the floor."))
	log_and_message_admins("used their [src] perk.")
	new /obj/item/storage/belt/medical/opifex/full(usr.loc)
	spawn(20) holder.stats.removePerk(src.type) // Delete the perk
	return ..()


/datum/perk/opifex_backup_combat
	name = "Smuggled Armaments"
	desc = "You retrieve your custom kitted combat belt hidden on your person somewhere, along with the opifex-made black webbing vest that holds them. As every opifex is told, never go anywhere without your kit. This tool belt is yours alone and you should not allow any non-opifex to use it, nor the weapons within."
	active = FALSE
	passivePerk = FALSE

/datum/perk/opifex_backup_combat/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You've already retrieved your set of backup weapons. You didn't lose them, did you?"))
		return FALSE
	cooldown_time = world.time + 12 HOURS
	to_chat(usr, SPAN_NOTICE("You discreetly and stealthily slip your back up belt out from their hiding place, the webbing unfolds as it quietly flops to the floor."))
	log_and_message_admins("used their [src] perk.")
	new /obj/item/storage/belt/security/tactical/opifex/full(usr.loc)
	spawn(20) holder.stats.removePerk(src.type) // Delete the perk
	return ..()

/datum/perk/opifex_turret
	name = "Smuggled Circuit"
	desc = "Opifex are scavengers at heart and rely heavily on machines and AI as a result, as such, each opifex keeps a specially designed circuit on their person to build a make shift defense platform when needed to secure their safety. Sadly, you only managed to smuggle the circuit on your person."
	active = FALSE
	passivePerk = FALSE

/datum/perk/opifex_turret/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You've already retrieved your scrap circuit. You didn't lose it, did you?"))
		return FALSE
	cooldown_time = world.time + 12 HOURS
	to_chat(usr, SPAN_NOTICE("You discreetly and stealthily slip your smuggled circuit out from their hiding place, the plastic and metal device clattering on the floor."))
	log_and_message_admins("used their [src] perk.")
	new /obj/item/circuitboard/artificer_turret/opifex(usr.loc)
	spawn(20) holder.stats.removePerk(src.type) // Delete the perk
	return ..()

/datum/perk/opifex_patchkit
	name = "Smuggled Patch Kit"
	desc = "Every opifex carries their own personal IFAK stashed somewhere. Being practical is the best option, after all, and the colony is a dangerous place."
	active = FALSE
	passivePerk = FALSE

/datum/perk/opifex_patchkit/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You've already retrieved your patch kit. You didn't lose it, did you?"))
		return FALSE
	cooldown_time = world.time + 12 HOURS
	to_chat(usr, SPAN_NOTICE("You discreetly and stealthily slip your smuggled patch kit out from their hiding place, the cloth pouch clattering on the floor."))
	log_and_message_admins("used their [src] perk.")
	new /obj/item/storage/firstaid/ifak(usr.loc)
	spawn(20) holder.stats.removePerk(src.type) // Delete the perk
	return ..()

////////////////////////////////////////////Cht'mant perks
/datum/perk/spiderfriend
	name = "Kin to the Spiders"
	desc = "Through a combination of pheromones, appearance, and an innate understanding of spider behavior all spiders are friendly to you, they won't attack you even if you attack them. This change \
	in your biology and pheromones however make you an enemy to roaches. As a side effect of dealing with spiders so often, you can't be slowed or stuck by webbing."
	//icon_state = "muscular" // https://game-icons.net

/datum/perk/spiderfriend/assign(mob/living/carbon/human/H)
	..()
	holder.faction = "spiders"

/datum/perk/spiderfriend/remove()
	holder.faction = "neutral"
	..()

/datum/perk/webmaker
	name = "Spin Webs"
	desc = "You can spin webs, spreading them around a location as a form of snaring barricade."
	active = FALSE
	passivePerk = FALSE

/datum/perk/webmaker/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("You need a bit more time to build up your web reserves!"))
		return FALSE
	cooldown_time = world.time + 5 SECONDS
	user.visible_message("[user] begins secreting and spreading web material around them.", "You begin secreting and spreading your webbing around.", "You hear an uncomfortable chittering noise.")
	//log_and_message_admins("used their [src] perk.") //commented out due to spam in the logs.
	new /obj/effect/spider/stickyweb/chtmant(usr.loc)
	return ..()

/datum/perk/ichor
	name = "Produce Ichor"
	desc = "As a member of the Ru caste your ability to produce chemicals is well known, though it takes an hour to recover and much of your nutritional in-take you can produce clumped ichors that function as medical kits."
	active = FALSE
	passivePerk = FALSE

/datum/perk/ichor/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your body hasn't finished recovering, you will need to wait a bit longer."))
		return FALSE
	if(usr.nutrition <= 350)
		to_chat(usr, SPAN_NOTICE("You do not have enough nutrition to produce more ichor, find things to eat!"))
		return FALSE
	cooldown_time = world.time + 1 HOURS
	usr.nutrition -= 350
	user.visible_message("<b><font color='red'>[user] vomits different colored slime onto the floor!</font><b>", "<b><font color='red'>You vomit out your healing ichors onto the floor!</font><b>", "<b><font color='red'>You hear a retching noise!</font><b>")
	log_and_message_admins("used their [src] perk.")
	playsound(usr.loc, 'sound/effects/blobattack.ogg', 50, 1)
	new /obj/item/stack/medical/advanced/bruise_pack/mending_ichor(usr.loc)
	new /obj/item/stack/medical/advanced/ointment/regenerative_ichor(usr.loc)
	new /obj/item/stack/ichor/purging_ichor(usr.loc)
	return ..()

/datum/perk/chitinarmor
	name = "Chitin Armor"
	desc = "Unlike other caste in the cht'mant hive you are built for combat, while not as naturally tough as other species you can tank a few more blows than your softer insectile brethren."
	//icon_state = "" // - No icon, suggestion - Riot Shield?

/datum/perk/chitinarmor/assign(mob/living/carbon/human/H)
	..()
	holder.brute_mod_perk -= 0.15 // Reduces total brute damage to +10% **taken** instead of +25%
	holder.mob_bomb_defense += 5
	holder.falls_mod -= 0.2

/datum/perk/chitinarmor/remove()
	holder.brute_mod_perk += 0.15
	holder.mob_bomb_defense -= 5
	holder.falls_mod += 0.2
	..()

/datum/perk/scuttlebug
	name = "Scuttlebug"
	desc = "While your definitive purpose is not as clearly defined as other castes within the cht'mant hive your constant movement and labors have made you quite used to the hustle and bustle, letting you run faster than most races."
	//icon_state = "fast" // https://game-icons.net/1x1/delapouite/fast-forward-button.html

/datum/perk/repair_goo
	name = "Produce Repair Goo"
	desc = "Fixing things is apart of your caste as it is scuttling around keeping yourself busy. As such you can vomit out glue-like goo that functions exceptionally well for tool and general repairs."
	active = FALSE
	passivePerk = FALSE

/datum/perk/repair_goo/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your body hasn't finished recovering, you will need to wait a bit longer."))
		return FALSE
	if(usr.nutrition <= 350)
		to_chat(usr, SPAN_NOTICE("You do not have enough nutrition to produce more goo, find things to eat!"))
		return FALSE
	cooldown_time = world.time + 1 HOURS
	usr.nutrition -= 350
	user.visible_message("<b><font color='red'>[user] vomits a sticky gray tar onto the floor!</font><b>", "<b><font color='red'>You vomit out your repair goo onto the floor!</font><b>", "<b><font color='red'>You hear a retching noise!</font><b>")
	log_and_message_admins("used their [src] perk.")
	playsound(usr.loc, 'sound/effects/blobattack.ogg', 50, 1)
	new /obj/item/tool/tape_roll/repair_goo(usr.loc)
	return ..()

///////////////////////////// Folken Perks

/datum/perk/oddity_reroll
	name = "Modify Oddity"
	desc = "You reach into your understanding of this natural world to alter the latent effects of an oddity, enhancing the properties it has."
	active = FALSE
	passivePerk = FALSE

/datum/perk/oddity_reroll/activate()
	var/mob/living/carbon/human/user = usr
	var/obj/item/oddity/O = user.get_active_hand()
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("The natural forces around you cannot be manipulated just yet."))
		return FALSE
	if(!istype(O, /obj/item/oddity))
		to_chat(usr, SPAN_NOTICE("This isn't the correct kind of oddity!"))
		return FALSE
	cooldown_time = world.time + 45 MINUTES
	user.visible_message("<b><font color='green'>[user] concentrates on the anomaly in their hand, something about it changing in a subtle way.</font><b>", "<b><font color='green'>You focus on the energies around the object, swaying them to your will and enhancing it!</font><b>")
	log_and_message_admins("used their [src] perk.")
	if(O.oddity_stats)
		if(O.random_stats)
			for(var/stat in O.oddity_stats)
				O.oddity_stats[stat] = (rand(1, O.oddity_stats[stat]) + 3)

/datum/perk/folken_healing
	name = "Folken Photo-Healing"
	desc = "As a Folken, you can use the light to heal wounds, standing in areas of bright light will increase your natural regeneration."
	passivePerk = TRUE

/datum/perk/folken_healing/young
	name = "Folken Photo-Healing"
	desc = "As a Folken, you can use the light to heal wounds, standing in areas of bright light will increase your natural regeneration. Due to your comparitively young age, you heal much faster than older folken."
	var/replaced = FALSE // Did it replace the normal folken healing?

/datum/perk/folken_healing/young/assign(mob/living/carbon/human/H)
	..()
	if(holder.stats.getPerk(PERK_FOLKEN_HEALING)) // Does the user has the folken healing perk?
		holder.stats.removePerk(PERK_FOLKEN_HEALING) // Remove the old healing.
		replaced = TRUE

/datum/perk/folken_healing/young/remove()
	if(replaced) // Did the perk replaced the normal healing perk?
		holder.stats.addPerk(PERK_FOLKEN_HEALING) // Give back the replaced perk
	..()

////////////////////////////// Mycus Perks

/datum/perk/dark_heal
	name = "Mycus Regeneration"
	desc = "As a mycus, you heal as long as you are in the darkness, increasing your natural regeneration."
	passivePerk = TRUE

/datum/perk/mushroom_follower
	name = "Spawn Shroomling"
	desc = "Shroomlings are animal-intelligence mycus capable of following simple orders like 'Shroomling 'Name' Follow.' and 'Shroomling 'Name' Stop.' who will stay by you when ordered. While capable of fighting, they are quite weak, the \
	major benefit of having one is they may turn any food you feed into them into useful healing chemicals contained in bottles of resin."
	active = FALSE
	passivePerk = FALSE
	var/used = FALSE // Not deleting after use since the description is useful.
	var/follower_type = /mob/living/carbon/superior_animal/fungi/shroom

/datum/perk/mushroom_follower/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(used)
		to_chat(user, SPAN_NOTICE("You've already created your companion, you didn't lose them did you?"))
		return FALSE
	used = TRUE
	to_chat(usr, SPAN_NOTICE("You grow a follower!"))
	var/mob/living/carbon/superior_animal/fungi/mushroom = new follower_type(user.loc)
	mushroom.friends += user
	mushroom.following = user
	..()

/datum/perk/slime_follower
	name = "Spawn Slime-Mold"
	desc = "Slime-mold shroomlings are animal-intelligence mycus capable of following simple orders like 'Slime-Mold 'Name' Follow.' and 'Slimd-Mold 'Name' Stop.' who will stay by you when ordered. Slime-molds are made for combat, being \
	incredibly sturdy and physically strong, able to regenerate even the worst wounds. Unfortunately they suffer from poor eyesight, requiring threats to get close before they notice them."
	active = FALSE
	passivePerk = FALSE
	var/used = FALSE // Not deleting after use since the description is useful.
	var/follower_type = /mob/living/carbon/superior_animal/fungi/slime

/datum/perk/slime_follower/activate()
	var/mob/living/carbon/human/user = usr

	if(!istype(user))
		return ..()
	if(used)
		to_chat(user, SPAN_NOTICE("You've already created your companion, you didn't lose them did you?"))
		return FALSE
	used = TRUE
	to_chat(usr, SPAN_NOTICE("You grow a follower!"))
	var/mob/living/carbon/superior_animal/fungi/mushroom = new follower_type(user.loc)
	mushroom.friends += user
	mushroom.following = user
	..()

// Food related perks
/datum/perk/carnivore
	name = "Carnivore"
	desc = "For whatever reason, be it genetics or racial inclination, you are an obligate carnivore. You get very little nutrition from standard nutriment, but gain alot from meat and protein \
	based products."
	passivePerk = TRUE

/datum/perk/herbivore
	name = "Herbivore"
	desc = "For whatever reason, be it genetics or racial inclination, you are an obligate herbivore. You get very little nutrition from standard protein, but gain alot from grown foods and glucose \
	based products."
	passivePerk = TRUE

///////////////////////////////////// Slime perks
/datum/perk/speed_boost
	name = "Gelatinous speed"
	desc = "Increase your speed for a short amount of time."
	var/cooldown = 10 MINUTES
	passivePerk = FALSE
	var/nutrition_cost = 100

/datum/perk/speed_boost/activate()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("TODO Error Message"))
		return FALSE
	cooldown_time = world.time + cooldown

	holder.nutrition -= nutrition_cost
	// TODO : Add Speedy Chemical Injection here -R4d6

/datum/perk/limb_regen
	name = "Gelatinous Regeneration"
	desc = "Spend nutrition in exchange of regenerating your limbs"
	var/cooldown = 30 MINUTES
	passivePerk = FALSE
	var/nutrition_cost = 500 // I don't know if nutrition even goes that high, but that's Possum's problem. -R4d6
	var/list/limbs = list(BP_HEAD, BP_GROIN, BP_L_ARM, BP_R_ARM, BP_L_LEG, BP_R_LEG)

/datum/perk/limb_regen/activate()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("TODO Error Message"))
		return FALSE
	cooldown_time = world.time + cooldown
	holder.nutrition -= nutrition_cost
	holder.restore_all_organs() // Function located in 'code/modules/mob/living/carbon/human/human_damage.dm' Line 334. I couldn't find anything better for regenerating missing limbs and I'm too tired to try and code it in, so it will have to do. -R4d6

/datum/perk/slime_stat_boost
	name = "Gelatinous Stat Boost"
	desc = "Spend nutrition in exchange of \[INSERT DESCRIPTION HERE\]"
	var/cooldown = 15 MINUTES
	passivePerk = FALSE
	var/nutrition_cost = 100
	var/list/stats_to_boost = list() // Which stats we boost
	var/amount_to_boost = 90 // How much the stats are boosted
	var/duration = 0.5 MINUTES // How long the stats are boosted for

/datum/perk/slime_stat_boost/activate()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("TODO Error Message"))
		return FALSE
	cooldown_time = world.time + cooldown
	holder.nutrition -= nutrition_cost
	for(var/I in stats_to_boost)
		holder.stats.addTempStat(I, amount_to_boost, duration, "Slime Biology")

/datum/perk/slime_stat_boost/mental
	name = "Gelatinous Mental Stat Boost"
	desc = "Spend nutrition in exchange of \[INSERT DESCRIPTION HERE\]"
	stats_to_boost = list(STAT_BIO, STAT_MEC, STAT_COG)

/datum/perk/slime_stat_boost/physical
	name = "Gelatinous Physical Stat Boost"
	desc = "Spend nutrition in exchange of \[INSERT DESCRIPTION HERE\]"
	stats_to_boost = list(STAT_ROB, STAT_TGH, STAT_VIG)
