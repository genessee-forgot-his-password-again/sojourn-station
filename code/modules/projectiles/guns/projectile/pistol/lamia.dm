/obj/item/gun/projectile/lamia
	name = "\"Lamia\" heavy pistol"
	desc = "The \"Lamia\", a massive handgun based on the M6 series, repackaged by Holland & Sullivan for civilian and law enforcement use. Uses .50 Kurtz."
	icon = 'icons/obj/guns/projectile/lamia.dmi'
	icon_state = "lamia"
	item_state = "lamia"
	fire_sound = 'sound/weapons/guns/fire/deckard_fire.ogg'
	caliber = CAL_50
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 4)
	can_dual = TRUE
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_PISTOL
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_PLASTIC = 8)
	price_tag = 1000
	unload_sound 	= 'sound/weapons/guns/interact/hpistol_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/hpistol_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/hpistol_cock.ogg'
	damage_multiplier = 1.2
	penetration_multiplier = 1.3
	recoil_buildup = 6
	one_hand_penalty = 8
	gun_tags = list(GUN_PROJECTILE, GUN_MAGWELL, GUN_CALIBRE_50)
	serial_type = "H&S"

/obj/item/gun/projectile/lamia/update_icon()
	..()

	if(!ammo_magazine)
		icon_state = initial(icon_state)
	else if(!ammo_magazine.stored_ammo.len)
		icon_state = initial(icon_state) + "_empty"
	else
		icon_state = initial(icon_state) + "_full"

/obj/item/gun/projectile/lamia/dark
	name = "\"Naga\" heavy pistol"
	desc = "An M6 \"Naga\" heavy pistol, either a copy, surplus, or stolen. It's impossible to tell with the defaced markings. Uses .50 Kurtz."
	icon_state = "dark_lamia"
	item_state = "dark_lamia"
	serial_type = "INDEX"
	serial_shown = FALSE

/obj/item/gun/projectile/lamia/dark/sf
	name = "\"Naga\" heavy pistol"
	desc = "An M6 \"Naga\" heavy pistol, the mainline heavy sidearm of the galaxy. This one still bears SolFed markings either lost or stolen. Uses .50 Kurtz."
	icon_state = "sfdark_lamia"
	item_state = "sfdark_lamia"
	serial_type = "Sol Fed"
	serial_shown = TRUE

/obj/item/gun/projectile/lamia/scoped
	name = "\"Lamia\" advanced heavy pistol"
	desc = "Seinemetall Defense GmbH handgun .50 \"Lamia\" Based on the \"Naga\" heavy pistol, it's fit for high ranking enforcers; fitted with a smart-linked optic and stabilizer. Uses .50 Kurtz."
	icon_state = "scoped_lamia"
	item_state = "scoped_lamia"
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10, MATERIAL_GLASS = 5, MATERIAL_SILVER = 5)
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	zoom_factor = 0.4
	recoil_buildup = 7
	price_tag = 1250
	serial_type = "SD GmbH"

/obj/item/gun/projectile/lamia/scoped/dark
	name = "\"Naga\" advanced heavy pistol"
	desc = "The M6D \"Naga\", a heavy pistol manufactured on Mars and often used by SolFed enforcers and commissars, fitted with a smart-linked optic and stabilizer. Uses .50 Kurtz."
	icon_state = "scoped_dark_lamia"
	item_state = "scoped_dark_lamia"
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10, MATERIAL_GLASS = 5, MATERIAL_SILVER = 3)
	zoom_factor = 0.4
	recoil_buildup = 5
	damage_multiplier = 1.3
	penetration_multiplier = 1.2
	price_tag = 1100
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	serial_type = "Sol Fed"

/obj/item/gun/projectile/lamia/socom
	name = "\"SOCOM\" silenced heavy pistol"
	desc = "The M6C SOCOM, a variant of the M6 \"Naga\", it's a highly specialized and advanced handgun developed for the Solar Federation Special Operations Command. This one is fitted with a smart-linked optic and integrated suppressor. Uses .50 Kurtz."
	icon_state = "socom"
	item_state = "socom"
	matter = list(MATERIAL_PLASTEEL = 25, MATERIAL_PLASTIC = 10, MATERIAL_GLASS = 5, MATERIAL_SILVER = 3)
	zoom_factor = 0.5
	silenced = TRUE
	recoil_buildup = 4 //highly OP SolFed specwar weapon
	damage_multiplier = 0.9
	penetration_multiplier = 1.2
	price_tag = 1250
	serial_type = "Sol Fed"

/obj/item/gun/projectile/lamia/akurra
	name = "\"Akurra\" silenced heavy pistol"
	desc = "The \"Akurra\", a specialized and heavily modified Lamia-pattern pistol that's been shaved down to a sleek gunfighter's tool.  This one is fitted with an integrated suppressor and gutter-sights. Uses .50 Kurtz."
	icon_state = "akurra"
	item_state = "akurra"
	matter = list(MATERIAL_PLASTEEL = 25, MATERIAL_PLASTIC = 10, MATERIAL_GLASS = 5, MATERIAL_SILVER = 3)
	recoil_buildup = 6
	silenced = TRUE
	damage_multiplier = 0.95
	penetration_multiplier = 1.2
	price_tag = 1250
	serial_type = "SA"
