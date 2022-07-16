/obj/item/gun/projectile/revolver/handmade
	name = "handmade revolver"
	desc = "Handmade revolver, made from spare parts and some duct tape, will it even hold up?"
	icon = 'icons/obj/guns/projectile/handmade_revolver.dmi'
	icon_state = "handmade_revolver"//evan, temp icon
	caliber = CAL_MAGNUM
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_REVOLVER)
	max_shells = 5
	matter = list(MATERIAL_WOOD = 10, MATERIAL_STEEL = 15)
	price_tag = 100 //one of the cheapest revolvers here
	damage_multiplier = 1
	recoil_buildup = 6
	serial_type = "INDEX"
	serial_shown = FALSE