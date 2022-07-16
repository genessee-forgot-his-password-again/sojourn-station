/obj/item/gun/projectile/automatic/dp
	name = "\"Pulemyot Degtyaryova\" light machinegun"
	desc = "A cruedly made yet reliable top-loading machine gun manufactured by the local Nadezhda Marshals. It appears to have specifically been made to use spare pan-magazines from Maxims."
	icon = 'icons/obj/guns/projectile/dp.dmi'
	icon_state = "dp"
	item_state = "dp"
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	slot_flags = 0
	max_shells = 96
	damage_multiplier = 1.0
	penetration_multiplier = 0.9
	caliber = CAL_RIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 2)
	slot_flags = SLOT_BACK
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_PAN
	tac_reloads = FALSE
	matter = list(MATERIAL_PLASTEEL = 50, MATERIAL_PLASTIC = 15, MATERIAL_WOOD = 10, MATERIAL_STEEL = 20)
	price_tag = 2500
	unload_sound 	= 'sound/weapons/guns/interact/lmg_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/lmg_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/lmg_cock.ogg'
	fire_sound = 'sound/weapons/guns/fire/dp_fire.ogg'
	recoil_buildup = 0.5
	twohanded = TRUE
	one_hand_penalty = 30 //not like it's used anyway, but LMG level
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG)
	slowdown_hold = 0.5
	brace_penalty = 10 //wellmade
	init_firemodes = list(
		FULL_AUTO_400,
		list(mode_name="short bursts", mode_desc = "Short, rapid 5 round bursts", burst=5,    burst_delay=2, move_delay=6,  icon="burst"),
		list(mode_name="long bursts", mode_desc = "Long, rapid 8 round bursts",  burst=8, burst_delay=4, move_delay=8,  icon="burst"),
		list(mode_name="suppressing fire", mode_desc = "Suppressing, 16 round bursts",  burst=16, burst_delay=4, move_delay=11,  icon="burst")
		)
	serial_type = "NM"

obj/item/gun/projectile/automatic/dp/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "[initial(icon_state)]-full"
		set_item_state("-full")
	else
		icon_state = initial(icon_state)
		set_item_state()
	return