/obj/random/lathe_disk/any_gun
	name = "random any gun lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/any_gun/item_to_spawn() // pickweight is calculated from advanced list = / 2 - 1. If lower than 1 - delete from the list;
	return pickweight(list(
				/obj/random/lathe_disk/ion_gun = 1,
				/obj/random/lathe_disk/ammo = 5,
				/obj/random/lathe_disk/laser_gun = 2,
				/obj/random/lathe_disk/revolver = 5,
				/obj/random/lathe_disk/shotgun = 3,
				/obj/random/lathe_disk/grande = 1,
				/obj/random/lathe_disk/pistol = 6,
				/obj/random/lathe_disk/rifle = 4,
				/obj/random/lathe_disk/smg = 3,
				/obj/random/lathe_disk/lmg = 2,
				/obj/random/lathe_disk/bolt_gun = 5))

/obj/random/lathe_disk/any_gun/low_chance
	name = "low chance any gun lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

//Higher weighted to be good guns

/obj/random/lathe_disk/better_any_gun
	name = "random better any gun lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/better_any_gun/item_to_spawn() // pickweight is calculated from advanced list = / 2 - 1. If lower than 1 - delete from the list;
	return pickweight(list(
				/obj/random/lathe_disk/ion_gun = 3,
				/obj/random/lathe_disk/ammo = 2,
				/obj/random/lathe_disk/laser_gun = 6,
				/obj/random/lathe_disk/revolver = 3,
				/obj/random/lathe_disk/shotgun = 5,
				/obj/random/lathe_disk/grande = 4,
				/obj/random/lathe_disk/pistol = 1,
				/obj/random/lathe_disk/rifle = 4,
				/obj/random/lathe_disk/smg = 1,
				/obj/random/lathe_disk/lmg = 4,
				/obj/random/lathe_disk/bolt_gun = 1))

/obj/random/lathe_disk/better_any_gun/low_chance
	name = "low chance better gun lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

///More defined gun types then just any

/obj/random/lathe_disk/bolt_gun
	name = "random bolt_gun lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/bolt_gun/low_chance
	name = "low chance bolt_gun lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/bolt_gun/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/heavysniper = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/strelki = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/watchtower = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/armstrong = 6,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/custer = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/roe = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/sika = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/boltgun_sa = 6,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/zatvor = 3))

/obj/random/lathe_disk/lmg
	name = "random lmg lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/lmg/low_chance
	name = "low chance lmg lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/lmg/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/dp = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/semyonovich = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/bren = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/sa_pk = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/saw = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/ex_ppsh = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/concillium = 2))


/obj/random/lathe_disk/smg
	name = "random smg lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/smg/low_chance
	name = "low chance smg lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/smg/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/wirbelwind = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/texan = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/mac = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/bastard = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/greasegun = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/buckler = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/thompson = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/triage = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/ex_drozd = 1))

/obj/random/lathe_disk/rifle
	name = "random assalt rifle lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/rifle/low_chance
	name = "low chance assalt rifle lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/rifle/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/bulldog = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/sol = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/ostwind = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/pulse_rifle = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/sa_kalashnikov = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/tac_kalashnikov = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/luger = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/duty = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/blackguard = 0.5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/bulldog = 3))

/obj/random/lathe_disk/pistol
	name = "random pistol lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/pistol/low_chance
	name = "low chance pistol lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/pistol/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/mk58 = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/NM_colt = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/colt = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/rafale = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/lamia = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/basilisk = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/cheap_guns = 6,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/glock = 2))

/obj/random/lathe_disk/grande
	name = "random grande based lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/grande/low_chance
	name = "low chance grande based lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/grande/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/protector = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/lenar = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/china = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/pitbull = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/antebellum = 1))

/obj/random/lathe_disk/shotgun
	name = "random shotgun lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/shotgun/low_chance
	name = "low chance revolver lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/shotgun/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/doublebarrel = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/grizzly = 7,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/regulator = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/gladstone = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/lemant = 2, //Has a built in shotgun, so low odds but still here
				/obj/item/computer_hardware/hard_drive/portable/design/guns/state = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/blackshield/rushingbull = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/pug = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/sbaw = 1))

/obj/random/lathe_disk/revolver
	name = "random revolver lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/revolver/low_chance
	name = "low chance revolver lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/revolver/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/cheap_guns = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/lemant = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/rex10 = 5,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/rev10 = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/revolver = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/revolver_mateba = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/stun_revolver = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/sixshot = 1))

/obj/random/lathe_disk/ammo
	name = "random ammo lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/ammo/low_chance
	name = "low chance ammo lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/ammo/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/nonlethal_ammo = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/exotic_ammo = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/lethal_ammo = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/ammo_boxes_smallarms = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/ammo_boxes_rifle = 2))

/obj/random/lathe_disk/laser_gun
	name = "random laser gun lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/laser_gun/low_chance
	name = "low chance laser gun lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/laser_gun/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/counselor = 6,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/spiderrose = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/martin = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/firestorm = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/lasercore = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/lasercannon = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/sunrise = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/centauri = 1,

				/obj/item/computer_hardware/hard_drive/portable/design/guns/nt_counselor = 3,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/stun_revolver = 1,

				/obj/item/computer_hardware/hard_drive/portable/design/guns/nemesis = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/themis = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/lightfall = 4,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/carpedie = 1,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/valkirye = 2,
				/obj/random/lathe_disk/ion_gun/low_chance = 2,

				/obj/item/computer_hardware/hard_drive/portable/design/guns/dominion = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/purger = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/cassad = 1))

/obj/random/lathe_disk/ion_gun
	name = "random ion gun lathe disk"
	icon_state = "tech-green"

/obj/random/lathe_disk/ion_gun/low_chance
	name = "low chance ion gun lathe disk"
	icon_state = "tech-green-low"
	spawn_nothing_percentage = 80

/obj/random/lathe_disk/ion_gun/item_to_spawn()
	return pickweight(list(
				/obj/item/computer_hardware/hard_drive/portable/design/guns/halicon = 2,
				/obj/item/computer_hardware/hard_drive/portable/design/guns/ion_pistol = 1))