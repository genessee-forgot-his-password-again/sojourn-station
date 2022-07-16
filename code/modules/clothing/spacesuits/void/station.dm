// Station voidsuits
//Engineering rig
/obj/item/clothing/head/helmet/space/void/engineering
	name = "engineering voidsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low-pressure environment. Has radiation shielding."

	action_button_name = "Toggle Headlamp"
	brightness_on = 4 //luminosity when on
	light_overlay = "hardhat_light"

	icon_state = "technohelmet_void"
	item_state = "technohelmet_void"
	light_overlay = "technohelmet_light"
	item_state_slots = list(
		slot_l_hand_str = "eng_helm",
		slot_r_hand_str = "eng_helm",
		)
	armor_list = list(
		melee = 35,
		bullet = 30,
		energy =30,
		bomb = 40,
		bio = 100,
		rad = 100
	)
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	obscuration = MEDIUM_OBSCURATION

/obj/item/clothing/head/helmet/space/void/engineering/verb/toggle_eyeglass()
	set name = "Adjust Eyeglass node"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["generic"] = "technohelmet_void"
	options["visor"] = "technohelmet_void_visor"
	options["googles"] = "technohelmet_void_googles"

	var/choice = input(M,"What kind of eyeglass node do you want to look through?","Adjust visor") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your helmet's eyeglass node into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/space/void/engineering
	name = "engineering voidsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Has radiation shielding."
	icon_state = "technosuit_void"
	item_state = "technosuit_void"
	armor_list = list(
		melee = 35,
		bullet = 30,
		energy = 30,
		bomb = 40,
		bio = 100,
		rad = 100
	)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	extra_allowed = list(
		/obj/item/storage/toolbox,
		/obj/item/storage/briefcase/inflatable,
		/obj/item/device/t_scanner,
		/obj/item/rcd
	)
	helmet = /obj/item/clothing/head/helmet/space/void/engineering

/obj/item/clothing/suit/space/void/engineering/equipped
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/jetpack/oxygen

//Scav
/obj/item/clothing/head/space/void/riggedvoidsuit
	name = "makeshift armored helmet"
	desc = "A makeshift armored helmet you can see the glue holding it, just close enough to be airtight."
	icon_state = "makeshift_void"
	item_state = "makeshift_void"
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	flash_protection = FLASH_PROTECTION_MAJOR
	item_flags = STOPPRESSUREDAMAGE|THICKMATERIAL|AIRTIGHT|COVER_PREVENT_MANIPULATION
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR

	matter = list(MATERIAL_STEEL = 6, MATERIAL_GLASS = 4, MATERIAL_PLASTIC = 3)
	armor_list = list(
		melee = 25,
		bullet = 20,
		energy = 20,
		bomb = 25,
		bio = 100,
		rad = 0
	)
	light_overlay = "helmet_light_dual"
	siemens_coefficient = 0.8
	obscuration = MEDIUM_OBSCURATION

/obj/item/clothing/head/space/void/riggedvoidsuit/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["makeshift armored helmet"] = "makeshift_void"
	options["alt makeshift armored helmet"] = "alt_scavenger_helmet"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your helmet's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1


/obj/item/clothing/suit/space/void/riggedvoidsuit
	name = "makeshift armored voidsuit"
	desc = "A makeshift armored voidsuit, you can see the glue holding it, just close enough to be airtight."
	icon_state = "makeshift_void"
	item_state = "makeshift_void"
	siemens_coefficient = 0.4
	armor_list = list(
		melee = 30,
		bullet = 20,
		energy = 20,
		bomb = 25,
		bio = 100,
		rad = 0
	)
	siemens_coefficient = 0.8
	slowdown = 1.6
	helmet = /obj/item/clothing/head/space/void/riggedvoidsuit
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_GLASS = 10, MATERIAL_PLASTIC = 20)
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	flash_protection = FLASH_PROTECTION_MAJOR
	item_flags = STOPPRESSUREDAMAGE|THICKMATERIAL|AIRTIGHT|COVER_PREVENT_MANIPULATION
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR


//Mining rig
/obj/item/clothing/head/helmet/space/void/mining
	name = "mining voidsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has reinforced plating and a high power light."

	action_button_name = "Toggle Headlamp"
	brightness_on = 6 //luminosity when on
	light_overlay = "hardhat_light"

	icon_state = "mining_helmet"
	item_state = "mining_helmet"
	item_state_slots = list(
		slot_l_hand_str = "mining_helm",
		slot_r_hand_str = "mining_helm",
		)
	armor_list = list(
		melee = 50,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	light_overlay = "helmet_light_dual"

/obj/item/clothing/suit/space/void/mining
	name = "mining voidsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Has reinforced plating."
	item_state = "miner_suit"
	icon_state = "miner_suit"
	slowdown = 0.35
	armor_list = list(
		melee = 50,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	helmet = /obj/item/clothing/head/helmet/space/void/mining

//CEO Rig
/obj/item/clothing/head/helmet/space/void/goldilocks
	name = "Goldilocks Gilded Helmet"
	desc = "A helmet designed to look good while watching people you paid to do your work for you. Not the best for personal protection, but lightweight."
	action_button_name = "Toggle Headlamp"
	brightness_on = 6 //luminosity when on
	icon_state = "goldilocks_helmet"
	item_state = "goldilocks_helmet"
	item_state_slots = list(
		slot_l_hand_str = "goldilocks_helm",
		slot_r_hand_str = "goldilocks_helm",
		)
	armor_list = list(
		melee = 50,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	light_overlay = "helmet_light_dual"
	siemens_coefficient = 2 //Guess what gold conducts?

/obj/item/clothing/suit/space/void/goldilocks
	name = "Goldilocks Gilded Voidsuit"
	desc = "Grandeur incarnated in a padded suit of armor, fitting for a CEO that would like to boast their wealth at the expense personal safety."
	item_state = "goldilocks_suit"
	icon_state = "goldilocks_suit"
	slowdown = 0
	armor_list = list(
		melee = 50,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	helmet = /obj/item/clothing/head/helmet/space/void/goldilocks
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/jetpack/void/cope
	siemens_coefficient = 2 //Guess what gold conducts?

//Medical Rig
/obj/item/clothing/head/helmet/space/void/medical
	name = "medical voidsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has minor radiation shielding."
	icon_state = "rig0-medical"
	item_state = "medical_helm"
	item_state_slots = list(
		slot_l_hand_str = "medical_helm",
		slot_r_hand_str = "medical_helm",
		)
	armor_list = list(
		melee = 20, // It's a literal glass cube
		bullet = 10,
		energy = 35,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	camera_networks = list(NETWORK_MEDICAL)

/obj/item/clothing/suit/space/void/medical
	icon_state = "rig-medical"
	name = "medical voidsuit"
	desc = "A special suit that protects against hazardous, low pressure environments. Has minor radiation shielding."
	item_state = "medical_voidsuit"
	slowdown = 0.25
	extra_allowed = list(
		/obj/item/storage/firstaid,
		/obj/item/device/scanner/health,
		/obj/item/stack/medical,
		/obj/item/roller
	)
	armor_list = list(
		melee = 35,
		bullet = 10,
		energy = 35,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	helmet = /obj/item/clothing/head/helmet/space/void/medical

/obj/item/clothing/suit/space/void/medical/equipped
	boots = /obj/item/clothing/shoes/magboots

	//Security
/obj/item/clothing/head/helmet/space/void/security
	name = "marshal voidsuit helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has an additional layer of armor."
	icon_state = "ihsvoidhelm"
	item_state = "ihsvoidhelm"
	item_state_slots = list(
		slot_l_hand_str = "sec_helm",
		slot_r_hand_str = "sec_helm",
		)
	obscuration = MEDIUM_OBSCURATION

	armor_list = list(
		melee = 50,
		bullet = 40,
		energy = 40,
		bomb = 40,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.7
	light_overlay = "helmet_light_ihs"
	camera_networks = list(NETWORK_SECURITY)

/obj/item/clothing/suit/space/void/security
	name = "marshal voidsuit"
	icon_state = "ihvoidsuit"
	desc = "A bulky suit that protects against hazardous, low pressure environments. Sacrifices mobility for protection"
	item_state = "ihvoidsuit"
	slowdown = 1
	armor_list = list(
		melee = 50,
		bullet = 40,
		energy = 40,
		bomb = 40,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.7
	helmet = /obj/item/clothing/head/helmet/space/void/security

/obj/item/clothing/suit/space/void/security/equipped
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/jetpack/oxygen

/obj/item/clothing/head/helmet/space/void/odst
	name = "Sol Federation voidsuit helmet"
	desc = "A helmet designed for military EVA operations, though not direct combat has a small light."

	action_button_name = "Toggle Headlamp"
	brightness_on = 3 //luminosity when on
	light_overlay = "hardhat_light"

	icon_state = "odst"
	item_state = "odst"
	item_state_slots = list(
		slot_l_hand_str = "sec_helm",
		slot_r_hand_str = "sec_helm",
		)

	armor_list = list(
		melee = 50,
		bullet = 40,
		energy = 40,
		bomb = 40,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.7
	light_overlay = "helmet_light_ihs"
	obscuration = MEDIUM_OBSCURATION

/obj/item/clothing/suit/space/void/odst
	name = "Sol Federation voidsuit"
	desc = "Do you wanna be a hero in the sky? High adventure, higher pay, join the Space Marines today."
	icon_state = "odst"
	item_state = "odst"
	slowdown = 1
	armor_list = list(
		melee = 50,
		bullet = 40,
		energy = 40,
		bomb = 40,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0.7
	helmet = /obj/item/clothing/head/helmet/space/void/odst


/obj/item/clothing/head/helmet/space/void/odst/mil
	name = "blackshield voidsuit helmet"
	icon_state = "odst_mil"
	item_state = "odst_mil"
	camera_networks = list(NETWORK_SECURITY)

/obj/item/clothing/suit/space/void/security/odst/mil
	name = "blackshield voidsuit"
	icon_state = "odst_mil"
	item_state = "odst_mil"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/mil

/obj/item/clothing/head/helmet/space/void/odst/corps
	name = "blackshield corpsman voidsuit helmet"
	icon_state = "odst_mil"
	item_state = "odst_mil"
	camera_networks = list(NETWORK_SECURITY)

/obj/item/clothing/suit/space/void/odst/corps
	name = "blackshield corpsman voidsuit"
	icon_state = "odst_corps"
	item_state = "odst_corps"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/corps



//Colored military suits//
/obj/item/clothing/head/helmet/space/void/odst/red
	name = "military voidsuit helmet"
	icon_state = "odst_red"
	item_state = "odst_red"

/obj/item/clothing/suit/space/void/odst/red
	name = "military voidsuit"
	icon_state = "odst_red"
	item_state = "odst_red"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/red

/obj/item/clothing/suit/space/void/odst/blue
	name = "military voidsuit"
	icon_state = "odst_blue"
	item_state = "odst_blue"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/blue

/obj/item/clothing/head/helmet/space/void/odst/blue
	name = "military voidsuit helmet"
	icon_state = "odst_blue"
	item_state = "odst_blue"

/obj/item/clothing/head/helmet/space/void/odst/orange
	name = "military voidsuit helmet"
	icon_state = "odst_orange"
	item_state = "odst_orange"

/obj/item/clothing/suit/space/void/odst/orange
	name = "military voidsuit"
	icon_state = "odst_orange"
	item_state = "odst_orange"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/orange

/obj/item/clothing/head/helmet/space/void/odst/purple
	name = "military voidsuit helmet"
	icon_state = "odst_purple"
	item_state = "odst_purple"

/obj/item/clothing/suit/space/void/odst/purple
	name = "military voidsuit"
	icon_state = "odst_purple"
	item_state = "odst_purple"
	helmet = /obj/item/clothing/head/helmet/space/void/odst/purple

//Atmospherics Rig (BS12)
/obj/item/clothing/head/helmet/space/void/atmos
	desc = "A special helmet designed for work in a hazardous, low pressure environments. Has improved thermal protection and minor radiation shielding."
	name = "atmospherics voidsuit helmet"

	action_button_name = "Toggle Headlamp"
	brightness_on = 4 //luminosity when on
	light_overlay = "hardhat_light"

	icon_state = "rig0-atmos"
	item_state = "atmos_helm"
	item_state_slots = list(
		slot_l_hand_str = "atmos_helm",
		slot_r_hand_str = "atmos_helm",
		)
	armor_list = list(
		melee = 30,
		bullet = 10,
		energy = 10,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	light_overlay = "helmet_light_dual"
	obscuration = MEDIUM_OBSCURATION

/obj/item/clothing/suit/space/void/atmos
	desc = "A special suit that protects against hazardous, low pressure environments. Has improved thermal protection and minor radiation shielding."
	icon_state = "rig-atmos"
	name = "atmos voidsuit"
	item_state = "atmos_voidsuit"
	armor_list = list(
		melee = 30,
		bullet = 10,
		energy = 10,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	helmet = /obj/item/clothing/head/helmet/space/void/atmos
	stiffness = MEDIUM_STIFFNESS

/obj/item/clothing/suit/space/void/security/equipped
	tank = /obj/item/tank/jetpack/oxygen

//Assault
/obj/item/clothing/head/space/void/assault
	name = "assault helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has an additional layer of armor as well as a light built in."

	action_button_name = "Toggle Headlamp"
	brightness_on = 4 //luminosity when on
	light_overlay = "hardhat_light"

	item_state_slots = list(
		slot_l_hand_str = "assaulthelm",
		slot_r_hand_str = "assaulthelm",
		)
	obscuration = MEDIUM_OBSCURATION

	armor_list = list(
		melee = 40,
		bullet = 65,
		energy = 50,
		bomb = 70,
		bio = 75,
		rad = 50
	)
	siemens_coefficient = 0.4
	light_overlay = "helmet_light_dual"

/obj/item/clothing/head/space/void/assault/New()
	icon_state = "assaulthelm-[pick("b","w","p","o","g","r")]"
	item_state = icon_state
	..()

/obj/item/clothing/head/space/void/assault/void_wolf
	name = "reaver assault helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has an additional layer of armor as well as a light built in. This one was made for a Void Wolf Reaver."

/obj/item/clothing/head/space/void/assault/void_wolf/New()
	icon_state = "assault_wolf"
	item_state = "assault_wolf"

/obj/item/clothing/suit/space/void/assault/void_wolf
	name = "reaver assault armor"
	icon_state = "assault_wolf"
	item_state = "assault_wolf"
	desc = "Void Wolves prey on Kriosan trade ships and frontier colonies all the time, in rare circumstances they engage military ships, with skilled and ballsy Void Wolf Reavers succeeding \
	and making off with expensive loot, such as this assault armor given a Void Wolf paint job."
	helmet = /obj/item/clothing/head/space/void/assault/void_wolf

/obj/item/clothing/suit/space/void/assault
	name = "assault armor"
	icon_state = "assaultsuit"
	desc = "A specialty import from the Kriosan Confederacy, usually imported by Lonestar LLC thanks to the companies' long standing trade agreement. It costs a king's ransom, albeit for a good reason \
	given its sturdy craftmenship and reinforced armor layers."
	item_state = "assaultsuit"
	armor_list = list(
		melee = 50,
		bullet = 75,
		energy = 60,
		bomb = 80,
		bio = 100,
		rad = 50
	)
	siemens_coefficient = 0.4
	slowdown = 0.6
	helmet = /obj/item/clothing/head/space/void/assault
	stiffness = MEDIUM_STIFFNESS

//Science
/obj/item/clothing/head/space/void/medarmor
	name = "soteria medical helmet"
	desc = "A special helmet designed for work in a hazardous, low pressure environment. Has an additional layer of armor and even a built in light."
	icon_state = "armor_medical"
	item_state = "armor_medical"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|BLOCKHAIR

	action_button_name = "Toggle Headlamp"
	brightness_on = 4 //luminosity when on
	light_overlay = "hardhat_light"

	body_parts_covered = HEAD|FACE|EARS
	item_state_slots = list(
		slot_l_hand_str = "assaulthelm",
		slot_r_hand_str = "assaulthelm",
		)

	armor_list = list(
		melee = 25,
		bullet = 30,
		energy = 20,
		bomb = 35,
		bio = 100,
		rad = 90
	)
	siemens_coefficient = 0.4
	light_overlay = "helmet_light_dual"
	matter = list(MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 5, MATERIAL_GLASS = 5)
	obscuration = 0

/obj/item/clothing/suit/space/void/medarmor
	name = "soteria medical void armor"
	icon_state = "armor_medical"
	desc = "A suit of all purpose soteria medical void armor. Used for operations where oxygen is a rarity and protection is needed."
	item_state = "armor_medical"
	armor_list = list(
		melee = 35,
		bullet = 35,
		energy = 55,
		bomb = 40,
		bio = 100,
		rad = 90
	)
	siemens_coefficient = 0.4
	helmet = /obj/item/clothing/head/space/void/medarmor
	matter = list(MATERIAL_STEEL = 40, MATERIAL_PLASTIC = 30, MATERIAL_GLASS = 10, MATERIAL_PLATINUM = 8)
	stiffness = MEDIUM_STIFFNESS

/obj/item/clothing/suit/space/void/medarmor/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile/energy) || istype(damage_source, /obj/item/projectile/beam))
		var/obj/item/projectile/P = damage_source

		var/reflectchance = 30 - round(damage/3)
		if(!(def_zone in list(BP_CHEST, BP_GROIN)))
			reflectchance /= 1.5
		if(P.starting && prob(reflectchance))
			visible_message(SPAN_DANGER("\The [user]\'s [name] reflects [attack_text]!"))

			// Find a turf near or on the original location to bounce to
			var/new_x = P.starting.x + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/new_y = P.starting.y + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/turf/curloc = get_turf(user)

			// redirect the projectile
			P.redirect(new_x, new_y, curloc, user)

			return PROJECTILE_CONTINUE // complete projectile permutation

/* commented out till i can get the 'race restriction' stuff to work - CDB
/obj/item/clothing/head/helmet/space/void/marqua
	name = "Mar'Qua voidsuit helmet"
	desc = "A standard issue helmet of Mar'Qua make, relatively lightly armored compared to other issue gear but made of advanced materials."
	icon_state = "marquahelm"
	armor_list = list(
		melee = 25,
		bullet = 40,
		energy = 40,
		bomb = 20,
		bio = 100,
		rad = 75
	)

/obj/item/clothing/head/helmet/space/void/marqua/equipped(mob/living/carbon/M)
	if(M.species.reagent_tag != IS_MARQUA)
		to_chat(SPAN_WARNING("[src] won't seem to fit!"))
		return FALSE
	..()

/obj/item/clothing/suit/space/void/marqua
	icon_state = "marquasuit"
	name = "Mar'Qua hardsuit"
	desc = "A relatively standard, if advanced suit of void protective gear, commonly seen among Mar'Qua vessels. The unusual anatomy of the Mar'Qua make fitting into this surprisingly light suit impossible for none Mar'Qua."
	slowdown = 0
	stiffness = LIGHT_STIFFNESS
	armor_list = list(
		melee = 25,
		bullet = 40,
		energy = 40,
		bomb = 20,
		bio = 100,
		rad = 75
	)
	helmet = /obj/item/clothing/head/helmet/space/void/marqua


/obj/item/clothing/suit/space/void/marqua/equipped(mob/living/carbon/M)
	if(M.species.reagent_tag != IS_MARQUA)
		to_chat(SPAN_WARNING("[src] won't seem to fit!"))
		return FALSE
	..() */ //super doesn't work lol