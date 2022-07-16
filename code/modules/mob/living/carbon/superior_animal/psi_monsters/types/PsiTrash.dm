/mob/living/carbon/superior_animal/psi_monster/memory_eater
	name = "memory eater"
	desc = "A memory eater, named for the fact that it can devour your perception of it until its close enough to strike. Not that strong, compared to other monsters in this realm, but the most discrete."
	icon_state = "chameleon"
	icon_living = "chameleon"

	maxHealth = 150
	health = 150
	melee_damage_lower = 14
	melee_damage_upper = 19
	aggro_noise = FALSE
	viewRange = 5
	turns_per_move = 8

	attack_sound = FALSE
	emote_see = list("shuffles around discretely.", "warbles quietly.", "murmurs nonsense.")
	chameleon_skill = 1
	speak_chance = 2
	attacktext = "clawed"

/mob/living/carbon/superior_animal/psi_monster/thought_melter
	name = "thought melter"
	desc = "The thought melter, a quite weak creature, but one that carries a plague in its touch for psions, weakening the mind with every strike. They are quite talkitive, oddly enough."
	icon_state = "arl"
	icon_living = "arl"

	maxHealth = 90
	health = 90
	melee_damage_lower = 12
	melee_damage_upper = 14
	emote_see = list("garbles inane speech.", "howls with laughter!", "growls foul unintelligible words.")
	speak_chance = 10
	poison_per_bite = 1
	attacktext = "caressed"

/mob/living/carbon/superior_animal/psi_monster/pus_maggot
	name = "pus maggot"
	desc = "Of all the things down here, the pus maggot is one of the most reviled, its tumorous squirming rear filled with a toxic and vile acid it tries to engorge onto its victims."
	icon_state = "parasite"
	icon_living = "parasite"

	maxHealth = 130
	health = 130
	melee_damage_lower = 10
	melee_damage_upper = 15
	emote_see = list("drools acid onto the floor.", "wriggles in glee!", "rolls over!")
	var/burn_attack_text = "The pus maggot vomits up some acidic pus all over!"
	var/burn_attack_sound = 'sound/effects/splat.ogg'
	attacktext = "gnawed"

/mob/living/carbon/superior_animal/psi_monster/pus_maggot/summoned
	momento_mori = /obj/effect/decal/cleanable/psi_ash/low_chance
