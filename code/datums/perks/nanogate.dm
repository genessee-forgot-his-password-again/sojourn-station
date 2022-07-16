// Perks given by the nanogate organ

/datum/perk/nanogate
	name = "Nanogate Implant"
	desc = "At some point you chose to have a nanogate installed in your body, the metallic nanite based implant goes directly at the base of your skull right where your spine connects. While \
	quite powerful and widely useful, but there are side effects. Those with a nanogate find it far more difficult to become inspired. On top of this, nanogates violently attack any mutations \
	it detects in the body, which can be harmful when combined with fast-acting genetic modifications."
	gain_text = "Your head aches for a moment, the effects of your spine having been seperated and an advanced machine slotted inbetween leaving you with a dull pain that is quickly cured \
	by your nanites."

/datum/perk/nanite_regen
	name = "Nanite Regeneration"
	desc = "You configure your nanite matrix to begin aiding in your natural healing."
	gain_text = "You feel a dull ache as your nanogate releases newly configured nanites into your body."
	var/regen_rate = 0.5 //This seems low but this is per human handle_chemicals_in_body meaning this is rather robust

/datum/perk/nanite_muscle
	name = "Nanofiber Muscle Therapy"
	desc = "Through the use of pain killers, implanted nanofibers, and small dispersed drug therapy to critical areas your nanogate has enhanced your physical movement speed and endurance, allowing you to run for \
	longer stretches at a faster pace without tiring."
	gain_text = "You feel a dull ache as your nanogate releases newly configured nanites into your body."

/datum/perk/nanite_armor
	name = "Nanite Skin-Weave"
	desc = "Through the use of reactive nanites designed to plate together into a shield your machines can reform at a lightning pace to let you physically resist incoming damage by forming a \
	mesh weave shield just before a strike connects. Effective, but only against physical brute damage."
	gain_text = "You feel a dull ache as your nanogate releases newly configured nanites into your body."
	var/armor_mod = 0.2

/datum/perk/nanite_armor/assign(mob/living/carbon/human/H)
	..()
	holder?.brute_mod_perk -= armor_mod

/datum/perk/nanite_armor/remove()
	..()
	holder?.brute_mod_perk += armor_mod

/datum/perk/nanite_chem
	name = "Nanite Chemicals"
	desc = "You programmed and set aside a specific subset of nanites who have a singular purpose that you can call upon at any time to engage their effect, but this only works once."
	gain_text = "You feel a dull ache as your nanogate releases newly configured nanites into your body."
	active = FALSE
	passivePerk = FALSE
	var/chem_id = "nanites"
	var/chem_amount = 15
	var/anti_cheat = FALSE //Used to prevent multy stacking clicking

/datum/perk/nanite_chem/activate()
	..()
	if(anti_cheat)
		to_chat(holder, "Something feels cold.")
		return
	anti_cheat = TRUE
	to_chat(holder, "You feel a sudden rush as the pre-programed nanites enter your bloodstream.")
	holder.reagents.add_reagent(chem_id, chem_amount)
	spawn(20) holder.stats.removePerk(src.type) // Delete the perk

/datum/perk/nanite_chem/implantoids
	name = "Implantoids Nanites"
	chem_id = "implant nanites"

/datum/perk/nanite_chem/trauma_control_system
	name = "Trauma Control System Nanites"
	chem_id = "trauma_control_system"

/datum/perk/nanite_chem/control_booster_utility
	name = "Control Booster Utility Nanites"
	chem_id = "cbu"

/datum/perk/nanite_chem/control_booster_combat
	name = "Control Booster Combat Nanites"
	chem_id = "cbc"

/datum/perk/nanite_chem/purgers
	name = "Purger Nanites"
	chem_id = "nanopurgers"

/datum/perk/nanite_chem/oxyrush
	name = "Oxyrush Nanites"
	chem_id = "oxyrush"

/datum/perk/nanite_chem/nantidotes
	name = "Nantidotes"
	chem_id = "nantidotes"

/datum/perk/nanite_ammo
	name = "Munition Fabrication"
	desc = "You programmed and set aside a specific subset of nanites whose singular purpose is to reconstruct themselves into ammunition boxes. The process is quite intensive and requires \
	one hour between uses."
	gain_text = "You feel a dull ache as your nanogate releases newly configured nanites into your body."
	active = FALSE
	passivePerk = FALSE
	var/cooldown = 60 MINUTES
	var/anti_cheat = FALSE //No more spaming...

/datum/perk/nanite_ammo/activate()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your nanites didn't ready an ammo box yet."))
		return FALSE

	if(anti_cheat)
		to_chat(holder, "Something feels cold.")
		return
	anti_cheat = TRUE

	var/list/ammo_boxes = typesof(/obj/item/ammo_magazine/ammobox)
	//We cant print everything under the sun sadly, so we limit are options a small bit!
	//No SI laser ammo, explosives, some higher end boxes/ammo, and church biomatter boxes
	ammo_boxes -= list(	/obj/item/ammo_magazine/ammobox,
						/obj/item/ammo_magazine/ammobox/pistol_35/laser,
						/obj/item/ammo_magazine/ammobox/pistol_35/biomatter,
						/obj/item/ammo_magazine/ammobox/magnum_40/laser,
						/obj/item/ammo_magazine/ammobox/magnum_40/biomatter,
						/obj/item/ammo_magazine/ammobox/light_rifle_257_small/laser,
						/obj/item/ammo_magazine/ammobox/rifle_75_small/laser,
						/obj/item/ammo_magazine/ammobox/laser_223,
						/obj/item/ammo_magazine/ammobox/laser_223/ap,
						/obj/item/ammo_magazine/ammobox/laser_223/lethal,
						/obj/item/ammo_magazine/ammobox/kurtz_50/laser,
						/obj/item/ammo_magazine/ammobox/antim, //Unlike the small box holds 15
						/obj/item/ammo_magazine/ammobox/ball,
						/obj/item/ammo_magazine/ammobox/heavy_rifle_408_small/laser,
						/obj/item/ammo_magazine/ammobox/shotgun/flashshells, //holds 70 shells, its a map item not meant to be common
						/obj/item/ammo_magazine/ammobox/shotgun/payload,
						/obj/item/ammo_magazine/ammobox/shotgun/incendiary
						)
	var/obj/item/choice = input(usr, "Which type of ammo do you want?", "Ammo Choice", null) as null|anything in ammo_boxes
	usr.put_in_hands(new choice(usr.loc))
	cooldown_time = world.time + cooldown

	anti_cheat = FALSE
	return ..()
