
/obj/item/clothing/suit/armor
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	item_flags = THICKMATERIAL|DRAG_AND_DROP_UNEQUIP
	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6
	price_tag = 200
	tool_qualities = list(QUALITY_ARMOR = 100)
	max_upgrades = 1
	extra_allowed = list(/obj/item/tool/hammer/ironhammer)
	stiffness = 0

/obj/item/clothing/suit/armor/refresh_upgrades()
	var/obj/item/clothing/suit/armor/referencecarmor = new type()
	armor = referencecarmor.armor
	qdel(referencecarmor)
	..()

/*
 * Vests
 */
/obj/item/clothing/suit/armor/vest
	name = "armor vest"
	desc = "An armored vest that protects against some damage. Not designed for serious operations."
	icon_state = "armor"
	item_state = "armor"
	blood_overlay_type = "armor"
	armor_list = list(
		melee = 35,
		bullet = 35,
		energy = 35,
		bomb = 10,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/vest/full
	name = "full body armor"
	desc = "A generic armor vest, but with shoulderpads and kneepads included to cover all parts of the body. Not designed for serious operations."
	icon_state = "armor_fullbody"
	item_state = "armor_fullbody"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/vest/security
	name = "security armor"
	icon_state = "armor_security"
	desc = "A tactical armor vest that protects against some damage. Not designed for serious operations."

/obj/item/clothing/suit/armor/vest/security/full
	name = "full body security armor"
	desc = "A tactical armor vest, but with shoulderpads and kneepads included to cover all parts of the body. Not designed for serious operations."
	icon_state = "armor_security_fullbody"
	item_state = "armor_security_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/vest/detective
	name = "ranger armor vest"
	desc = "An armored vest with a ranger's badge on it."
	icon_state = "armor_detective"

/obj/item/clothing/suit/armor/vest/ironhammer
	name = "security armor vest"
	desc = "An armored vest that protects against some damage. This one has been done in marshal security colors. Not designed for serious operations."
	icon_state = "armor_ironhammer"

/obj/item/clothing/suit/storage/vest/ironhammer
	name = "webbed operator armor"
	desc = "An armored vest that protects against some damage. This one has been done in Ironhammer Security colors and has various pouches and straps attached."
	icon_state = "webvest_ironhammer"

/obj/item/clothing/suit/armor/vest/ironhammer/full
	name = "marshal tactical unit armor"
	desc = "An armored vest painted in Marshals colors. This one has shoulderpads and kneepads included to protect all parts of the body."
	icon_state = "armor_ih_fullbody"
	item_state = "armor_ih_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/vest/handmade
	name = "handmade armor vest"
	desc = "An armored vest of dubious quality. Provides decent protection against physical damage, for a piece of crap."
	icon_state = "armor_handmade"
	armor_list = list(
		melee = 30,
		bullet = 20,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	)
	price_tag = 150

/obj/item/clothing/suit/armor/vest/handmade/full
	name = "full handmade armor vest"
	desc = "An armored vest of dubious quality. This one has had metal sheets attached to the shoulders and knees to be used as makeshift shoulderpads and kneepads."
	icon_state = "armor_handmade_fullbody"
	item_state = "armor_handmade_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS
	armor_list = list(
		melee = 30,
		bullet = 20,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	) // No gaining stats, just coverage!

/obj/item/clothing/suit/armor/vest/handmade_black
	name = "handmade black armor vest"
	desc = "An armored vest of dubious quality. Provides decent protection against physical damage, for a piece of crap. This one is black."
	icon_state = "hm_armorvest_black"
	armor_list = list(
		melee = 30,
		bullet = 20,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	)
	price_tag = 150

/obj/item/clothing/suit/armor/vest/handmade_black/full
	name = "full handmade black armor vest"
	desc = "An armored vest of dubious quality. This one has had metal sheets attached to the shoulders and knees to be used as makeshift shoulderpads and kneepads. It also comes in black."
	icon_state = "hm_armorvest_black_full"
	item_state = "hm_armorvest_black_full"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = MEDIUM_STIFFNESS
	armor_list = list(
		melee = 30,
		bullet = 20,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	) // No gaining stats, just coverage!

/obj/item/clothing/suit/armor/vest/iron_lock_security
	name = "outdated ablative vest"
	desc = "An \"Iron Lock Security\" ablative vest with plates designed to absorb rather than reflect energy projectiles. Produced by Greyson Positronic."
	icon_state = "northtech"
	matter = list(MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 20, MATERIAL_PLATINUM = 5)
	armor_list = list(
		melee = 15,
		bullet = 15,
		energy = 50,
		bomb = 0,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/vest/ablative
	name = "ablative vest"
	desc = "An ablative vest with plates designed to absorb rather than reflect energy projectiles."
	icon_state = "northtech"
	matter = list(MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 20, MATERIAL_PLATINUM = 10)
	armor_list = list(
		melee = 15,
		bullet = 15,
		energy = 60,
		bomb = 0,
		bio = 0,
		rad = 0
	)


/obj/item/clothing/suit/armor/vest/botanist
	name = "botanist attire"
	desc = "Every rose has its thorns."
	icon_state = "botanist"
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor_list = list(melee = 30, bullet = 30, energy = 25, bomb = 20, bio = 100, rad = 80)
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/vest/botanist/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["botanist default"] = "botanist"
	options["cosine brigantine armor"] = "cosine_brigantine_armor"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/vest/acolyte
	name = "vector armor"
	desc = "Worn, heavy, steadfast in the name of God."
	icon_state = "acolyte"
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor_list = list(melee = 30, bullet = 30, energy = 25, bomb = 25, bio = 100, rad = 80)
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/vest/acolyte/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["vector default"] = "acolyte"
	options["tangent plate armor"] = "tangent_plate_armor"
	options["greater heart armor"] = "greater_heart"
	options["lemniscate armor"] = "lemniscate_armor"
	options["factorial armor"] = "factorial_armor"
	options["monomial armor"] = "monomial_armor"
	options["divisor armor"] = "divisor_armor"
	options["tessellate armor"] = "tessellate_armor"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/vest/path //No path ?
	name = "vinculum cassock"
	desc = "A heavy Cassock meant for the Vectors that possess no vows. This sturdy armor is made entirely out of biomatter and have no metal inner layer, but at the same time this sturdy armor is the thickest of any other armor made out of cloth, even thicker than a gambeson. But this armor is often used for rituals more than it is using for fighting, keeping the defensive properties only for emergencies."
	icon_state = "vinculum_cassock"
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor_list = list(melee = 30, bullet = 30, energy = 25, bomb = 25, bio = 100, rad = 80)
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/vest/path/divisor
	name = "divisor breastplate"
	desc = "One armor that reflects the path of the user. The Divisor Breastplate is a armor/uniform of a faithful Divisor on their way to protect the church and the flock. Differently of the other armors, the metallic parts of the armor stays in the outside layer while the biomatter cloth stays inside, keeping the divisor warm and comfortable without the constant steel plate graze."
	icon_state = "divisor_breastplate"

/obj/item/clothing/suit/armor/vest/path/tessallate
	name = "tessallate riding habit"
	desc = "One armor that reflects the path of the user. The Tessellate Riding Habit is the female version of the Plague Garbs, yet there is no issue for a man to use such piece of equipment. This is a tailored padded defensive Doublet with a reinforced, petticoat. In the mid 17th century, this type of clothes was used for riding sidesaddle, but now better used to the ones who vows to dedicate the life to religious service, under vows of the Tessellate, while staying protected from harm of the everyday upper colonies life."
	icon_state = "tessellate_riding_habit"

/obj/item/clothing/suit/armor/vest/path/tessallate_m
	name = "tessallate plague garbs"
	desc = "A sturdy, padded defensive doublet with chain mail inner layer with buttons that covers the entire body of the user, not allowing any single part of the skin to be intoxicated by biomatter or, by how it was intended, viral agents. It keeps the Vector from falling ill during any pandemic as Absolute wills it. This one can be coloured on a dark cloth, for situations of distress to show that one Tessellate Plague Doctor is acting nearby, and others must be aware."
	icon_state = "tessellate_plague_garbs"

/obj/item/clothing/suit/armor/vest/path/tessallate_m/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["default"] = "tessellate_plague_garbs"
	options["dark"] = "tessellate_plague_garbs_dark"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/vest/path/lemniscate
	name = "lemniscate simar"
	desc = "A very pompous long dress robe and a raised scarf with golden outlines and double hald-sleeves, without a sash. Biomatter is able to make different types of cloth with it's components, either a great silk substitute with a great price or a tough, kevlar-like aramid. This armor possess both alternatives and a light plate inside to protect the user's vital organs, used by Lemniscates during ceremonies and rituals, because such armor is so light it allows them to dance and still look good while doing so. It can even be considered a mixture of formal clothing and armor at the same time."
	icon_state = "lemniscate_simar"

/obj/item/clothing/suit/armor/vest/path/monomial
	name = "monomial kasaya"
	desc = "Kasaya are robes used by the Monks and Nuns of the church of the absolute, and most of the time used by hermits during their path towards the unknown. Used by the Devotees, it was once made for the ones that wanted to let clear their vows of poverty, being made with discarded fabric instead of biomatter. But with how the colony is a dangerous place, the Monomials needed to make do with the new reinforced biomatter cloth ordered by the Church while going on the upper colonies, yet this armor still respects the monomial vows by keeping one arm unprotected, while the other make do by reinforcing the armor rate in double."
	icon_state = "monomial_kasaya"

/obj/item/clothing/suit/armor/vest/path/factorial
	name = "factorial power garb"
	desc = "Powergarbs are curious things that aren't made out of circuits but rather have golem hematite foundations, curious technology that almost only the church possess with great variety beyond xenobiology, what explains the EMP-Immune nature of the powergarbs even if, in fact, the arms behind them are alive and are actually living golems that consented (following the Church absolute terms of Free-Will) into becoming the protection of a Factorial, in fact, the reason Church does not possess any borg falls entirely to their lack of free will."
	icon_state = "factorial_powergarb"

/obj/item/clothing/suit/armor/vest/rosaria
	name = "rosaria armor"
	desc = "The Rosaria protects."
	icon_state = "rosaria_armor"
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor_list = list(melee = 40, bullet = 40, energy = 40, bomb = 50, bio = 100, rad = 100)
	flags_inv = HIDEJUMPSUIT
	matter = list(MATERIAL_PLASTEEL = 60, MATERIAL_PLASTIC = 8, MATERIAL_SILVER = 5, MATERIAL_GOLD = 5)

/obj/item/clothing/suit/armor/vest/rosaria/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["rosaria default"] = "rosaria_armor"
	options["rosaria alt"] = "rosaria_alt_armor"


	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/vest/custodian
	name = "custodian armor"
	desc = "Someone's gotta clean this mess. While this armor is technically church property, Lonestar custodians often use it on loan to protect themselves from the colonies various dangerous pests."
	icon_state = "custodian"
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor_list = list(melee = 30, bullet = 30, energy = 25, bomb = 25, bio = 100, rad = 80)
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/vest/custodian/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["custodian default"] = "custodian"
	options["sine armor robes"] = "sine_armor_robes"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/vest/prime
	name = "prime armor"
	desc = "Trust in god, but keep your armor on."
	icon_state = "prime"
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor_list = list(melee = 40, bullet = 40, energy = 40, bomb = 50, bio = 100, rad = 100)
	flags_inv = HIDEJUMPSUIT
	matter = list(MATERIAL_PLASTEEL = 60, MATERIAL_PLASTIC = 8, MATERIAL_SILVER = 5, MATERIAL_GOLD = 5)

/obj/item/clothing/suit/armor/vest/prime/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["prime dark"] = "prime"
	options["prime royal"] = "prime_alt"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/vest/technomancersuit
	name = "'Mark V' environmental protection suit"
	desc = "For working in hazardous environments. While it is built for most environments, one of those is not space. As a tradeoff, it can be modified more."
	icon_state = "technosuit"
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor_list = list(melee = 40, bullet = 40, energy = 35, bomb = 50, bio = 100, rad = 100)
	max_upgrades = 2
	extra_allowed = list(/obj/item/extinguisher,
						 /obj/item/tool,
						 /obj/item/tool_upgrade,
						 /obj/item/stack/cable_coil,
						 /obj/item/device/t_scanner,
						 /obj/item/device/scanner/gas,
						 /obj/item/taperoll/engineering,
						 /obj/item/storage/toolbox)
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/vest/soteriasuit
	name = "'Mark II' environmental protection suit"
	desc = "For working in hazardous environments. While its built for most environments, one of those is not space. This suit is a cheap and badly made copy of the Artificer Guilds original design. \
	Unlike its superior variant, it offers significantly less armor but it is made out of basic steel, making it a cheaper, easier alternative to build while also being easier to modify."
	icon_state = "armor_engineering"
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	max_upgrades = 2
	armor_list = list(melee = 35, bullet = 25, energy = 25, bomb = 30, bio = 50, rad = 50)
	extra_allowed = list(/obj/item/extinguisher,
						 /obj/item/tool,
						 /obj/item/tool_upgrade,
						 /obj/item/stack/cable_coil,
						 /obj/item/device/t_scanner,
						 /obj/item/device/scanner/gas,
						 /obj/item/taperoll/engineering,
						 /obj/item/storage/toolbox)
	flags_inv = HIDEJUMPSUIT
	matter = list(MATERIAL_STEEL = 40)

/obj/item/clothing/suit/armor/bulletproof
	name = "bulletproof vest"
	desc = "A vest that excels in protecting the wearer against high-velocity solid projectiles."
	icon_state = "bulletproof"
	item_state = "armor"
	blood_overlay_type = "armor"
	slowdown = 0.5
	armor_list = list(
		melee = 25,
		bullet = 60,
		energy = 25,
		bomb = 10,
		bio = 0,
		rad = 0
	)
	price_tag = 250

/obj/item/clothing/suit/armor/bulletproof/full
	name = "bulletproof suit"
	desc = "A vest that excels in protecting the wearer against high-velocity solid projectiles with added shoulderpads and kneepads for extra coverage."
	icon_state = "bulletproof_fullbody"
	item_state = "bulletproof_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS
	slowdown = 0.6 // Heavier since it now covers more of the body

/obj/item/clothing/suit/armor/bulletproof/ironhammer
	desc = "A bulky vest that excels in protecting the wearer against high-velocity solid projectiles with added shoulderpads and kneepads for extra coverage produced by Seinemetall Defense GmbH."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS
	slowdown = 0.6 // Heavier since it now covers more of the body
	icon_state = "bulletproof_ironhammer"
	item_state = "bulletproof_fullbody"

/obj/item/clothing/suit/armor/laserproof
	name = "reflective armor vest"
	desc = "A vest that excels in protecting the wearer against energy projectiles."
	icon_state = "ablative"
	item_state = "ablative"
	blood_overlay_type = "armor"
	slowdown = 0.5
	armor_list = list(
		melee = 25,
		bullet = 25,
		energy = 60,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	siemens_coefficient = 0
	price_tag = 325

/obj/item/clothing/suit/armor/laserproof/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack") //TODO: Refactor this all into humandefense
	if(istype(damage_source, /obj/item/projectile/energy) || istype(damage_source, /obj/item/projectile/beam))
		var/obj/item/projectile/P = damage_source

		var/reflectchance = 40 - round(damage/3)
		if(!(def_zone in list(BP_CHEST, BP_GROIN)))
			reflectchance /= 2
		if(P.starting && prob(reflectchance))
			visible_message(SPAN_DANGER("\The [user]'s [src.name] reflects [attack_text]!"))

			// Find a turf near or on the original location to bounce to
			var/new_x = P.starting.x + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/new_y = P.starting.y + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/turf/curloc = get_turf(user)

			// redirect the projectile
			P.redirect(new_x, new_y, curloc, user)

			return PROJECTILE_CONTINUE // complete projectile permutation

/obj/item/clothing/suit/armor/laserproof/rnd
	name = "soteria reflective armor vest"
	desc = "A Soteria branded vest that excels in protecting the wearer against energy projectiles. While it is much better at defending against lasers compared to standard ablative armor it lacks as much protection against melee and bullets but can be modified more."
	icon_state = "ablative_ironhammer"
	matter = list(MATERIAL_STEEL = 20, MATERIAL_PLASTIC = 20, MATERIAL_PLATINUM = 15)
	armor_list = list(
		melee = 20,
		bullet = 20,
		energy = 65,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	max_upgrades = 2
	siemens_coefficient = 0
	price_tag = 650
/*
 * Heavy Armor Types
 */
/obj/item/clothing/suit/armor/heavy
	name = "heavy armor"
	desc = "A heavily armored suit that protects against moderate damage."
	icon_state = "heavy"
	item_state = "swat_suit"
	w_class = ITEM_SIZE_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.9
	siemens_coefficient = 0.5
	item_flags = THICKMATERIAL|DRAG_AND_DROP_UNEQUIP|COVER_PREVENT_MANIPULATION|EQUIP_SOUNDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	slowdown = 0.9
	max_upgrades = 2
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor_list = list(
		melee = 40,
		bullet = 35,
		energy = 40,
		bomb = 30,
		bio = 0,
		rad = 0
	)
	equip_delay = 2 SECONDS
	price_tag = 125

/obj/item/clothing/suit/armor/heavy/red
	name = "Thunderdome suit (red)"
	desc = "Reddish armor."
	icon_state = "tdred"
	item_state = "tdred"
	siemens_coefficient = 1

/obj/item/clothing/suit/armor/heavy/green
	name = "Thunderdome suit (green)"
	desc = "Pukish armor."
	icon_state = "tdgreen"
	item_state = "tdgreen"
	siemens_coefficient = 1

// Riot suit
/obj/item/clothing/suit/armor/heavy/riot
	name = "riot suit"
	desc = "A suit of armor with heavy padding to protect against melee attacks. Looks like it might impair movement."
	icon_state = "riot"
	item_state = "swat_suit"
	flags_inv = HIDEJUMPSUIT
	armor_list = list(
		melee = 60,
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 0,
		rad = 0
	)
	price_tag = 250

/obj/item/clothing/suit/armor/heavy/riot/ironhammer
	name = "marshal riot suit"
	desc = "A suit of armor with heavy padding to protect against melee attacks. Looks like it might impair movement. This one is produced by Seinemetall Defense GmbH."
	icon_state = "riot_ironhammer"
	item_state = "swat_suit"

/*
 * Storage Types
 */
/obj/item/clothing/suit/storage/vest
	name = "webbed armor"
	desc = "An armored vest used for day-to-day operations. This one has various pouches and straps attached."
	icon_state = "webvest"
	price_tag = 250 //Normal vest is worth 200, this one is worth 250 because it also has storage space
	armor_list = list(
		melee = 20,
		bullet = 30,
		energy = 20,
		bomb = 25,
		bio = 0,
		rad = 0
	)

	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	item_flags = DRAG_AND_DROP_UNEQUIP|EQUIP_SOUNDS|THICKMATERIAL

	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/storage/vest/ironhammer
	name = "webbed operator armor"
	desc = "An armored vest that protects against some damage. This one has been done in Nadezhda Marshal colors and has various pouches and straps attached."
	icon_state = "webvest_ironhammer"

//Provides the protection of a merc voidsuit, but only covers the chest/groin, and also takes up a suit slot. In exchange it has no slowdown and provides storage.
/obj/item/clothing/suit/storage/vest/merc
	name = "heavy armor vest"
	desc = "A high-quality armor vest in a fetching tan. It is surprisingly flexible and light, even with the added webbing and armor plating."
	icon_state = "mercwebvest"
	item_state = "mercwebvest"
	max_upgrades = 0 //No upgrading this one
	tool_qualities = list()
	price_tag = 300
	armor_list = list(
		melee = 55,
		bullet = 55,
		energy = 55,
		bomb = 45,
		bio = 0,
		rad = 0
	)

//Has some armor and but is a mix of the scav suit and a webbing
/obj/item/clothing/suit/storage/vest/scav
	name = "armored rig"
	desc = "A simple plate carrier modified for personal use, additional pouches have been attached to it's front, \
	with matching knee and arm pads to protect limbs without hindering movement. \
	Opening the plate pouch would reveal a sheet of some Greyson alloy, welded and forced into a shape for the vest, \
	far lighter and offering more protection then it's more common ceramic counterparts."
	icon_state = "forehead_armor"
	item_state = "forehead_armor"
	max_upgrades = 0 //No upgrading this one
	tool_qualities = list()
	matter = list(MATERIAL_PLASTEEL = 24, MATERIAL_PLASTIC = 35, MATERIAL_PLATINUM  = 4, MATERIAL_STEEL = 40) //worth stealing
	price_tag = 1200
	body_parts_covered = UPPER_TORSO|LEGS|ARMS|LOWER_TORSO
	cold_protection = UPPER_TORSO|LEGS|ARMS|LOWER_TORSO
	armor_list = list(
		melee = 40,
		bullet = 35,
		energy = 40,
		bomb = 35,
		bio = 0,
		rad = 0
	)
/obj/item/clothing/suit/storage/vest/scav/New()
	..()
	pockets = new/obj/item/storage/internal(src)
	pockets.storage_slots = 2	//two slots
	pockets.max_w_class = ITEM_SIZE_NORMAL		//fits two normal size items as its big pockets
	pockets.max_storage_space = 8
	pockets.cant_hold |= list(/obj/item/tool_upgrade/armor) //Prevents a bug

//Blackshield armor
/obj/item/clothing/suit/armor/platecarrier
	name = "plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes."
	icon_state = "platecarrier"
	item_state = "platecarrier"
	blood_overlay_type = "armor"
	armor_list = list(melee = 35, bullet = 45, energy = 20, bomb = 10, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/platecarrier/full
	name = "full body plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, in Blackshield colors. It has been improved by adding shoulderpads and kneepads for additional coverage."
	icon_state = "platecarrier_fullbody"
	item_state = "platecarrier_fullbody"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/platecarrier/ih
	name = "plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, in Marshals colors."
	icon_state = "platecarrier_ih"
	item_state = "platecarrier_ih"

/obj/item/clothing/suit/armor/platecarrier/ih/full
	name = "full body plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, in Marshals colors. It has been improved by adding shoulderpads and kneepads for additional coverage."
	icon_state = "platecarrier_ih_fullbody"
	item_state = "platecarrier_ih_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/platecarrier/militia
	name = "blackshield plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, this one bears the distinct IFF stripes of the Blackshield."
	icon_state = "platecarrier_mil"
	item_state = "platecarrier_mil"

/obj/item/clothing/suit/armor/platecarrier/militia/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Blackshield Colours"] = "platecarrier_mil"
	options["Desert Combat"] = "platecarrier_tan_mil"
	options["Woodlands Blackshield Combat"] = "platecarrier_green_mil"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1


/obj/item/clothing/suit/armor/platecarrier/militia/full
	name = "blackshield full body plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, as well as additional shoulderpads and kneepads, decorated with the IFF stripes of Blackshield."
	icon_state = "platecarrier_mil_fullbody"
	item_state = "platecarrier_mil_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/platecarrier/militia/full/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Blackshield Colours"] = "platecarrier_mil_fullbody"
	options["Desert Combat"] = "platecarrier_tan_mil_fullbody"
	options["Woodlands Blackshield Combat"] = "platecarrier_green_mil_fullbody"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/platecarrier/corpsman
	name = "Corpsman plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, this one is marked with Corpsman livery and has a stain resistant coating."
	icon_state = "platecarrier_corpsman"
	item_state = "platecarrier_corpsman"
	armor_list = list(melee = 35, bullet = 45, energy = 20, bomb = 10, bio = 20, rad = 0)

/obj/item/clothing/suit/armor/platecarrier/corpsman/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Blackshield Colours"] = "platecarrier_corpsman"
	options["Desert Combat"] = "platecarrier_tan_corpsman"
	options["Woodlands Blackshield Combat"] = "platecarrier_green_corpsman"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/platecarrier/corpsman/full
	name = "Corpsman full body plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, this one is marked with corpsman livery and has a stain resistant coating as well as additional shoulderpads and kneepads for added protection."
	icon_state = "platecarrier_corpsman_fullbody"
	item_state = "platecarrier_corpsman_fullbody"
	armor_list = list(melee = 35, bullet = 45, energy = 20, bomb = 10, bio = 20, rad = 0) // Just in case it doesn't inherit armor qualities
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/platecarrier/corpsman/full/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Blackshield Colours"] = "platecarrier_corpsman_fullbody"
	options["Desert Combat"] = "platecarrier_tan_corpsman_fullbody"
	options["Woodlands Blackshield Combat"] = "platecarrier_green_corpsman_fullbody"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/bulletproof/ironhammer/militia
	name = "Blackshield bulletproof suit"
	desc = "A set of vest, shoulder guards and leg guards that excel at protecting against high-velocity, solid projectiles. \
			This particular set seems to have been taken straight from the armory of some low-budget P.D.F or Reserve force, repainted in \
			Blackshield colors and given their I.F.F markings."
	icon_state = "bulletproof_bs"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS


/obj/item/clothing/suit/armor/vest/ablative/militia
	name = "Blackshield ablative plate"
	desc = "An outdated set of ablative armor, utilizing advanced materials to absorb rather than reflect energy projeciles and painted in Blackshield's colors. \
			A distinctive set of equipment, the MK-II 'Energy Defense Gear' sold more for its distinctive, and some would say 'flashy' \
			appearance than its capabilities. Despite its bad reputation as a tax-payer credit sink, it serves as a fairly adequate piece of gear."
	icon_state = "ablative_bs"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS
	slowdown = 0.5
	armor_list = list(melee = 25, bullet = 25, energy = 60, bomb = 10, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/platecarrier/green
	name = "green plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, this one suits wooded areas well."
	icon_state = "platecarrier_green"
	item_state = "platecarrier_green"

/obj/item/clothing/suit/armor/platecarrier/green/full
	name = "full body green plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, this one suits wooded areas well. Has increased coverage due to the prescence of shoulderpads and kneepads."
	icon_state = "platecarrier_green_fullbody"
	item_state = "platecarrier_green_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/platecarrier/tan
	name = "tan plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, this one suits endless desert warfare well."
	icon_state = "platecarrier_tan"
	item_state = "platecarrier_tan"

/obj/item/clothing/suit/armor/platecarrier/tan/full
	name = "full body tan plate carrier"
	desc = "An armored vest carrying trauma plates and light ballistic meshes, this one suits endless desert warfare well. Has increased coverage due to the prescence of shoulderpads and kneepads."
	icon_state = "platecarrier_tan_fullbody"
	item_state = "platecarrier_tan_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/platecarrier/hos
	name = "advanced plate carrier"
	desc = "An armored vest carrying military grade trauma plates and advanced ballistic meshes."
	icon_state = "platecarrier_ih"
	item_state = "platecarrier_ih"
	blood_overlay_type = "armor"
	slowdown = 0.15
	armor_list = list(melee = 50, bullet = 50, energy = 30, bomb = 10, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/platecarrier/hos/full
	name = "advanced plate carrier"
	desc = "An armored vest carrying military grade trauma plates and advanced ballistic meshes.This set has a set of equally advanced arm and leg-guards added for increased overall protection."
	icon_state = "platecarrier_ih_fullbody"
	item_state = "platecarrier_ih_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS

/obj/item/clothing/suit/armor/flackvest
	name = "flak vest"
	desc = "An armored, padded vest meant for heavy-duty operations. Heavy and bulky, it protects well against explosives and shrapnel."
	icon_state = "flakvest"
	item_state = "flakvest"
	blood_overlay_type = "armor"
	price_tag = 250
	slowdown = 0.5
	armor_list = list(melee = 40, bullet = 40, energy = 20, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/flackvest/full // Sic.
	name = "full body flak vest"
	desc = "An armored, padded vest meant for heavy-duty operations, it protects well against explosives and shrapnel. This set has had kneepads and shoulderpads attached for more protection."
	icon_state = "flakvest_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS
	slowdown = 0.6 // Bulkier due to protecting more
	armor_list = list(melee = 40, bullet = 40, energy = 20, bomb = 50, bio = 0, rad = 0) // Again, in case it doesn't inherit

/obj/item/clothing/suit/armor/flackvest/tan
	name = "flak tan vest"
	icon_state = "flakvest_tan"

/obj/item/clothing/suit/armor/flackvest/tan/full
	name = "full body tan flak vest"
	icon_state = "flakvest_tan_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	stiffness = LIGHT_STIFFNESS
	slowdown = 0.6 // Bulkier due to protecting more

/obj/item/clothing/suit/armor/flackvest/militia
	name = "blackshield flak vest"
	desc = "An armored, padded vest meant for heavy-duty operations. Heavy and bulky, it protects well against explosives and shrapnel. \
			This one is marked with the distinct IFF stripes of the Blackshield."
	icon_state = "flakvest_mil"
	item_state = "flakvest_mil"

/obj/item/clothing/suit/armor/flackvest/militia/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Blackshield Colours"] = "flakvest_mil"
	options["Woodlands Blackshield Combat"] = "flakvest_green_mil"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/armor/flackvest/militia/full
	name = "blackshield full flak vest"
	desc = "An armored, padded vest meant for heavy-duty operations. Heavy and bulky, it protects well against explosives and shrapnel. \
			This one is marked with the distinct IFF stripes of the Blackshield, and offers additional coverage through shoulderpads and kneepads."
	icon_state = "flakvest_mil_fullbody"
	item_state = "flakvest_mil_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	slowdown = 0.6 // Bulkier due to protecting more
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/flackvest/militia/full/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Blackshield Colours"] = "flakvest_mil_fullbody"
	options["Woodlands Blackshield Combat"] = "flakvest_green_mil_fullbody"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1


/obj/item/clothing/suit/armor/flackvest/green
	name = "flak vest"
	desc = "An armored, padded vest meant for heavy-duty operations.\
			Some folks are born made to wave the flag."
	icon_state = "flakvest_green"
	item_state = "flakvest_green"

/obj/item/clothing/suit/armor/flackvest/green/full
	name = "full body green flak vest"
	desc = "An armored, padded vest meant for heavy-duty operations.\
			Some folks are born made to wave the flag. And wear stylish kneepads and shoulderpads."
	icon_state = "flakvest_green"
	item_state = "flakvest_green"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	slowdown = 0.6 // Bulkier due to protecting more
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/flackvest/commander
	name = "commander's flak vest"
	desc = "An armored, padded vest that's seen many long tours and is suited for heavy-duty operations. Heavy and bulky, it protects well against explosives and shrapnel. Smells of napalm and the sea."
	icon_state = "flakvest_mil"
	item_state = "flakvest_mil"
	blood_overlay_type = "armor"
	slowdown = 0.2
	armor_list = list(melee = 45, bullet = 50, energy = 30, bomb = 50, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/flackvest/commander/full
	name = "commander's full body flak vest"
	desc = "An armored, padded vest that's seen many long tours and is suited for heavy-duty operations. \
			Heavy and bulky, it protects well against explosive and shrapnel. Smells of napalm and the sea. \
			This model adds shoulder and thighs protection through additional layers of protective armor." // Thighington simps rejoice. - Seb
	icon_state = "commander_mil_fullbody"
	item_state = "commander_mil_fullbody"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	slowdown = 0.3 // Bulkier due to protecting more
	stiffness = LIGHT_STIFFNESS
	armor_list = list(
		melee = 45,
		bullet = 50,
		energy = 30,
		bomb = 50,
		bio = 0,
		rad = 0
		)

/obj/item/clothing/suit/armor/commander
	name = "commander's armored coat"
	desc = "A heavily armored combination of menacing style and cutting-edge body armor."
	icon_state = "commander"
	item_state = "commander"
	blood_overlay_type = "coat"
	permeability_coefficient = 0.50
	armor_list = list(melee = 40, bullet = 40, energy = 30, bomb = 25, bio = 0, rad = 0)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7
	stiffness = MEDIUM_STIFFNESS

/obj/item/clothing/suit/armor/commander/militia
	name = "blackshield commander's armored coat"
	desc = "A heavily armored combination of menacing style and cutting-edge body armor wearing the insignia and stripes of the Blackshield Commander. The armor plates even can be recoloured on the go to act as camo."
	icon_state = "commander_mil"
	item_state = "commander_mil"

/obj/item/clothing/suit/armor/commander/militia/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Blackshield Colours"] = "commander_mil"
	options["Desert Combat"] = "commander_tan"
	options["Woodlands Combat"] = "commander_green"
	options["Woodlands Blackshield Combat"] = "commander_green_mil"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/storage/armor/commander/militia_overcoat // Pockets for your hands on the cold.
	name = "blackshield armored overcoat"
	desc = "Blackshield greatcoat with kevlar weave and rank epaulettes. Worn in cold environments, guard duty or formal events."
	armor_list = list(melee = 30, bullet = 35, energy = 20, bomb = 10, bio = 0, rad = 0)
	icon_state = "overcoat_bm"
	item_state = "overcoat_bm"

/obj/item/clothing/suit/storage/armor/commander/marshal_coat
	name = "marshal officers greatcoat"
	desc = "Marshal Officer greatcoat with armor weave. Part of the formal uniform of the security marshals."
	armor_list = list(melee = 35, bullet = 30, energy = 20, bomb = 10, bio = 0, rad = 0)
	icon_state = "marshal_coat"
	item_state = "marshal_coat"

obj/item/clothing/suit/armor/commander/marshal_coat_ss
	name = "supply specialist's jacket"
	desc = "Supply Specialist's jacket with an armored weave. For formality, protection and style."
	armor_list = list(melee = 40, bullet = 40, energy = 20, bomb = 10, bio = 0, rad = 0)
	icon_state = "marshal_coat_ss"
	item_state = "marshal_coat_ss"

/*
 * Reactive Armor
 */
//When the wearer gets hit, this armor will teleport the user a short distance away (to safety or to more danger, no one knows. That's the fun of it!)
/obj/item/clothing/suit/armor/reactive
	name = "reactive teleport armor"
	desc = "Someone separated our Research Director's head from their body!"
	var/active = FALSE
	icon_state = "reactiveoff"
	item_state = "reactiveoff"
	blood_overlay_type = "armor"
	armor_list = list(
		melee = 20,
		bullet = 20,
		energy = 20,
		bomb = 0,
		bio = 0,
		rad = 0
		)
	var/entropy_value = 2
	stiffness = MEDIUM_STIFFNESS

/obj/item/clothing/suit/armor/reactive/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	if(prob(50))
		user.visible_message(SPAN_DANGER("The reactive teleport system flings [user] clear of the attack!"))
		var/turf/TLoc = get_turf(user)
		var/turf/picked = get_random_secure_turf_in_range(src, 7, 1)
		if(!picked) return
		var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
		spark_system.set_up(5, 0, user.loc)
		spark_system.start()
		go_to_bluespace(TLoc, entropy_value, TRUE, user, picked)
		return PROJECTILE_FORCE_MISS
	return FALSE

/obj/item/clothing/suit/armor/reactive/attack_self(mob/user)
	src.active = !( src.active )
	if (src.active)
		to_chat(user, "\blue The reactive armor is now active.")
		src.icon_state = "reactive"
		src.item_state = "reactive"
	else
		to_chat(user, "\blue The reactive armor is now inactive.")
		src.icon_state = "reactiveoff"
		src.item_state = "reactiveoff"
		src.add_fingerprint(user)
	return

/obj/item/clothing/suit/armor/reactive/emp_act(severity)
	active = 0
	src.icon_state = "reactiveoff"
	src.item_state = "reactiveoff"
	..()

/// Hunting Lodge Armor

/obj/item/clothing/suit/armor/hunter
	name = "hunter armor"
	desc = "A lightly armored breastplate and knee-guards supplied by the local hunting-lodge. It appears to be rather crudely self made."
	icon_state = "hunter_armor"
	item_state = "hunter_armor"
	blood_overlay_type = "armor"
	armor_list = list(
		melee = 30,
		bullet = 20,
		energy = 20,
		bomb = 10,
		bio = 0,
		rad = 0 )
	body_parts_covered = UPPER_TORSO|LEGS|ARMS|LOWER_TORSO
	cold_protection = UPPER_TORSO|LEGS|ARMS|LOWER_TORSO

/obj/item/clothing/suit/armor/hunter/bone
	name = "hunter armor"
	desc = "A lightly armored breastplate with bone-reinforcements of animal ribs and skulls accompanied by knee-guards from an unknown animal, \
	supplied by the local hunting-lodge. It appears to be rather crudely self made. \ "
	icon_state = "hunter_armor_bone"
	item_state = "hunter_armor_bone"
	blood_overlay_type = "armor"
	armor_list = list(
		melee = 45,
		bullet = 25,
		energy = 25,
		bomb = 10,
		bio = 0,
		rad = 0)

/obj/item/clothing/suit/armor/hunter/reinforced
	name = "hunter armor"
	desc = "A heavily armored breastplate and knee-guards supplied by the local hunting-lodge. It appears to be rather crudely self made with steel plating functioning as make-shift kevlar plates."
	icon_state = "hunter_armor_reinforced"
	item_state = "hunter_armor_reinforced"
	blood_overlay_type = "armor"
	armor_list = list(
		melee = 30,
		bullet = 45,
		energy = 25,
		bomb = 10,
		bio = 0,
		rad = 0)

/obj/item/clothing/suit/armor/hunter/leather
	name = "hunter armor"
	desc = "A lightly armored breastplate, leather sleeves, and knee-guards supplied by the local hunting-lodge. It appears to be rather crudely self made, yet the extra leather reinforcement is not \
	only stylish but aids greatly is dispersing laser and plasma shots."
	icon_state = "hunter_armor_leather"
	item_state = "hunter_armor_leather"
	blood_overlay_type = "armor"
	armor_list = list(
		melee = 30,
		bullet = 25,
		energy = 45,
		bomb = 10,
		bio = 0,
		rad = 0)

/obj/item/clothing/suit/armor/vest/handmadewooden
	name = "wooden armor"
	desc = "A series of planks held into a relatively torso shaped form by cloth tied around the shoulders and waist. Then further padded with more cloth along the inside."
	icon_state = "hm_woodvest"
	item_state = "hm_woodvest"
	armor_list = list(
		melee = 25, //It's made of mostly wood and cloth, shittiest armor in the game easily, but does have bio and rad, giving it a rare but still possible boost over handmade. -Kaz
		bullet = 15, // Justifying keeping somewhat decent values on bullet just because I changed the recipe to include steel. - Seb
		energy = 10, // It's mostly made of wood, it will char easily.
		bomb = 10,
		bio = 25,
		rad = 25
	)
	price_tag = 50
	stiffness = LIGHT_STIFFNESS

/obj/item/clothing/suit/armor/paramedic
	name = "advanced paramedic armor"
	desc = "Lightweight and moderately armored suit meant to be used to rush into danger to save lives. Has a built in Acceleration, that when active gives a speed boost to save people faster."
	icon_state = "trauma_team"
	item_state = "trauma_team"
	matter = list(
		MATERIAL_PLASTEEL = 10,
		MATERIAL_STEEL = 5,
		MATERIAL_PLASTIC = 5,
		MATERIAL_PLATINUM = 3,
		MATERIAL_URANIUM = 4,
		MATERIAL_SILVER = 2
		)
	armor_list = list(
		melee = 30,
		bullet = 30,
		energy = 30,
		bomb = 10,
		bio = 100,
		rad = 50
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	action_button_name = "Toggle Acceleration"
	var/speed_boost_ready = TRUE
	var/speed_boost_active = FALSE
	var/speed_boost_power = -0.5
	var/speed_boost_length = 30 SECONDS
	var/speed_boost_cooldown = 5 MINUTES
	var/matching_helmet = /obj/item/clothing/head/helmet/faceshield/paramedic

/obj/item/clothing/suit/armor/paramedic/ui_action_click(mob/living/user, action_name)
	if(..())
		return TRUE

	trigger_speed_boost(user)

/obj/item/clothing/suit/armor/paramedic/proc/trigger_speed_boost(mob/living/carbon/human/user)
	if(!istype(user))
		return

	if(!speed_boost_ready)
		if(user.head && istype(user.head, matching_helmet))
			if(speed_boost_active)
				to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Acceleration protocol active.'"))
			else
				to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Acceleration protocol failture. Insufficient capacitor charge.'"))
		return

	speed_boost_ready = FALSE
	speed_boost_active = TRUE
	slowdown = speed_boost_power

	if(user.head && istype(user.head, matching_helmet))
		to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Acceleration protocol initiated.'"))

	spawn(speed_boost_length)
		if(QDELETED(src))
			return
		slowdown = initial(slowdown)
		speed_boost_active = FALSE
		if(user.head && istype(user.head, matching_helmet))
			to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Capacitors discharged. Acceleration protocol aborted.'"))

		spawn(speed_boost_cooldown)
			if(QDELETED(src))
				return
			speed_boost_ready = TRUE
			if(user.head && istype(user.head, matching_helmet))
				to_chat(usr, SPAN_WARNING("[user.head] beeps: 'Capacitors have been recharged.'"))
