// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Racial chemicals used for perks.
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/datum/reagent/medicine/sabledone
	name = "Sabledone"
	id = "sabledone"
	description = "A very effective and immensely powerful painkiller naturally produced by sablekyne when under severe stress."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#800080"
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE
	constant_metabolism = TRUE
	scannable = 1

/datum/reagent/medicine/sabledone/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 10000, TRUE)
	M.apply_effect(-200, AGONY, 0)

/datum/reagent/stim/marquatol
	name = "Marquatol"
	id = "marquatol"
	description = "A chemical naturally produced by the mar'qua that allows them to focus."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#5f95e2"
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE
	metabolism = REM/5

/datum/reagent/stim/marquatol/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.stats.addTempStat(STAT_MEC, STAT_LEVEL_BASIC, STIM_TIME, "marquatol")
	M.stats.addTempStat(STAT_BIO, STAT_LEVEL_BASIC, STIM_TIME, "marquatol")
	M.stats.addTempStat(STAT_COG, STAT_LEVEL_BASIC, STIM_TIME, "marquatol")

/datum/reagent/medicine/hadrenol
	name = "Hadrenol"
	id = "adrenol"
	description = "A chemical naturally produced by humans pushed to their limit, allowing them to possibly recover from grievous injuries."
	taste_description = "grossness"
	reagent_state = LIQUID
	color = "#8040FF"
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE
	constant_metabolism = TRUE
	scannable = 1

/datum/reagent/medicine/hadrenol/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.adjustOxyLoss(-0.6)
	M.heal_organ_damage(0.3, 0.3)
	M.adjustToxLoss(-0.3)
	M.add_chemical_effect(CE_BLOODCLOT, 0.1)
	M.add_chemical_effect(CE_PAINKILLER, 25, TRUE)

/datum/reagent/medicine/hustim
	name = "Hustimdol"
	id = "hustim"
	description = "A chemical naturally produced by humans pushed to their limit. Induces a recovery coma to heal their wounds."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#ded890"
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE
	constant_metabolism = TRUE
	scannable = 1

/datum/reagent/medicine/hustim/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.heal_organ_damage(0.8, 0.4, 6)
	M.add_chemical_effect(CE_BLOODCLOT, min(1,0.4))
	M.adjustOxyLoss(-2) //We are taking are deep breaths
	M.adjustToxLoss(-1)
	M.add_chemical_effect(CE_STABLE)
	M.add_chemical_effect(CE_PAINKILLER, 45, TRUE)
	M.add_chemical_effect(CE_PULSE, -1)
	//We also sleep are target, this will make it not as good to use against spiders still active or simple animals.
	var/effective_dose = dose
	if(issmall(M))
		effective_dose *= 2

	if(effective_dose < 1)
		if(effective_dose == metabolism * 2 || prob(5))
			M.emote("yawn")
	else if(effective_dose < 3)
		M.eye_blurry = max(M.eye_blurry, 10)
	else if(effective_dose < 4)
		if(prob(50))
			M.Weaken(2)
		M.drowsyness = max(M.drowsyness, 20)
	else
		M.sleeping = max(M.sleeping, 20)
		M.drowsyness = max(M.drowsyness, 60)

/datum/reagent/stim/kriotol
	name = "Kriotol"
	id = "kriotol"
	description = "A chemical naturally produced by the kriosan that works like a form of adrenaline to enhance their bodies."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#5f95e2"
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE

/datum/reagent/stim/kriotol/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.stats.addTempStat(STAT_TGH, 10, STIM_TIME, "kriotol")
	M.stats.addTempStat(STAT_VIG, 20, STIM_TIME, "kriotol")
	M.add_chemical_effect(CE_DARKSIGHT, SEE_INVISIBLE_NOLIGHTING)
	M.add_chemical_effect(CE_SPEEDBOOST, 0.6)
	M.add_chemical_effect(CE_PULSE, 2)

/datum/reagent/stim/robustitol
	name = "Robustitol"
	id = "robustitol"
	description = "A chemical naturally produced by the akula that sends them into an all consuming frenzy."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#5f95e2"
	nerve_system_accumulations = 0
	addiction_chance = 100
	appear_in_default_catalog = FALSE

/datum/reagent/stim/robustitol/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.stats.addTempStat(STAT_TGH, 60, STIM_TIME, "robustitol")
	M.stats.addTempStat(STAT_ROB, 60, STIM_TIME, "robustitol")
	M.stats.addTempStat(STAT_COG, -100, STIM_TIME, "robustitol")
	M.stats.addTempStat(STAT_BIO, -100, STIM_TIME, "robustitol")
	M.stats.addTempStat(STAT_VIG, -100, STIM_TIME, "robustitol")
	M.stats.addTempStat(STAT_MEC, -100, STIM_TIME, "robustitol")

/datum/reagent/drug/robustitol/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_TGH, -STAT_LEVEL_BASIC, STIM_TIME, "robustitol_w")
	M.stats.addTempStat(STAT_ROB, -STAT_LEVEL_BASIC, STIM_TIME, "robustitol_w")

/datum/reagent/medicine/sergatonin
	name = "Naratonin"
	id = "naratonin"
	description = "Naratonin is a highly effective, short term, muscle stimulant naturally produced by naramadi when under stress."
	taste_description = "acid"
	reagent_state = LIQUID
	color = "#FF3300"
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE
	constant_metabolism = TRUE
	scannable = 1

/datum/reagent/medicine/sergatonin/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.stats.addTempStat(STAT_TGH, 25, STIM_TIME, "naratonin")
	M.stats.addTempStat(STAT_ROB, 25, STIM_TIME, "naratonin")
	M.add_chemical_effect(CE_SPEEDBOOST, 0.6)
	M.add_chemical_effect(CE_PULSE, 2)

/datum/reagent/medicine/spaceacillin/cindicillin
	name = "Cindicillin"
	id = "cindicillin"
	description = "An all-purpose antiviral agent naturally produced by cindarites that functions identically to Spaceacillin."
	constant_metabolism = TRUE

/datum/reagent/medicine/cindpetamol
	name = "Cindpetamol"
	id = "cindpetamol"
	description = "Cindpetamol is a highly specialized chemical made by cindarites that purges the blood stream of toxins, addictions, and stimulants at the cost of slowing down your movements."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#FF3300"
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE
	constant_metabolism = TRUE
	scannable = 1

/datum/reagent/medicine/cindpetamol/affect_blood(mob/living/carbon/M, alien, effect_multiplier, var/removed)
	M.adjustToxLoss(-8)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/liver/L = H.random_organ_by_process(OP_LIVER)
		if(istype(L))
			if(BP_IS_ROBOTIC(L))
				return
			if(L.damage > 0)
				L.damage = max(L.damage - 2 * removed, 0)
	var/mob/living/carbon/C = M
	if(istype(C) && C.metabolism_effects.addiction_list.len)
		if(prob(90 + dose))
			var/datum/reagent/R = pick(C.metabolism_effects.addiction_list)
			to_chat(C, SPAN_NOTICE("You don't crave for [R.name] anymore."))
			C.metabolism_effects.addiction_list.Remove(R)
			qdel(R)
	if(M.bloodstr)
		for(var/current in M.bloodstr.reagent_list)
			var/datum/reagent/toxin/R = current
			if(!istype(R, src))
				R.remove_self(pick(list(1,2,3)))
			var/datum/reagent/stim/S = current
			if(!istype(S, src))
				S.remove_self(effect_multiplier * pick(list(1,2,3)))
	M.add_chemical_effect(CE_SLOWDOWN, 1)
	M.add_chemical_effect(CE_PULSE, -1)
