/datum/trade_station/fs_factory
	name_pool = list("XSMS 'Kaida'" = "Xanaroth Syndicate Manufacturing Station 'Kaida'. \"Well if it isn't our favorite trade partner, we got some side deals just for you!\"")
	spawn_always = TRUE
	markup = RARE_GOODS		// dept-specific stuff should be more expensive for guild
	uid = "fs_guns"
	offer_limit = 20
	base_income = 0
	wealth = 0
//	secret_inv_threshold = 2000
	recommendation_threshold = 4000
	stations_recommended = list("illegal1")
	recommendations_needed = 1
	inventory = list(
		"Projectiles" = list(
			/obj/item/gun/projectile/automatic/mac,
			/obj/item/gun/projectile/automatic/c20r,
			/obj/item/gun/projectile/automatic/sts/lrifle,
			/obj/item/gun/projectile/automatic/sts/rifle,
			/obj/item/gun/projectile/automatic/sts/hrifle,
			/obj/item/gun/projectile/automatic/pitbull,
			/obj/item/gun/projectile/boltgun/lever,
			/obj/item/gun/projectile/boltgun/sa,
			/obj/item/gun/projectile/shotgun/pump/gladstone,
			/obj/item/gun/projectile/shotgun/bull,
			/obj/item/gun/projectile/shotgun/pug,
			/obj/item/gun/projectile/shotgun/pump
		),
		"Ammunition" = list(
			/obj/item/ammo_magazine/c10x24 = custom_good_amount_range(list(1, 10)),
			/obj/item/ammo_magazine/a75 = custom_good_amount_range(list(1, 10)),
			/obj/item/ammo_magazine/heavy_rifle_408_drum = custom_good_amount_range(list(1, 10)),
			/obj/item/ammo_magazine/m12/pellet = custom_good_amount_range(list(1, 10)),
			/obj/item/ammo_casing/antim/lethal/prespawned = custom_good_amount_range(list(1, 10)),

			/obj/item/ammo_magazine/ammobox/heavy_rifle_408,
			/obj/item/ammo_magazine/ammobox/rifle_75,
			/obj/item/ammo_magazine/ammobox/light_rifle_257,
			/obj/item/ammo_magazine/ammobox/shotgun,
			/obj/item/ammo_magazine/ammobox/kurtz_50,
			/obj/item/ammo_magazine/ammobox/magnum_40,
			/obj/item/ammo_magazine/ammobox/pistol_35
		),
		"Energy" = list(
			/obj/item/gun/energy/gun,
			/obj/item/gun/energy/gun/martin
		),
		"Grenades" = list(
			/obj/item/gun/projectile/shotgun/pump/china,
			/obj/item/grenade/chem_grenade/incendiary,
			/obj/item/grenade/chem_grenade/teargas,
			/obj/item/grenade/empgrenade/low_yield,
			/obj/item/grenade/flashbang,
			/obj/item/grenade/frag/stinger,
			/obj/item/grenade/smokebomb
		)
	)
	hidden_inventory = list(
		"High-End Grenades" = list(
			/obj/item/grenade/empgrenade,
			/obj/item/grenade/frag,
			/obj/item/grenade/explosive,
			/obj/item/grenade/anti_photon,
			/obj/item/grenade/heatwave,
			/obj/item/plastique = good_data("plastic explosive", (list(2, 4)), 1500)
		),
		"Top Class Firearms" = list(
			/obj/item/gun/projectile/boltgun/scout,
			/obj/item/gun/projectile/avasarala,
			/obj/item/gun/projectile/basilisk,
			/obj/item/gun/projectile/revolver/mateba,
			/obj/item/gun/projectile/revolver/tacticool_revolver
		),
		"High End Laser Guns" = list(
			/obj/item/gun/energy/firestorm,
			/obj/item/gun/energy/lasercore,
			/obj/item/gun/energy/pulse/cassad
		)
	)

	offer_types = list(
		/obj/item/gun/energy/laser/railgun= offer_data("\"Reductor\" rail rifle", 3500, 1),
		/obj/item/gun_upgrade/mechanism/overshooter = offer_data("overshooter", 400, 2),
		/obj/item/gun_upgrade/mechanism/weintraub = offer_data("\"Hurricane\" full auto kit", 450, 3),
		/obj/item/gun_upgrade/trigger/dangerzone = offer_data("\"Dangerzone\" trigger", 250, 3),
		/obj/item/gun_upgrade/muzzle/silencer = offer_data("silencer", 150, 6),
		/obj/item/gun_upgrade/barrel/bore = offer_data("bored barrel", 750, 2),
		/obj/item/gun_upgrade/barrel/forged = offer_data("forged barrel", 750, 4),
		/obj/item/gun_upgrade/magwell/auto_eject = offer_data("H&S \"Dropper\" Magwell Braker", 450, 5)
	)
