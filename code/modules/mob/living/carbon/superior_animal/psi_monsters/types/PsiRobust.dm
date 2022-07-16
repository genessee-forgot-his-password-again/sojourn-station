/mob/living/carbon/superior_animal/psi_monster/ponderous
	name = "ponderous"
	desc = "The ponderous, believed to be a mutation of local wild life, it stalks towards its prey slowly, its touch quite malignant, more so to psions than anyone else. Due to its thick carapace, \
	it can absorb absurd amounts of punishment."
	icon_state = "strygh"
	icon_living = "strygh"

	maxHealth = 200
	health = 200
	melee_damage_lower = 14
	melee_damage_upper = 19
	emote_see = list("chitters in greeting.", "whispers, \"Let me caress your flesh...\"", "twitches its antennae.")
	poison_per_bite = 2
	turns_per_move = 4 // Slow
	attacktext = "punched"

/mob/living/carbon/superior_animal/psi_monster/hovering_nightmare
	name = "hovering nightmare"
	desc = "The hovering nightmare is a flying creature resembling a misshapen skull. It is fast, remaining low to the ground and moving quickly through the use of psionics and will. Its bite is \
	far worse than its bark."
	icon_state = "regugriator22"
	icon_living = "regugriator22"

	maxHealth = 150
	health = 150
	melee_damage_lower = 20
	melee_damage_upper = 25
	emote_see = list("begins to melt, blackened skin sloughing down its form until it pulls taut.", "howls, \"Birth, flesh, death, decay, birth, flesh, death, decay!\"", "howls in agony!")
	turns_per_move = 10

/mob/living/carbon/superior_animal/psi_monster/licker
	name = "licker"
	desc = "The licker, named for its long venom laced tongue. Some speculate that it was once an insect of some form, given its choice of venom, what is known is that while fast, it isn't that strong. \
	Watch out for the fleshy pink thing it is to eager to touch you with."
	icon_state = "runner"
	icon_living = "runner"

	maxHealth = 100
	health = 100
	melee_damage_lower = 14
	melee_damage_upper = 18
	emote_see = list("extends its tongue to the floor.", "chitters, whipping its tail wildly about!", "hisses with barely contained rage.")
	turns_per_move = 8
	poison_per_bite = 1
	poison_type = "xenotoxin"
	attacktext = "tongued"

/mob/living/carbon/superior_animal/psi_monster/memory
	name = "memory"
	desc = "We leave more than simply our mark where we die."
	icon_state = "M3"
	icon_living = "M3"

	maxHealth = 180
	health = 180
	melee_damage_lower = 12
	melee_damage_upper = 31
	emote_see = list("screams, \"They did this they did this!\"", "howls, \"They could have done something!\"", "whispers, \"I could have done something...\"", "groans, \"Kill me, please...\"", "weeps, \"It will never end.\"")
	speak_chance = 15
	attacktext = "stroked"

/mob/living/carbon/superior_animal/psi_monster/flesh_tower
	name = "flesh tower"
	desc = "A billowing tower of flesh, oozing pus and acid. Thought to locate its targets psionically, though it seems incapable of seeing its own kind, often hitting and even killing them in its bid \
	to end the lives of intruders in this realm. Something about this creature strikes you as familiar."
	icon_state = "floaterx"
	icon_living = "floaterx"

	maxHealth = 140
	health = 140
	melee_damage_lower = 5
	melee_damage_upper = 10
	emote_see = list("flexes!", "wriggles lewdly!", "oozes goo.")
	anchored = TRUE
	wander = FALSE
	environment_smash = FALSE
	destroy_surroundings = FALSE
	turns_per_move = 4

	ranged = TRUE
	rapid = TRUE
	comfy_range = 8
	projectiletype = /obj/item/projectile/goo
	projectilesound = 'sound/effects/creatures/acid_spit.ogg'
	limited_ammo = FALSE
	mag_drop = FALSE
	attacktext = "slapped"
