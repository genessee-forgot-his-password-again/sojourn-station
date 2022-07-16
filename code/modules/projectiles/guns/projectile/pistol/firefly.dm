/obj/item/gun/projectile/firefly
	name = "\"Firefly\" pistol"
	desc = "A simple and reliable sidearm produced by Seinemetall Defense GmbH for the officer on the street. Commonly issued as a sidearm by police forces and security companies. Uses .35 Auto magazines."
	icon = 'icons/obj/guns/projectile/firefly.dmi'
	icon_state = "firefly"
	item_state = "firefly"
	w_class = ITEM_SIZE_NORMAL
	caliber = CAL_PISTOL
	can_dual = TRUE
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_PISTOL | MAG_WELL_H_PISTOL
	auto_eject = TRUE
	matter = list(MATERIAL_PLASTEEL = 14, MATERIAL_PLASTIC = 4)
	price_tag = 750
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	damage_multiplier = 1
	recoil_buildup = 5
	one_hand_penalty = 7
	gun_tags = list(GUN_PROJECTILE, GUN_CALIBRE_35, GUN_SILENCABLE, GUN_MAGWELL)
	serial_type = "SD GmbH"

/obj/item/gun/projectile/firefly/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "_mag"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	if (silenced)
		iconstring += "_s"
		itemstring += "_s"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/firefly/Initialize()
	. = ..()
	update_icon()
