/obj/item/clothing/suit/storage/greatcoat/ihc
	name = "warrant officer's greatcoat"
	desc = "A durable greatcoat, designed for protecion and style."
	icon_state = "ihc_coat"
	item_state = "ihc_coat"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	armor_list = list(melee = 40, bullet = 40, energy = 30, bomb = 25, bio = 0, rad = 0) //Same as IH Commander standard coat
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	cold_protection = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/storage/greatcoat/ihc/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["WO Greatcoat"] = "ihc_coat"
	options["WO Cloaked Greatcoat"] = "ihc_coat_cloak"
	options["WO Blue Greatcoat"] = "ihc_coat_blue"
	options["WO Blue Cloaked Greatcoat"] = "ihc_coat_cloak_blue"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1


/obj/item/clothing/suit/greatcoat/cap
	name = "premier's greatcoat"
	desc = "A green greatcoat. Makes you feel like the leader you are supposed to be."
	icon_state = "cap_coat"
	item_state = "cap_coat"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	armor_list = list(melee = 35, bullet = 35, energy = 15, bomb = 5, bio = 0, rad = 0)
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	cold_protection = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7

/obj/item/clothing/suit/greatcoat/cap/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Premier Cloaked Greatcoat"] = "cap_coat_cloak"
	options["Premier Greatcoat"] = "cap_coat"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/storage/greatcoat/ihc/bmc
	name = "blackshield commander's greatcoat"
	desc = "A durable greatcoat, designed for protecion and style."
	icon_state = "mc_coat"
	item_state = "mc_coat"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	armor_list = list(melee = 40, bullet = 40, energy = 30, bomb = 25, bio = 0, rad = 0) //It's a formal coat, meant to protect against assassination and little else.
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	cold_protection = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7

/obj/item/clothing/suit/storage/greatcoat/ihc/bmc/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["BC Cloaked Greatcoat"] = "mc_coat_cloak"
	options["BC Greatcoat"] = "mc_coat"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1


//Credit to Drawsstuff for the coat mob icon only. The coat item icon, hat mob icon, and hat item icon were created by Kazkin via recoloring ERIS sprites.
/obj/item/clothing/suit/greatcoat/divisor
	name = "divisor greatcoat"
	desc = "A durable greatcoat designed for protection in mind. It has armor plating woven into the interior and comes with the same protection other church armor does."
	icon_state = "divisor_coat"
	item_state = "divisor_coat"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	armor_list = list(
		melee = 30,
		bullet = 30,
		energy = 10,
		bomb = 30,
		bio = 100,
		rad = 100
	)
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	cold_protection = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/greatcoat/absolutecoat
	name = "absolutist coat"
	desc = "A comfortable, decorated coat for the Absolutist faith and its supporters. Not as armored but just as ostentatious"
	icon_state = "absolutecoat"
	item_state = "absolutecoat"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	armor_list = list(
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 10,
		bio = 100,
		rad = 100
	)
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO
	cold_protection = UPPER_TORSO|ARMS|LOWER_TORSO
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7

/obj/item/clothing/suit/greatcoat/general
	name = "grey greatcoat"
	desc = "A grey greatcoat. It's thick and insulated with furs, it makes you feel snug and warm."
	icon_state = "greatcoat"
	item_state = "greatcoat"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7

/obj/item/clothing/suit/greatcoat/general/greatcoat_brown
	name = "brown greatcoat"
	desc = "A brown greatcoat. It's thick and insulated with furs, it makes you feel snug and warm."
	icon_state = "greatcoat_brown"
	item_state = "greatcoat_brown"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7

/obj/item/clothing/suit/storage/greatcoat/overcoatblack
	name = "black overcoat"
	desc = "A sturdy overcoat that harkens back to a simpler time."
	icon_state = "overcoat_black"
	item_state = "overcoat_black"

/obj/item/clothing/suit/storage/greatcoat/overcoatblack/brown
	name = "brown overcoat"
	desc = "A sturdy overcoat that harkens back to a simpler time."
	icon_state = "overcoat_brown"
	item_state = "overcoat_brown"

/obj/item/clothing/suit/storage/greatcoat/overcoatblack/edgy // Purse owner 5 reference.
	name = "phantom overcoat"
	desc = "Looking good, edgelord."
	icon_state = "phantom"
	item_state = "phantom"

/obj/item/clothing/suit/storage/greatcoat/overcoatblack/crimson // Saint's Row reference.
	name = "red overcoat"
	desc = "This coat costed more than Ryan's little crystal there in the vault."
	icon_state = "morningstar"
	item_state = "morningstar"

/obj/item/clothing/suit/greatcoat/general/german
	name = "thalatta overcoat"
	desc = "A sturdy overcoat from Thalatta, the city-ship filled with people of faith and technology. Not related to the local church, strangely enough, but worn by them sometimes."
	icon_state = "germancoat"
	item_state = "germancoat"

/obj/item/clothing/suit/greatcoat/cossackcoat
	name = "jaeger riding coat"
	desc = "A traditional riding coat often worn by Jaegers, typically inherited or tailored as an expensive practical gift. The design is murder in the humid jungle, but is a time-honored and comfortable jacket for irregulars who served on Krios, where they dressed like woodsmen in their ambush patrols on Sol-Fed regulars in the cold forests and swamps of home."
	icon_state = "cossackcoat"
	item_state = "cossackcoat"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7

/obj/item/clothing/suit/greatcoat/cossackcoat/edgelord
	name = "jaeger service coat"
	desc = " A tailored Jaeger dress-coat, kept to collect dust in a wardrobe all-year until the time of a village's ceremony or celebration. It is rigidly stitched and chokes the torso and arms to stiffen the chest and announce one's posture."
	icon_state = "cossackcoat_edgelord"
	item_state = "cossackcoat_edgelord"

/obj/item/clothing/suit/greatcoat/cossackarmoredcoat
	name = "jaeger hussar coat"
	desc = "The prescribed attempt at a uniform for the Jaeger irregulars during the Battle of Krios. Negotiated between the tailors and generals till its bulk-manufacture to the front, it is primarily composed of soft-armor and has served more time as an all-weather coat for soldaten on watch than it did as a piece of battle-rattle."
	icon_state = "cossackcoat_kislev"
	item_state = "cossackcoat_kislev"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	armor_list = list(
		melee = 10,
		bullet = 10,
		energy = 0,
		bomb = 10,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/greatcoat/os
	name = "Greyson Positronic greatcoat"
	desc = "A thick, heavy coat for workers form pipework to welding."
	icon_state = "os_overcoat"
	item_state = "os_overcoat"
	blood_overlay_type = "coat"
	armor_list = list(melee = 30, bullet = 10, energy = 25, bomb = 25, bio = 0, rad = 40)
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7
	stiffness = LIGHT_STIFFNESS
