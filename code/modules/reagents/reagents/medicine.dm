/* General medicine */
/datum/reagent/medicine
	reagent_type = "Medicine"

/datum/reagent/medicine/inaprovaline
	name = "Inaprovaline"
	id = "inaprovaline"
	description = "Inaprovaline is a weak yet broad synaptic stimulant and cardiostimulant. Commonly used to stabilize patients in critical condition."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#00BFFF"
	overdose = REAGENTS_OVERDOSE * 2
	metabolism = REM * 0.5
	scannable = 1

/datum/reagent/medicine/inaprovaline/holy
	id = "holyinaprovaline"
	scannable = 0

/datum/reagent/medicine/inaprovaline/affect_blood(mob/living/carbon/M, alien, effect_multiplier) // No more useless chem of leftover baycode with no inference on health due to pulse not affecting anything. - Seb
	M.add_chemical_effect(CE_PULSE, 1)
	M.add_chemical_effect(CE_STABLE) // Keeping these useless effects for the sake of RP.
	M.add_chemical_effect(CE_PAINKILLER, 25 * effect_multiplier, TRUE)
	M.adjustOxyLoss(-0.5 * effect_multiplier) // Should help stall for time against oxyloss killing you to heavy bloodloss or lung/heart damage until your eventual rescue, but won't heal it outright.
	M.add_chemical_effect(CE_OXYGENATED, 1)
	M.add_chemical_effect(CE_BLOODCLOT, 0.1) // Emergency stop bleeding, still lowest tier

/datum/reagent/medicine/bicaridine
	name = "Bicaridine"
	id = "bicaridine"
	description = "Bicaridine is an analgesic medication and can be used to treat blunt trauma."
	taste_description = "bitterness"
	taste_mult = 3
	reagent_state = LIQUID
	color = "#BF0000"
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/bicaridine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(M.species?.reagent_tag == IS_CHTMANT)
		M.heal_organ_damage(0.15 * effect_multiplier, 0, 5 * effect_multiplier)
		return
	M.heal_organ_damage(0.3 * effect_multiplier, 0, 5 * effect_multiplier)
	M.add_chemical_effect(CE_BLOODCLOT, 0.15)

/datum/reagent/medicine/vermicetol
	name = "Vermicetol"
	id = "vermicetol"
	description = "A potent chemical that treats physical damage at an exceptional rate."
	taste_description = "bitter meat"
	taste_mult = 3
	reagent_state = LIQUID
	color = "#964e06"
	overdose = REAGENTS_OVERDOSE * 0.5
	scannable = 1

/datum/reagent/medicine/vermicetol/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	M.heal_organ_damage(12 * removed, 0)

/datum/reagent/medicine/varceptol
	name = "Varceptol"
	id = "varceptol"
	description = "A powerful treatment chemical capable of repairing both the body and purging of toxins."
	taste_description = "tangy"
	taste_mult = 3
	reagent_state = LIQUID
	color = "#FF69B4" //rgb(255,105,180)hotpink
	overdose = REAGENTS_OVERDOSE * 0.5
	scannable = 1

/datum/reagent/medicine/varceptol/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	M.heal_organ_damage(9 * removed, 0)
	M.adjustToxLoss(-3 * removed)

/datum/reagent/medicine/meralyne
	name = "Meralyne"
	id = "meralyne"
	description = "Meralyne is the next step in brute trauma medication. Works twice as good as Bicaridine and enables the body to restore even the direst brute-damaged tissue, while clotting bleeding incisions and cuts."
	taste_description = "bitterness"
	taste_mult = 3
	reagent_state = LIQUID
	color = "#E6666C"
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/meralyne/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.heal_organ_damage(0.6 * effect_multiplier, 0, 5 * effect_multiplier)
	M.add_chemical_effect(CE_BLOODCLOT, 0.30)

/datum/reagent/medicine/kelotane
	name = "Kelotane"
	id = "kelotane"
	description = "Kelotane is a drug used to treat burns."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#FFA800"
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/kelotane/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(M.species?.reagent_tag == IS_CHTMANT)
		return
	M.heal_organ_damage(0, 0.6 * effect_multiplier, 0, 3 * effect_multiplier)

/datum/reagent/medicine/dermaline
	name = "Dermaline"
	id = "dermaline"
	description = "Dermaline is the next step in burn medication. Works twice as well as Kelotane and enables the body to restore even the direst heat-damaged tissue."
	taste_description = "bitterness"
	taste_mult = 1.5
	reagent_state = LIQUID
	color = "#FF8000"
	overdose = REAGENTS_OVERDOSE * 0.5
	scannable = 1

/datum/reagent/medicine/dermaline/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.heal_organ_damage(0, 1.2 * effect_multiplier, 0, 5 * effect_multiplier)

/datum/reagent/medicine/dylovene
	name = "Dylovene"
	id = "anti_toxin"
	description = "Dylovene is a broad-spectrum antitoxin."
	taste_description = "a roll of gauze"
	reagent_state = LIQUID
	color = "#00A000"
	scannable = 1

/datum/reagent/medicine/dylovene/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.drowsyness = max(0, M.drowsyness - 0.6 * effect_multiplier)
	M.adjust_hallucination(-0.9 * effect_multiplier)
	M.adjustToxLoss(-((0.2 + (M.getToxLoss() * 0.05)) * effect_multiplier))
	M.add_chemical_effect(CE_ANTITOX, 1)
	holder.remove_reagent("pararein", 0.8 * effect_multiplier)
	holder.remove_reagent("carpotoxin", 0.4 * effect_multiplier) // Fish recipes no longer contain carpotoxin, but good in cases of poisoning.
	holder.remove_reagent("toxin", 0.4 * effect_multiplier)
	holder.remove_reagent("blattedin", 0.4 * effect_multiplier) // Massive complains about its slow metabolization rate + poisoning actually working, plus dylo originally purged it, so I'm bringing it back. - Seb

/datum/reagent/medicine/carthatoline
	name = "Carthatoline"
	id = "carthatoline"
	description = "Carthatoline is a strong evacuant used to treat severe poisoning."
	reagent_state = LIQUID
	color = "#225722"
	scannable = 1

/datum/reagent/medicine/carthatoline/affect_blood(var/mob/living/carbon/M, var/alien, effect_multiplier, var/removed = REM)
	M.adjustToxLoss(-6 * removed)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/liver/L = H.random_organ_by_process(OP_LIVER)
		if(istype(L))
			if(BP_IS_ROBOTIC(L))
				return
			if(L.damage > 0)
				L.damage = max(L.damage - 2 * removed, 0)
	holder.remove_reagent("pararein", 0.8 * effect_multiplier)
	holder.remove_reagent("carpotoxin", 0.4 * effect_multiplier) // Gonna be good for fish recipes // Copypasting even my commentary? tsk tsk - Seb
	holder.remove_reagent("toxin", 0.4 * effect_multiplier)
	holder.remove_reagent("stoxin", 0.4 * effect_multiplier)     //Fuck mobs and injectables
	holder.remove_reagent("zombiepowder", 0.4 * effect_multiplier)
	holder.remove_reagent("xenotoxin", 0.4 * effect_multiplier)
	holder.remove_reagent("blattedin", 0.8 * effect_multiplier) // Consistency with Dylovene, making it a straight upgrade worth mixing.

/datum/reagent/medicine/cordradaxon
	name = "Cordradaxon"
	id = "cordradaxon"
	description = "An intense organ repair chemical used to treat damage to the heart."
	reagent_state = LIQUID
	color = "#8B0000" // rgb(139,0,0)
	scannable = 1

/datum/reagent/medicine/cordradaxon/affect_blood(var/mob/living/carbon/M, var/alien, var/removed = REM)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/heart/C = H.random_organ_by_process(OP_HEART)
		if(H && istype(H))
			if(BP_IS_ROBOTIC(C))
				return
			if(C.damage > 0)
				C.damage = max(C.damage - 5 * removed, 0)

/datum/reagent/medicine/dexalin
	name = "Dexalin"
	id = "dexalin"
	description = "Dexalin is used in the treatment of oxygen deprivation."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#0080FF"
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/dexalin/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(M.species?.reagent_tag == IS_CHTMANT)
		return
	M.adjustOxyLoss(-1.5 * effect_multiplier)
	M.add_chemical_effect(CE_OXYGENATED, 1)
	holder.remove_reagent("lexorin", 0.2 * effect_multiplier)

/datum/reagent/medicine/dexalinp
	name = "Dexalin Plus"
	id = "dexalinp"
	description = "Dexalin Plus is used in the treatment of oxygen deprivation as well as muscle repair. It is highly effective."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#0040FF"
	overdose = REAGENTS_OVERDOSE * 0.5
	scannable = 1

/datum/reagent/medicine/dexalinp/affect_blood(mob/living/carbon/M, alien, effect_multiplier, var/removed = REM)
	M.adjustOxyLoss(-30 * effect_multiplier)
	M.add_chemical_effect(CE_OXYGENATED, 2)
	holder.remove_reagent("lexorin", 0.3 * effect_multiplier)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		//G for GUNS
		var/obj/item/organ/internal/muscle/G = H.random_organ_by_process(OP_MUSCLE)
		if(H && istype(H))
			if(BP_IS_ROBOTIC(G))
				return
			if(G.damage > 0)
				G.damage = max(G.damage - 5 * removed, 0)


/datum/reagent/medicine/respirodaxon
	name = "Respirodaxon"
	id = "respirodaxon"
	description = "An intense organ repair chemical used to treat damage to the lungs."
	taste_description = "bitter air"
	reagent_state = LIQUID
	color = "#000080"
	overdose = REAGENTS_OVERDOSE * 0.5
	scannable = 1

/datum/reagent/medicine/respirodaxon/affect_blood(var/mob/living/carbon/M, var/alien, var/removed = REM)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/lungs/L = H.random_organ_by_process(OP_LUNGS)
		if(H && istype(H))
			if(BP_IS_ROBOTIC(L))
				return
			if(L.damage > 0)
				L.damage = max(L.damage - 5 * removed, 0)

/datum/reagent/medicine/tricordrazine
	name = "Tricordrazine"
	id = "tricordrazine"
	description = "Tricordrazine is a highly potent stimulant, originally derived from Cordrazine. Can be used to treat a wide range of injuries."
	taste_description = "grossness"
	reagent_state = LIQUID
	color = "#8040FF"
	scannable = 1
	overdose = REAGENTS_OVERDOSE

/datum/reagent/medicine/tricordrazine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(M.species?.reagent_tag == IS_CHTMANT)
		return
	M.adjustOxyLoss(-0.6 * effect_multiplier)
	M.heal_organ_damage(0.3 * effect_multiplier, 0.3 * effect_multiplier)
	M.adjustToxLoss(-0.3 * effect_multiplier)
	M.add_chemical_effect(CE_BLOODCLOT, 0.1)

/datum/reagent/medicine/tricordrazine/overdose(var/mob/living/carbon/M, var/alien)
	. = ..()
	M.adjustToxLoss(5)
	M.adjustBrainLoss(1)
	if(M.losebreath < 15)
		M.losebreath++

/datum/reagent/medicine/cryoxadone
	name = "Cryoxadone"
	id = "cryoxadone"
	description = "A chemical mixture with almost magical healing powers. Its main limitation is that the targets body temperature must be under 170K for it to metabolize correctly."
	taste_description = "sludge"
	reagent_state = LIQUID
	color = "#8080FF"
	metabolism = REM
	scannable = 1
	affects_dead = 1

/datum/reagent/medicine/cryoxadone/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(M.bodytemperature < 170)
		M.adjustCloneLoss(-(20 + (M.getCloneLoss() * effect_multiplier)))
		M.adjustOxyLoss(-(20 + (M.getOxyLoss() * effect_multiplier)))
		M.add_chemical_effect(CE_OXYGENATED, 1)
		M.heal_organ_damage(10 * effect_multiplier, 5 * effect_multiplier, 5 * effect_multiplier, 5 * effect_multiplier)
		M.adjustToxLoss(-(5 + (M.getToxLoss() * effect_multiplier)))
		M.add_chemical_effect(CE_PULSE, -2)

/datum/reagent/medicine/clonexadone
	name = "Cronexidone"
	id = "clonexadone"
	description = "A liquid compound that is in all ways superior to Cryoxadone. Can be used to treat severe clone damage, genetic mutation, and repair even dead bodies when used in conjunction with a cryo tube."
	taste_description = "slime"
	reagent_state = LIQUID
	color = "#80BFFF"
	metabolism = REM
	scannable = 1
	affects_dead = 1 //This can even heal dead people.

/datum/reagent/medicine/clonexadone/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(M.bodytemperature < 170)
		M.adjustCloneLoss(-(30 + (M.getCloneLoss() * effect_multiplier)))
		M.adjustOxyLoss(-(30 + (M.getOxyLoss() * effect_multiplier)))
		M.add_chemical_effect(CE_OXYGENATED, 2)
		M.heal_organ_damage(10 * effect_multiplier, 5 * effect_multiplier, 5 * effect_multiplier, 5 * effect_multiplier)
		M.adjustToxLoss(-(10 + (M.getToxLoss() * effect_multiplier)))
		M.add_chemical_effect(CE_PULSE, -2)

/* Painkillers */

/datum/reagent/medicine/paracetamol
	name = "Paracetamol"
	id = "paracetamol"
	description = "Most probably know this as Tylenol, this chemical is a mild, simple painkiller."
	taste_description = "sickness"
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose = 60
	scannable = 1
	metabolism = 0.1 // Who thought it was a good idea for such a mild painkiller to last a lifetime?

/datum/reagent/medicine/paracetamol/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 50, TRUE)

/datum/reagent/medicine/paracetamol/overdose(mob/living/carbon/M, alien)
	..()
	M.druggy = max(M.druggy, 2)

/datum/reagent/medicine/tramadol
	name = "Tramadol"
	id = "tramadol"
	description = "A simple, yet effective painkiller."
	taste_description = "sourness"
	reagent_state = LIQUID
	color = "#CB68FC"
	overdose = REAGENTS_OVERDOSE
	scannable = 1
	metabolism = 0.1
	nerve_system_accumulations = 40

/datum/reagent/medicine/tramadol/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 130 , TRUE)

/datum/reagent/medicine/tramadol/overdose(mob/living/carbon/M, alien)
	..()
	M.hallucination(120, 30)
	M.slurring = max(M.slurring, 30)
	M.add_chemical_effect(CE_SLOWDOWN, 1)
	if(prob(3 - (2 * M.stats.getMult(STAT_TGH))))
		M.Stun(3)

/datum/reagent/medicine/oxycodone
	name = "Oxycodone"
	id = "oxycodone"
	description = "An effective and very addictive painkiller."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#800080"
	overdose = REAGENTS_OVERDOSE * 0.66
	metabolism = 0.02
	nerve_system_accumulations = 60
	scannable = 1 //Finnicky chem application, we need to know how much of it is on a system to prevent overdose.

/datum/reagent/medicine/oxycodone/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 200, TRUE)
	M.druggy = max(M.druggy, 10)

/datum/reagent/medicine/oxycodone/overdose(mob/living/carbon/M, alien)
	..()
	M.hallucination(120, 30)
	M.druggy = max(M.druggy, 10)
	M.slurring = max(M.slurring, 30)
	M.add_chemical_effect(CE_SLOWDOWN, 1)
	if(prob(5 - (2 * M.stats.getMult(STAT_TGH))))
		M.Stun(5)

/* Church related chemicals */
/datum/reagent/medicine/nepenthe  //Monomial super-painkiller
	name = "Nepenthe"
	id = "nepenthe"
	description = "Pain is imperfection leaving the body. Suffer through it, child of the Monomial, so that you may attain the Perfection of Form."
	taste_description = "fading sorrow"
	reagent_state = LIQUID
	color = "#AA5656"
	overdose = 0
	scannable = 0
	metabolism = 0.2
	appear_in_default_catalog = FALSE
	nerve_system_accumulations = 0

/datum/reagent/medicine/nepenthe/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 1000)

/datum/reagent/medicine/anodyne //Standard used around
	name = "Anodyne"
	id = "anodyne"
	description = "The power of the Absolute grants a gift of momentary abatement against the dire physical hardships of the body."
	taste_description = "numbness"
	reagent_state = LIQUID
	color = "#BAA845"
	overdose = 0
	scannable = 0
	metabolism = 0.2
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE

/datum/reagent/medicine/anodyne/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 90) // Tweaking the numbers here so that they are closer to what litanies used to do, this one is a flat -10 loss to what it used to be...

/datum/reagent/medicine/laudanum //Weakest available
	name = "Laudanum"
	id = "laudanum"
	description = "A nostalgic sensation of relief and calm against the faintest aches."
	taste_description = "home"
	reagent_state = LIQUID
	color = "#488531"
	overdose = 0
	scannable = 0
	metabolism = 0.5
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE

/datum/reagent/medicine/laudanum/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 40) // ...yet this one is a buff, making it an acceptably low painkiller range while keeping a 50 difference between tiers like Tram-to-Para ratio - Seb

/datum/reagent/medicine/dexalinp/holy
	name = "Helaxin Negative"
	description = "A chemical of unknown origin capable of treating oxygen deprivation and repairing muscles, highly effective but difficult to detect."
	id = "holydexalinp"
	scannable = 0
	appear_in_default_catalog = FALSE
	overdose = 0

/datum/reagent/medicine/cindpetamol/holy
	name = "Alignitol"
	id = "alignitol"
	description = "A chemical of unknown origin that purges toxins and addictions from the body, making it highly effective at aiding others, but has the side effect of putting users unconcious."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#FF3300"
	nerve_system_accumulations = 0
	appear_in_default_catalog = FALSE
	constant_metabolism = TRUE
	scannable = 0
	overdose = 0

/datum/reagent/medicine/spaceacillin/holy
	name = "Holycilin"
	id = "holycilin"
	description = "A chemical of unknown origin, believed to be derived from cahors and spaceacillin that functions identical to the latter."
	taste_description = "sweetness"
	appear_in_default_catalog = FALSE
	constant_metabolism = TRUE
	scannable = 0
	overdose = 0

/* Other medicine */

/datum/reagent/medicine/synaptizine
	name = "Synaptizine"
	id = "synaptizine"
	description = "Synaptizine is used to treat various diseases."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#99CCFF"
	metabolism = REM * 0.1 //This was taking A LOT to metabolize. By its effects, it shouldn't be.
	overdose = 5
	scannable = 1
	nerve_system_accumulations = 50

/datum/reagent/medicine/synaptizine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.drowsyness = max(M.drowsyness - 5, 0)
	M.AdjustParalysis(-1)
	M.AdjustStunned(-1)
	M.AdjustWeakened(-1)
	holder.remove_reagent("mindbreaker", 5)
	M.adjust_hallucination(-10)
	M.add_chemical_effect(CE_MIND, 2)
	M.adjustToxLoss(0.5 * effect_multiplier) // It used to be incredibly deadly due to an oversight. Not anymore!
	M.add_chemical_effect(CE_PAINKILLER, 40, TRUE)

/datum/reagent/medicine/alkysine
	name = "Alkysine"
	id = "alkysine"
	description = "Alkysine is a drug used to repair the damage to neurological tissue after a catastrophic injury. Can heal brain tissue."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#FFFF66"
	metabolism = REM * 0.25
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/alkysine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.adjustBrainLoss(-(3 + (M.getBrainLoss() * 0.05)) * effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 10 * effect_multiplier, TRUE)

/datum/reagent/medicine/imidazoline
	name = "Imidazoline"
	id = "imidazoline"
	description = "Helps naturally regenerate and restore eye tissue."
	taste_description = "dull toxin"
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/imidazoline/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.eye_blurry = max(M.eye_blurry - (5 * effect_multiplier), 0)
	M.eye_blind = max(M.eye_blind - (5 * effect_multiplier), 0)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/eyes/E = H.random_organ_by_process(OP_EYES)
		if(E && istype(E))
			if(E.damage > 0)
				E.damage = max(E.damage - (0.5 * effect_multiplier), 0)

/datum/reagent/medicine/peridaxon
	name = "Peridaxon"
	id = "peridaxon"
	description = "Used to encourage recovery of internal organs and nervous systems. Medicate cautiously."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#561EC3"
	overdose = 10
	scannable = 1

/datum/reagent/medicine/peridaxon/affect_blood(mob/living/carbon/M, alien, effect_multiplier, var/removed)
	if(M.species?.reagent_tag == IS_CHTMANT)
		return
	if(ishuman(M))
		var/mob/living/carbon/human/H = M

		for(var/obj/item/organ/I in H.internal_organs)
			if((I.damage > 0) && !BP_IS_ROBOTIC(I) && !istype(I, /obj/item/organ/internal/bone)) //Stop healing bones, bones are not organs!
				I.heal_damage(((0.2 + I.damage * 0.05) * effect_multiplier), FALSE)
		var/obj/item/organ/internal/nerve/N = H.random_organ_by_process(OP_NERVE)
		if(H && istype(H))
			if(BP_IS_ROBOTIC(N))
				return
			if(N.damage > 0)
				N.damage = max(N.damage - 5 * removed, 0)


/datum/reagent/medicine/ryetalyn
	name = "Ryetalyn"
	id = "ryetalyn"
	description = "Ryetalyn can cure all genetic abnormalities via a catalytic process."
	taste_description = "acid"
	reagent_state = SOLID
	color = "#004000"
	metabolism = REM * 1.5
	overdose = REAGENTS_OVERDOSE
	scannable = 1 // This is a mostly beneficial chem, it should show up on scanners
	affects_dead = 1

/datum/reagent/medicine/ryetalyn/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	src.on_mob_add(M, alien, effect_multiplier) //I'm going with this to make it both affect dead people for unhusking, and to update on every life tick. Thanks Hydro!

/datum/reagent/medicine/ryetalyn/on_mob_add(mob/living/carbon/M, alien, effect_multiplier) //on_mob_add allows it to act regardless if the human is dead or alive.
	var/needs_update = M.mutations.len > 0

	M.mutations = list()
	M.disabilities = 0
	M.sdisabilities = 0

	// Might need to update appearance for hulk etc.
	if(needs_update && ishuman(M))
		var/mob/living/carbon/human/H = M
		H.update_mutations()
		H.update_body() //Don't let husks stay wrinkly all the time, we gotta fix them!

/datum/reagent/medicine/negative_ling
	name = "Negative Paragenetic Marker"
	id = "negativeling"
	description = "A marker compound that turns positive when put in contact with morphogenic mutant blood."
	taste_description = "acid"
	reagent_state = SOLID
	color = "#022000"

/datum/reagent/medicine/positive_ling
	name = "Positive Paragenetic Marker"
	id = "positiveling"
	description = "This marker compound has come in contact with morphogenic mutant blood."
	taste_description = "acid"
	reagent_state = SOLID
	color = "#910000"
	scannable = 1 //Injecting a corpse with negative paragenic should return this chem for scanning it and pinpointing lings

/datum/reagent/medicine/ethylredoxrazine
	name = "Ethylredoxrazine"
	id = "ethylredoxrazine"
	description = "A powerful oxidizer that reacts with ethanol."
	reagent_state = SOLID
	color = "#605048"
	overdose = REAGENTS_OVERDOSE

/datum/reagent/medicine/ethylredoxrazine/affect_blood(var/mob/living/carbon/M, var/alien, var/effect_multiplier)
	M.dizziness = 0
	M.drowsyness = 0
	M.stuttering = 0
	M.confused = 0
	if(M.ingested)
		for(var/datum/reagent/R in M.ingested.reagent_list)
			if(istype(R, /datum/reagent/ethanol))
				R.dose = max(R.dose - effect_multiplier, 0)

/datum/reagent/medicine/hyronalin
	name = "Hyronalin"
	id = "hyronalin"
	description = "Hyronalin is a medicinal drug used to counter the effect of radiation poisoning."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#408000"
	metabolism = REM * 0.25
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/hyronalin/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.radiation = max(M.radiation - (3 * effect_multiplier), 0)

/datum/reagent/medicine/arithrazine
	name = "Arithrazine"
	id = "arithrazine"
	description = "Arithrazine is an unstable medication used for the most extreme cases of radiation poisoning."
	reagent_state = LIQUID
	color = "#008000"
	metabolism = REM * 0.25
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/arithrazine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.radiation = max(M.radiation - (7 + (M.radiation * 0.10)) * effect_multiplier, 0)
	M.adjustToxLoss(-(1 + (M.getToxLoss() * 0.05)) * effect_multiplier)
	if(prob(60))
		M.take_organ_damage(0.4 * effect_multiplier, 0)

/datum/reagent/medicine/spaceacillin
	name = "Spaceacillin"
	id = "spaceacillin"
	description = "An all-purpose antiviral agent."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#C1C1C1"
	metabolism = REM * 0.05 //Infections are already a pain in the neck to treat, this should ease having to re-dose every time above the 5u threshold.
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/spaceacillin/affect_blood(var/mob/living/carbon/M, var/alien, var/effect_multiplier)
	M.adjustToxLoss(-((0.1 + (M.getToxLoss() * 0.01)) * effect_multiplier))
	M.add_chemical_effect(CE_ANTITOX, 1)

/datum/reagent/medicine/sterilizine
	name = "Sterilizine"
	id = "sterilizine"
	description = "Sterilizes wounds in preparation for surgery and thoroughly removes blood."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#C8A5DC"
	touch_met = 5

/datum/reagent/medicine/sterilizine/affect_touch(mob/living/carbon/M, alien, effect_multiplier)
	M.germ_level -= min(effect_multiplier * 2, M.germ_level)
	for(var/obj/item/I in M.contents)
		I.was_bloodied = null
	M.was_bloodied = null

/datum/reagent/medicine/sterilizine/touch_obj(var/obj/O)
	O.germ_level -= min(volume*20, O.germ_level)
	O.was_bloodied = null

/datum/reagent/medicine/sterilizine/touch_turf(var/turf/T)
	T.germ_level -= min(volume*20, T.germ_level)
	for(var/obj/item/I in T.contents)
		I.was_bloodied = null
	for(var/obj/effect/decal/cleanable/blood/B in T)
		qdel(B)
	return TRUE

/datum/reagent/medicine/leporazine
	name = "Leporazine"
	id = "leporazine"
	description = "Leporazine can be used to stabilize an individual's body temperature."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/leporazine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(M.bodytemperature > 310)
		M.bodytemperature = max(310, M.bodytemperature - (40 * TEMPERATURE_DAMAGE_COEFFICIENT) * effect_multiplier)
	else if(M.bodytemperature < 311)
		M.bodytemperature = min(310, M.bodytemperature + (40 * TEMPERATURE_DAMAGE_COEFFICIENT) * effect_multiplier)

/* Antidepressants */

#define ANTIDEPRESSANT_MESSAGE_DELAY 5*60*10

/datum/reagent/medicine/methylphenidate
	name = "Methylphenidate"
	id = "methylphenidate"
	description = "Improves the ability to concentrate."
	taste_description = "sourness"
	reagent_state = LIQUID
	color = "#BF80BF"
	metabolism = 0.01
	data = 0

/datum/reagent/medicine/methylphenidate/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(volume <= 0.1 && data != -1)
		data = -1
		to_chat(M, SPAN_WARNING("You lose focus..."))
	else
		if(world.time > data + ANTIDEPRESSANT_MESSAGE_DELAY)
			data = world.time
			to_chat(M, SPAN_NOTICE("Your mind feels focused and undivided."))

/datum/reagent/medicine/citalopram
	name = "Citalopram"
	id = "citalopram"
	description = "Stabilizes the mind a little."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#FF80FF"
	metabolism = 0.01
	data = 0

/datum/reagent/medicine/citalopram/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(volume <= 0.1 && data != -1)
		data = -1
		to_chat(M, SPAN_WARNING("Your mind feels a little less stable..."))
	else
		M.add_chemical_effect(CE_MIND, 1)
		if(world.time > data + ANTIDEPRESSANT_MESSAGE_DELAY)
			data = world.time
			to_chat(M, SPAN_NOTICE("Your mind feels stable... a little stable."))

/datum/reagent/medicine/paroxetine
	name = "Paroxetine"
	id = "paroxetine"
	description = "Stabilizes the mind greatly, but has a chance of adverse effects."
	reagent_state = LIQUID
	color = "#FF80BF"
	metabolism = 0.01
	data = 0

/datum/reagent/medicine/paroxetine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(volume <= 0.1 && data != -1)
		data = -1
		to_chat(M, SPAN_WARNING("Your mind feels much less stable..."))
	else
		M.add_chemical_effect(CE_MIND, 2)
		if(world.time > data + ANTIDEPRESSANT_MESSAGE_DELAY)
			data = world.time
			if(prob(90))
				to_chat(M, SPAN_NOTICE("Your mind feels much more stable."))
			else
				to_chat(M, SPAN_WARNING("Your mind breaks apart..."))
				M.hallucination(200, 100)

/datum/reagent/medicine/rezadone
	name = "Rezadone"
	id = "rezadone"
	description = "A powder with almost magical properties, this substance can effectively treat genetic damage in humanoids, though excessive consumption has side effects."
	taste_description = "sickness"
	reagent_state = SOLID
	color = "#669900"
	overdose = REAGENTS_OVERDOSE * 0.4 // Should OD at 12 units, you still shouldn't ever use more than 2u at a time anyways. - Seb
	scannable = 1

/datum/reagent/medicine/rezadone/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.adjustCloneLoss(-(2 + (M.getCloneLoss() * 0.05)) * effect_multiplier)
	M.adjustOxyLoss(-0.2 * effect_multiplier)
	M.heal_organ_damage(2 * effect_multiplier, 2 * effect_multiplier, 5 * effect_multiplier, 5 * effect_multiplier)
	M.adjustToxLoss(-(2 + (M.getToxLoss() * 0.05)) * effect_multiplier)
	if(dose > 3)
		M.status_flags &= ~DISFIGURED
	if(dose > 10)
		M.make_dizzy(5)
		M.make_jittery(5)

/datum/reagent/medicine/rezadone/overdose(var/mob/living/carbon/M, var/alien)
	M.adjustCloneLoss(4)

/datum/reagent/medicine/quickclot
	name = "Quickclot"
	id = "quickclot"
	description = "Temporarily halts any internal and external bleeding. Also helps heal and repair blood vessels"
	taste_description = "metal"
	reagent_state = LIQUID
	color = "#a6b85b"
	overdose = REAGENTS_OVERDOSE/2
	metabolism = REM/4 //we take a LONG time to remove areselfs!
	scannable = 1

/datum/reagent/medicine/quickclot/affect_blood(mob/living/carbon/M, alien, effect_multiplier, var/removed = REM)
	M.add_chemical_effect(CE_BLOODCLOT, min(1,0.1 * effect_multiplier))	// adding 0.01 to be more than 0.1 in order to stop int bleeding from growing
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		for(var/obj/item/organ/external/E in H.organs)
			for(var/datum/wound/W in E.wounds)
				if(W.internal)
					W.heal_damage(10 * effect_multiplier)
		var/obj/item/organ/internal/blood_vessel/B = H.random_organ_by_process(OP_BLOOD_VESSEL)
		if(H && istype(H))
			if(BP_IS_ROBOTIC(B))
				return
			if(B.damage > 0)
				B.damage = max(B.damage - 5 * removed, 0)

/datum/reagent/medicine/quickclot/overdose(mob/living/carbon/M, alien)
	M.add_chemical_effect(CE_BLOODCLOT, min(1, 0.20))

/datum/reagent/medicine/ossisine
	name = "Ossisine"
	id = "ossisine"
	description = "Restores broken bones. Medicate in critical conditions only. Overdose makes cellular failure and paralyses the user."
	taste_description = "calcium"
	reagent_state = LIQUID
	color = "#660679"
	overdose = 11 //Can be used in hypos and the like
	metabolism = REM * 1.5 // Hard stun, impractical use for the situations it's used, and healing per removed unit, this was needed.
	scannable = 1

/datum/reagent/medicine/ossisine/affect_blood(mob/living/carbon/M, alien, effect_multiplier, var/removed = REM)
	M.add_chemical_effect(CE_BLOODCLOT, 0.1)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/bone/B = H.random_organ_by_process(OP_BONE)
		if(H && istype(H))
			if(BP_IS_ROBOTIC(B))
				return
			if(B.damage > 0)
				B.damage = max(B.damage - 5 * removed, 0)


/datum/reagent/medicine/ossisine/overdose(mob/living/carbon/M, alien)
	M.paralysis = max(M.paralysis, 5)
	M.adjustCloneLoss(2)

	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		//if(dose >= overdose) //Less gaming, do surgery you lazy butt. // Love you too Seb <3
		var/list/brokenBP = list()
		for(var/obj/item/organ/external/E in H.organs)
			if(E.is_broken())
				brokenBP += E
		if(brokenBP.len)
			var/obj/item/organ/external/E = pick(brokenBP)
			E.mend_fracture()
			M.pain(E.name, 60, TRUE)
			dose = 0

/datum/reagent/medicine/noexcutite
	name = "Noexcutite"
	id = "noexcutite"
	description = "A thick, syrupy liquid that has a lethargic effect. Used to cure cases of jitteriness."
	taste_description = "numbing coldness"
	reagent_state = LIQUID
	color = "#bc018a"
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/noexcutite/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.make_jittery(-50)

/datum/reagent/medicine/noexcutite/overdose(mob/living/carbon/M, alien)
	M.paralysis = max(M.paralysis, 5)

/datum/reagent/medicine/kyphotorin
	name = "Kyphotorin"
	id = "kyphotorin"
	description = "A strange chemical that allows a patient to regrow organic limbs. Requires the use of cryogenics and is slow-acting. The process is extremely painful and may damage the body if dosed incorrectly."
	taste_description = "metal"
	reagent_state = LIQUID
	color = "#7d88e6"
	overdose = REAGENTS_OVERDOSE * 0.66
	scannable = 1

/datum/reagent/medicine/kyphotorin/affect_blood(var/mob/living/carbon/M, var/alien, var/effect_multiplier)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(prob(0.5 * effect_multiplier + dose) || dose >= overdose)
			var/list/missingLimbs = list()
			for(var/name in BP_ALL_LIMBS)
				if(!H.has_appendage(name))
					missingLimbs += name
			if(missingLimbs.len)
				var/luckyLimbName = pick(missingLimbs)
				H.restore_organ(luckyLimbName)
				M.pain(luckyLimbName, 100, TRUE)
				dose = 0
	if(prob(10))
		M.take_organ_damage(pick(0,15))

/datum/reagent/medicine/kyphotorin/overdose(mob/living/carbon/M, alien)
	M.adjustCloneLoss(4)

/datum/reagent/medicine/polystem
	name = "Polystem"
	id = "polystem"
	description = "Polystem boosts natural body regeneration."
	taste_description = "bitterness"
	taste_mult = 3
	reagent_state = LIQUID
	color = "#ded890"
	scannable = 1
	metabolism = REM/2
	overdose = REAGENTS_OVERDOSE

/datum/reagent/medicine/polystem/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.heal_organ_damage(0.3 * effect_multiplier, 0, 3 * effect_multiplier)
	M.add_chemical_effect(CE_BLOODCLOT, min(1,0.1 * effect_multiplier))

/datum/reagent/medicine/polystem/overdose(mob/living/carbon/M, alien)
	M.add_chemical_effect(CE_BLOODCLOT, min(1,0.1))

/datum/reagent/medicine/detox
	name = "Detox"
	id = "detox"
	description = "Boosts neural regeneration, bolstering the nervous system against large doses of chemicals without permanent damage."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#229e08"
	overdose = REAGENTS_OVERDOSE
	scannable = 1
	metabolism = REM/2

/datum/reagent/medicine/detox/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(!M.metabolism_effects.nsa_chem_bonus)
		M.metabolism_effects.nsa_chem_bonus += rand(20, 60)
		M.metabolism_effects.calculate_nsa()

/datum/reagent/medicine/detox/on_mob_delete(mob/living/L)
	..()
	var/mob/living/carbon/C = L
	if(istype(C))
		C.metabolism_effects.nsa_threshold = initial(C.metabolism_effects.nsa_chem_bonus)
		C.metabolism_effects.calculate_nsa()

/datum/reagent/medicine/detox/overdose(mob/living/carbon/M, alien)
	var/mob/living/carbon/C = M
	if(istype(C))
		C.metabolism_effects.nsa_chem_bonus = -rand(20, 40)
		M.metabolism_effects.calculate_nsa()

/datum/reagent/medicine/purger
	name = "Purger"
	id = "purger"
	description = "Temporarily purges all addictions, as well as repairing kidneys."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#d4cf3b"
	scannable = 1
	metabolism = REM/2

/datum/reagent/medicine/purger/affect_blood(mob/living/carbon/M, alien, effect_multiplier, var/removed = REM)
	M.add_chemical_effect(CE_PURGER, 1)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/kidney/K = H.random_organ_by_process(OP_KIDNEYS)
		if(H && istype(H))
			if(BP_IS_ROBOTIC(K))
				return
			if(K.damage > 0)
				K.damage = max(K.damage - 5 * removed, 0)

/datum/reagent/medicine/addictol
	name = "Addictol"
	id = "addictol"
	description = "Purges all addictions."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#0179e7"
	scannable = 1
	metabolism = REM/2

/datum/reagent/medicine/addictol/affect_blood(var/mob/living/carbon/M, var/alien, var/effect_multiplier)
	var/mob/living/carbon/C = M
	if(istype(C) && C.metabolism_effects.addiction_list.len)
		if(prob(5 * effect_multiplier + dose))
			var/datum/reagent/R = pick(C.metabolism_effects.addiction_list)
			to_chat(C, SPAN_NOTICE("You dont crave for [R.name] anymore."))
			C.metabolism_effects.addiction_list.Remove(R)
			qdel(R)

/datum/reagent/medicine/addictol/on_mob_delete(mob/living/L)
	..()
	var/mob/living/carbon/C = L
	if(dose >= 10)
		if(istype(C))
			C.remove_all_addictions()

/datum/reagent/medicine/aminazine
	name = "Aminazine"
	id = "aminazine"
	description = "Medication designed to suppress withdrawal effects for some time."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#88336f"
	overdose = REAGENTS_OVERDOSE
	scannable = 1
	metabolism = REM/2

/datum/reagent/medicine/aminazine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_NOWITHDRAW, 1)

/datum/reagent/medicine/haloperidol
	name = "Haloperidol"
	id = "haloperidol"
	description = "Purges all forms of toxins, stimulants and other reagents from the bloodstream, and sedates the patient. An overdose of Haloperidol can be fatal."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#ba1f04"
	overdose = REAGENTS_OVERDOSE/2
	scannable = 1
	metabolism = REM/2

/datum/reagent/medicine/haloperidol/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(M.bloodstr)
		for(var/current in M.bloodstr.reagent_list)
			var/datum/reagent/toxin/R = current
			if(!istype(R, src))
				R.remove_self(effect_multiplier * pick(list(2,4,6)))
			var/datum/reagent/stim/S = current
			if(!istype(S, src))
				S.remove_self(effect_multiplier * pick(list(2,4,6)))
	var/effective_dose = dose
	if(issmall(M))
		effective_dose *= 2

	if(effective_dose < 1)
		if(effective_dose == metabolism * 2 || prob(5))
			M.emote("yawn")
	else if(effective_dose < 1.5)
		M.eye_blurry = max(M.eye_blurry, 10)
	else if(effective_dose < 3)
		if(prob(50))
			M.Weaken(2)
		M.drowsyness = max(M.drowsyness, 20)
	else
		M.sleeping = max(M.sleeping, 20)
		M.drowsyness = max(M.drowsyness, 60)
	M.add_chemical_effect(CE_PULSE, -1)

/datum/reagent/medicine/haloperidol/overdose(mob/living/carbon/M, alien)
	M.adjustToxLoss(6)

/*
/datum/reagent/medicine/vomitol //Why is the same chem defined on two different files?
	name = "Vomitol"
	id = "vomitol"
	description = "Forces patient to vomit - results in total cleaning of his stomach. Has extremely unpleasant taste."
	taste_description = "worst thing in the world"
	reagent_state = LIQUID
	color = "#a6b85b"
	overdose = REAGENTS_OVERDOSE
	scannable = 1

/datum/reagent/medicine/vomitol/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(prob(10 * effect_multiplier))
		M.vomit()
*/

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Meds made from animals. Unga.
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/datum/reagent/medicine/tangu_extract
	name = "Tangu Extract"
	id = "tangu_extract"
	description = "The extracted juices from a tangu horn, a powerful multi-purpose healing chemical derived from bone marrow and tangu blood."
	taste_description = "vitamins"
	reagent_state = LIQUID
	color = "#BF0000"
	scannable = 1
	overdose = REAGENTS_OVERDOSE

/datum/reagent/medicine/tangu_extract/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.adjustOxyLoss(-1.2 * effect_multiplier)
	M.heal_organ_damage(0.6 * effect_multiplier, 0.6 * effect_multiplier)
	M.adjustToxLoss(-0.6 * effect_multiplier)
	M.add_chemical_effect(CE_BLOODCLOT, 0.2)

/datum/reagent/medicine/tangu_extract/overdose(var/mob/living/carbon/M, var/alien)
	. = ..()
	M.adjustToxLoss(5)
	M.adjustBrainLoss(1)
	if(M.losebreath < 15)
		M.losebreath++

/datum/reagent/medicine/clucker_extract
	name = "Clucker Extract"
	id = "clucker_extract"
	description = "A weak painkiller derived from the juices found in compressed clucker feathers."
	taste_description = "sickness"
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose = 60
	scannable = 1
	metabolism = 0.02

/datum/reagent/medicine/clucker_extract/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 130, TRUE)

/datum/reagent/medicine/clucker_extract/overdose(mob/living/carbon/M, alien)
	..()
	M.druggy = max(M.druggy, 2)

/datum/reagent/medicine/spaceacillin/tahcacillin
	name = "Tahcacillin"
	id = "tahcacillin"
	description = "An all-purpose antiviral agent derived from tahca horns crushed into a blood mixed extract."
	constant_metabolism = TRUE

/datum/reagent/medicine/sterilizer
	name = "sterilizer"
	id = "sterilizer"
	description = "Sterilizing solution used in making medical supplies. Don't.. drink it."
	taste_description = "soap"
	reagent_state = LIQUID
	color = "#00FFFF"
	scannable = 1

/datum/reagent/medicine/sterilizer/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	if(prob(10 * effect_multiplier))
		M.vomit()
