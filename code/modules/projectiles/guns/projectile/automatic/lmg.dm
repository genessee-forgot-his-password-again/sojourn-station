/obj/item/gun/projectile/automatic/lmg
	name = "SA \"SAW\""
	desc = "A exstreamly rare HMG produced on a commision. Uses 7.5mm Rifle rounds."
	icon = 'icons/obj/guns/projectile/l6.dmi'
	var/icon_base
	icon_base = "l6"
	icon_state = "l6_closed"
	item_state = "l6_closed"
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	slot_flags = 0
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1)
	slot_flags = SLOT_BACK
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_LINKED_BOX
	caliber = CAL_RIFLE
	tac_reloads = FALSE
	matter = list(MATERIAL_PLASTEEL = 40, MATERIAL_PLASTIC = 15, MATERIAL_WOOD = 5)
	price_tag = 2500
	unload_sound 	= 'sound/weapons/guns/interact/lmg_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/lmg_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/lmg_cock.ogg'
	fire_sound = 'sound/weapons/guns/fire/lmg_fire.ogg'
	recoil_buildup = 0.25
	one_hand_penalty = 30 //you're not Stallone. LMG level.
	slowdown_hold = 1
	brace_penalty = 20
	init_firemodes = list(
		FULL_AUTO_400,
		BURST_5_ROUND,
		BURST_8_ROUND
		)
	serial_type = "SA"

	var/cover_open = 0

/obj/item/gun/projectile/automatic/lmg/special_check(mob/user)
	if(cover_open)
		to_chat(user, SPAN_WARNING("[src]'s cover is open! Close it before firing!"))
		return 0
	return ..()

/obj/item/gun/projectile/automatic/lmg/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	to_chat(user, SPAN_NOTICE("You [cover_open ? "open" : "close"] [src]'s cover."))
	update_icon()

/obj/item/gun/projectile/automatic/lmg/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
		playsound(src.loc, 'sound/weapons/guns/interact/lmg_close.ogg', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/gun/projectile/automatic/lmg/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(src.loc, 'sound/weapons/guns/interact/lmg_open.ogg', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/gun/projectile/automatic/lmg/equipped(var/mob/user, var/slot)
	.=..()
	update_icon()

/obj/item/gun/projectile/automatic/lmg/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		to_chat(user, SPAN_WARNING("You need to open the cover to load [src]."))
		return
	..()

/obj/item/gun/projectile/automatic/lmg/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		to_chat(user, SPAN_WARNING("You need to open the cover to unload [src]."))
		return
	..()

/obj/item/gun/projectile/automatic/lmg/update_icon()
	icon_state = "[icon_base][cover_open ? "_open" : "_closed"]"
	if(ammo_magazine)
		add_overlay("_mag[ammo_magazine.max_ammo]")
	else
		cut_overlays()
		return
	..()

//**** Saved in case we want the code in the future****//
//obj/item/gun/projectile/automatic/lmg/equipped(var/mob/user, var/slot)
//	.=..()
//	update_icon()

//obj/item/gun/projectile/automatic/lmg/update_icon()
//	icon_state = "[icon_base][cover_open ? "open" : "closed"][ammo_magazine ? round(ammo_magazine.stored_ammo.len, 25) : "-empty"]"
//	set_item_state("-[cover_open ? "open" : null][ammo_magazine ?"mag":"nomag"]", hands = TRUE)
//	set_item_state("-[ammo_magazine ?"mag":"nomag"]", back = TRUE)
//	update_wear_icon()



/obj/item/gun/projectile/automatic/lmg/pk
	name = "Pulemyot Kalashnikova"
	desc = "\"Kalashnikov's Machinegun\", a well-made copy of what many consider to be the best traditional machinegun ever designed."
	icon = 'icons/obj/guns/projectile/pk.dmi'
	icon_base = "pk"
	icon_state = "pk_closed"
	item_state = "pk_closed"
	damage_multiplier = 0.9
	init_firemodes = list(
		FULL_AUTO_400,
		BURST_5_ROUND,
		BURST_8_ROUND
		)

//Typical LMG/SAW, use this for the high end of "normal."
/obj/item/gun/projectile/automatic/lmg/saw
	name = "\"Pegasus\" light machinegun"
	desc = "A common LMG chambered in .257 Carbine, accepting either boxes or standard magazines, though this calls into question some reliability issues. \
	This particular example bears a winged horse in laurels and a \"Pegasus\" nameplate, all other markings have been filed off."
	icon = 'icons/obj/guns/projectile/lmg.dmi'
	icon_base = "saw"
	icon_state = "saw_closed"
	item_state = "saw_closed"
	mag_well = MAG_WELL_LINKED_BOX|MAG_WELL_STANMAG
	caliber = CAL_LRIFLE
	penetration_multiplier = 0.85
	damage_multiplier = 1.0
	matter = list(MATERIAL_PLASTEEL = 30, MATERIAL_PLASTIC = 10)
	price_tag = 1500
	fire_sound = 'sound/weapons/guns/fire/sfrifle_fire.ogg'
	recoil_buildup = 0.5

	init_firemodes = list(
		FULL_AUTO_600,
		BURST_5_ROUND,
		)

//This should be in its own file...
/obj/item/gun/projectile/automatic/lmg/tk
	name = "\"Takeshi\" suppression machinegun"
	desc = "The \"Takeshi LMG\" is Seinemetall Defense GmbH's answer to any scenario that requires suppression or meat grinding, a fine oiled machine of war and death."
	icon = 'icons/obj/guns/projectile/tk.dmi'
	icon_base = "tk"
	icon_state = "tk"
	item_state = "tk"
	mag_well = MAG_WELL_LINKED_BOX|MAG_WELL_STANMAG
	caliber = CAL_LRIFLE
	damage_multiplier = 1.2
	penetration_multiplier = 1.2
	recoil_buildup = 0.75
	serial_type = "SD GmbH"

/obj/item/gun/projectile/automatic/lmg/tk/update_icon()
//	..() We are rather different then other guns and lmgs.
//	icon_state = "[icon_base][cover_open ? "_open" : "_closed"]" - this is for ref of what it did before.
	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (cover_open)
		iconstring += "open"
		itemstring += "-open"
	else
		iconstring += "closed"
		itemstring += "-closed"

	if (ammo_magazine)
		var/percent = (ammo_magazine.stored_ammo.len / ammo_magazine.max_ammo) * 100
		var/number = round(percent, 25)
		iconstring += "[number]"
		itemstring += "-mag"
	else
		iconstring += "-empty"
		itemstring += "-nomag"

	icon_state = iconstring
	set_item_state(itemstring)


/obj/item/gun/projectile/automatic/lmg/tk/Initialize()
	. = ..()
	update_icon()
