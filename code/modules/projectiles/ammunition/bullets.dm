//// .35 ////

/obj/item/ammo_casing/pistol_35
	desc = "A .35 Auto bullet casing."
	icon_state = "pistol_c_l"
	spent_icon = "pistol_c_l-spent"
	caliber = CAL_PISTOL
	projectile_type = /obj/item/projectile/bullet/pistol_35
	maxamount = 15

/obj/item/ammo_casing/pistol/Initialize()
	. = ..()
	var/matrix/rotation_matrix = matrix()
	rotation_matrix.Turn(round(45 * rand(0, 32) / 2))
	src.transform = rotation_matrix * 0.5

/obj/item/ammo_casing/pistol_35/hv
	desc = "A .35 Auto high-velocity bullet casing."
	icon_state = "pistol_c_hv"
	spent_icon = "pistol_c_hv-spent"
	projectile_type = /obj/item/projectile/bullet/pistol_35/hv

/obj/item/ammo_casing/pistol_35/practice
	desc = "A .35 Auto practice bullet casing."
	icon_state = "pistol_c_p"
	spent_icon = "pistol_c_p-spent"
	projectile_type = /obj/item/projectile/bullet/pistol_35/practice

/obj/item/ammo_casing/pistol_35/rubber
	desc = "A .35 Auto rubber bullet casing."
	icon_state = "pistol_c_r"
	spent_icon = "pistol_c_r-spent"
	projectile_type = /obj/item/projectile/bullet/pistol_35/rubber

/obj/item/ammo_casing/pistol_35/rubber/soporific_cbo
	desc = "A .35 Auto soporific condensed plastic shell."
	icon_state = "pistol_c_r"
	spent_icon = "pistol_c_r-spent"
	projectile_type = /obj/item/projectile/bullet/pistol_35/rubber/soporific/cbo
	is_caseless = TRUE

/obj/item/ammo_casing/pistol_35/lethal
	desc = "A .35 Auto hollow-point bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol_35/lethal

/obj/item/ammo_casing/pistol_35/scrap
	desc = "An old .35 Auto bullet casing."
	icon_state = "pistol_c_s"
	spent_icon = "pistol_c_s-spent"
	projectile_type = /obj/item/projectile/bullet/pistol_35/scrap

/obj/item/ammo_casing/pistol_35/scrap/prespawned
	amount = 15

/obj/item/ammo_casing/pistol_35/laser
	desc = "A .35 Auto laser casing."
	projectile_type = /obj/item/projectile/beam/weak/pistol_35

/obj/item/ammo_casing/pistol_35/biomatter
	desc = "A caseless .35 Auto caustic."
	projectile_type = /obj/item/projectile/bullet/pistol_35/biomatter
	icon_state = "clrifle_c_s"
	is_caseless = TRUE

//// .40 ////

/obj/item/ammo_casing/magnum_40
	desc = "A .40 Magnum bullet casing."
	icon_state = "magnum_c_l"
	spent_icon = "magnum_c_l-spent"
	caliber = CAL_MAGNUM
	projectile_type = /obj/item/projectile/bullet/magnum_40
	maxamount = 6

/obj/item/ammo_casing/magnum_40/Initialize()
	. = ..()
	var/matrix/rotation_matrix = matrix()
	rotation_matrix.Turn(round(45 * rand(0, 32) / 2))
	src.transform = rotation_matrix * 0.5

/obj/item/ammo_casing/magnum_40/practice
	desc = "A .40 Magnum practice bullet casing."
	icon_state = "magnum_c_p"
	spent_icon = "magnum_c_p-spent"
	projectile_type = /obj/item/projectile/bullet/magnum_40/practice

/obj/item/ammo_casing/magnum_40/hv
	desc = "A .40 Magnum high-velocity bullet casing."
	icon_state = "magnum_c_hv"
	spent_icon = "magnum_c_hv-spent"
	projectile_type = /obj/item/projectile/bullet/magnum_40/hv

/obj/item/ammo_casing/magnum_40/rubber
	desc = "A .40 Magnum rubber bullet casing."
	icon_state = "magnum_c_r"
	spent_icon = "magnum_c_r-spent"
	projectile_type = /obj/item/projectile/bullet/magnum_40/rubber

/obj/item/ammo_casing/magnum_40/rubber/pepperball
	desc = "A .40 Magnum pepper-spray projectile casing."
	icon_state = "magnum_c_l"
	is_caseless = TRUE
	projectile_type = /obj/item/projectile/bullet/magnum_40/rubber/pepperball

/obj/item/ammo_casing/magnum_40/lethal
	desc = "A .40 Magnum hollow point bullet casing."
	icon_state = "magnum_c_l"
	spent_icon = "magnum_c_l-spent"
	projectile_type = /obj/item/projectile/bullet/magnum_40/lethal

/obj/item/ammo_casing/magnum_40/laser
	desc = "A .40 Magnum laser casing."
	projectile_type = /obj/item/projectile/beam/weak/magnum_40

/obj/item/ammo_casing/magnum_40/scrap
	desc = "An old .40 Magnum bullet casing."
	icon_state = "magnum_c_s"
	spent_icon = "magnum_c_s-spent"
	projectile_type = /obj/item/projectile/bullet/magnum_40/scrap

/obj/item/ammo_casing/magnum_40/scrap/prespawned
	amount = 6

/obj/item/ammo_casing/magnum_40/biomatter
	desc = "A caseless .40 Magnum Caustic."
	projectile_type = /obj/item/projectile/bullet/magnum_40/biomatter
	icon_state = "clrifle_c_p"
	is_caseless = TRUE

//// .257 carbine ////

/obj/item/ammo_casing/light_rifle_257
	desc = "A .257 bullet casing."
	icon_state = "srifle_c_l"
	spent_icon = "srifle_c_l-spent"
	shell_color = "l"
	caliber = CAL_LRIFLE
	projectile_type = /obj/item/projectile/bullet/light_rifle_257
	maxamount = 10

/obj/item/ammo_casing/light_rifle_257/Initialize()
	. = ..()
	var/matrix/rotation_matrix = matrix()
	rotation_matrix.Turn(round(45 * rand(0, 32) / 2))
	src.transform = rotation_matrix * 0.5

/obj/item/ammo_casing/light_rifle_257/practice
	desc = "A .257 practice bullet casing."
	icon_state = "srifle_c_p"
	spent_icon = "srifle_c_p-spent"
	shell_color = "p"
	projectile_type = /obj/item/projectile/bullet/light_rifle_257/practice

/obj/item/ammo_casing/light_rifle_257/hv
	desc = "A .257 high-velocity bullet casing."
	icon_state = "srifle_c_hv"
	spent_icon = "srifle_c_hv-spent"
	shell_color = "hv"
	projectile_type = /obj/item/projectile/bullet/light_rifle_257/hv

/obj/item/ammo_casing/light_rifle_257/rubber
	desc = "A .257 rubber bullet casing."
	icon_state = "srifle_c_r"
	spent_icon = "srifle_c_r-spent"
	shell_color = "r"
	projectile_type = /obj/item/projectile/bullet/light_rifle_257/rubber

/obj/item/ammo_casing/light_rifle_257/scrap
	desc = "An old .257 rifle bullet casing."
	icon_state = "srifle_c_s"
	spent_icon = "srifle_c_s-spent"
	shell_color = "p"
	projectile_type = /obj/item/projectile/bullet/light_rifle_257/scrap

/obj/item/ammo_casing/light_rifle_257/scrap/prespawned
	amount = 10

/obj/item/ammo_casing/light_rifle_257/lethal
	desc = "A .257 hollow-point bullet casing."
	shell_color = "l"
	projectile_type = /obj/item/projectile/bullet/light_rifle_257/lethal

/obj/item/ammo_casing/light_rifle_257/laser
	desc = "A .257 laser casing."
	projectile_type = /obj/item/projectile/beam/weak/light_rifle_257

//// 7.5 Rifle ////

/obj/item/ammo_casing/rifle_75
	desc = "A 7.5mm bullet casing."
	icon_state = "srifle_c_l"
	spent_icon = "srifle_c_l-spent"
	shell_color = "l"
	caliber = CAL_RIFLE
	projectile_type = /obj/item/projectile/bullet/rifle_75
	maxamount = 10

/obj/item/ammo_casing/rifle_75/Initialize()
	. = ..()
	var/matrix/rotation_matrix = matrix()
	rotation_matrix.Turn(round(45 * rand(0, 32) / 2))
	src.transform = rotation_matrix * 0.5

/obj/item/ammo_casing/rifle_75/hv
	desc = "A 7.5mm high-velocity bullet casing."
	icon_state = "srifle_c_hv"
	spent_icon = "srifle_c_hv-spent"
	shell_color = "hv"
	projectile_type = /obj/item/projectile/bullet/rifle_75/hv

/obj/item/ammo_casing/rifle_75/rubber
	desc = "A 7.5mm rubber bullet casing."
	icon_state = "srifle_c_r"
	spent_icon = "srifle_c_r-spent"
	shell_color = "r"
	projectile_type = /obj/item/projectile/bullet/rifle_75/rubber

/obj/item/ammo_casing/rifle_75/practice
	desc = "A 7.5mm practice bullet casing."
	icon_state = "srifle_c_p"
	spent_icon = "srifle_c_p-spent"
	projectile_type = /obj/item/projectile/bullet/rifle_75/practice

/obj/item/ammo_casing/rifle_75/lethal
	desc = "A 7.5mm hollow-point bullet casing."
	shell_color = "l"
	projectile_type = /obj/item/projectile/bullet/rifle_75/lethal

/obj/item/ammo_casing/rifle_75/scrap
	desc = "An old 7.5 Caseless Rifle bullet casing."
	icon_state = "srifle_c_s"
	spent_icon = "srifle_c_s-spent"
	shell_color = "p"
	projectile_type = /obj/item/projectile/bullet/rifle_75/scrap

/obj/item/ammo_casing/rifle_75/scrap/prespawned
	amount = 10

/obj/item/ammo_casing/rifle_75/laser
	desc = "A 7.5mm laser casing."
	projectile_type = /obj/item/projectile/beam/weak/rifle_75

////.408 rifle////

/obj/item/ammo_casing/heavy_rifle_408
	desc = "A .408 Omni bullet casing."
	icon_state = "lrifle_c_l"
	spent_icon = "lrifle_c_l-spent"
	shell_color = "l"
	caliber = CAL_HRIFLE
	projectile_type = /obj/item/projectile/bullet/heavy_rifle_408
	maxamount = 10

/obj/item/ammo_casing/heavy_rifle_408/Initialize()
	. = ..()
	var/matrix/rotation_matrix = matrix()
	rotation_matrix.Turn(round(45 * rand(0, 32) / 2))
	src.transform = rotation_matrix * 0.5

/obj/item/ammo_casing/heavy_rifle_408/rubber
	desc = "A .408 Omni rubber bullet casing."
	icon_state = "lrifle_c_r"
	spent_icon = "lrifle_c_r-spent"
	shell_color = "r"
	projectile_type = /obj/item/projectile/bullet/heavy_rifle_408/rubber

/obj/item/ammo_casing/heavy_rifle_408/practice
	desc = "A .408 Omni training bullet casing."
	icon_state = "lrifle_c_p"
	spent_icon = "lrifle_c_p-spent"
	shell_color = "p"
	projectile_type = /obj/item/projectile/bullet/heavy_rifle_408/practice

/obj/item/ammo_casing/heavy_rifle_408/hv
	desc = "A .408 Omni high-velocity bullet casing."
	icon_state = "lrifle_c_hv"
	spent_icon = "lrifle_c_hv-spent"
	shell_color = "hv"
	projectile_type = /obj/item/projectile/bullet/heavy_rifle_408/hv

/obj/item/ammo_casing/heavy_rifle_408/lethal
	desc = "A .408 Omni bullet casing."
	projectile_type = /obj/item/projectile/bullet/heavy_rifle_408/lethal

/obj/item/ammo_casing/heavy_rifle_408/scrap
	desc = "An old .408 rifle bullet casing."
	icon_state = "lrifle_c_s"
	spent_icon = "lrifle_c_s-spent"
	shell_color = "p"
	projectile_type = /obj/item/projectile/bullet/heavy_rifle_408/scrap

/obj/item/ammo_casing/heavy_rifle_408/scrap/prespawned
	amount = 10

/obj/item/ammo_casing/heavy_rifle_408/laser
	desc = "A .408 Omni laser casing."
	projectile_type = /obj/item/projectile/beam/weak/heavy_rifle_408

///10mm caseless
/obj/item/ammo_casing/c10x24
	desc = "A 10mm x 24 caseless cartidge."
	caliber = "10x24"
	icon_state = "caseless"
	projectile_type = /obj/item/projectile/bullet/c10x24
	is_caseless = TRUE

//Flare, .22
/obj/item/ammo_casing/flare
	name = ".22 flare shell"
	desc = "A .22 chemical flare shell designed to produce a distress signal or illuminate an area."
	caliber = CAL_FLARE
	icon_state = "f-shell"
	spent_icon = "f-shell-spent"
	projectile_type = /obj/item/projectile/bullet/flare
	matter = list(MATERIAL_PLASTIC = 1)
	matter_reagents = list("phosphorus" = 3)
	maxamount = 3

/obj/item/ammo_casing/flare/prespawn
	amount = 3

/obj/item/ammo_casing/flare/old
	name = "old .22 flare shell"
	desc = "A .22 chemical flare shell designed to produce a distress signal or illuminate an area."
	caliber = CAL_FLARE
	icon_state = "old-shell"
	spent_icon = "old-shell-spent"
	projectile_type = /obj/item/projectile/bullet/flare/choas
	matter = list(MATERIAL_PLASTIC = 1)
	matter_reagents = list("phosphorus" = 3)
	maxamount = 1

/obj/item/ammo_casing/flare/old/prespawn
	amount = 1

/obj/item/ammo_casing/flare/blue
	name = ".22 blue flare shell"
	desc = "A .22 chemical flare shell designed to produce a blue distress signal or illuminate an area."
	caliber = CAL_FLARE
	icon_state = "b-shell"
	spent_icon = "b-shell-spent"
	projectile_type = /obj/item/projectile/bullet/flare/blue
	matter = list(MATERIAL_PLASTIC = 1)
	matter_reagents = list("phosphorus" = 3)
	maxamount = 3

/obj/item/ammo_casing/flare/blue/prespawn
	amount = 3

/obj/item/ammo_casing/flare/green
	name = ".22 green flare shell"
	desc = "A .22 chemical flare shell designed to produce a green distress signal or illuminate an area."
	caliber = CAL_FLARE
	icon_state = "g-shell"
	spent_icon = "g-shell-spent"
	projectile_type = /obj/item/projectile/bullet/flare/green
	matter = list(MATERIAL_PLASTIC = 1)
	matter_reagents = list("phosphorus" = 3)
	maxamount = 3

/obj/item/ammo_casing/flare/green/prespawn
	amount = 3

//.50 K U R T Z

/obj/item/ammo_casing/kurtz_50
	desc = "A .50 Kurtz bullet casing."
	caliber = CAL_50
	projectile_type = /obj/item/projectile/bullet/kurtz_50
	icon_state = "lrifle_c_l"
	spent_icon = "lrifle_c_l-spent"

/obj/item/ammo_casing/kurtz_50/rubber
	desc = "A .50 Kurtz rubber bullet casing."
	caliber = CAL_50
	projectile_type = /obj/item/projectile/bullet/kurtz_50/rubber
	icon_state = "lrifle_c_r"
	spent_icon = "lrifle_c_r-spent"

/obj/item/ammo_casing/kurtz_50/practice
	desc = "A .50 Kurtz practice bullet casing."
	caliber = CAL_50
	projectile_type = /obj/item/projectile/bullet/kurtz_50/practice
	icon_state = "lrifle_c_p"
	spent_icon = "lrifle_c_p-spent"

/obj/item/ammo_casing/kurtz_50/hv
	desc = "A .50 Kurtz high-velocity bullet casing."
	caliber = CAL_50
	projectile_type = /obj/item/projectile/bullet/kurtz_50/hv
	icon_state = "lrifle_c_hv"
	spent_icon = "lrifle_c_hv-spent"

/obj/item/ammo_casing/kurtz_50/lethal
	desc = "A .50 Kurtz hollow point bullet casing."
	caliber = CAL_50
	projectile_type = /obj/item/projectile/bullet/kurtz_50/lethal

/obj/item/ammo_casing/kurtz_50/laser
	desc = "A .50 Kurtz laser casing."
	caliber = CAL_50
	projectile_type = /obj/item/projectile/beam/weak/kurtz_50

//// .60-06 ////
/obj/item/ammo_casing/antim
	name = "shell casing"
	desc = "A .60-06 Anti-Material shell."
	icon_state = "atmr"
	spent_icon = "atmr-spent"
	caliber = CAL_ANTIM
	projectile_type = /obj/item/projectile/bullet/antim
	maxamount = 5

/obj/item/ammo_casing/antim/Initialize()
	. = ..()
	var/matrix/rotation_matrix = matrix()
	rotation_matrix.Turn(round(45 * rand(0, 32) / 2))
	src.transform = rotation_matrix * 0.5

/obj/item/ammo_casing/antim/prespawned
	amount = 5

/obj/item/ammo_casing/antim/scrap
	name = "shell casing"
	desc = "An old .60 Anti-Material shell."
	icon_state = "atmr_s"
	spent_icon = "atmr_s-spent"
	projectile_type = /obj/item/projectile/bullet/antim/scrap
	maxamount = 5

/obj/item/ammo_casing/antim/scrap/prespawned
	amount = 5

/obj/item/ammo_casing/antim/lethal
	name = "\"Red-Nose\" shell casing"
	desc = "A SA .60-06 Anti-Material \"Red-Nose\" shell."
	icon_state = "atmr_red"
	spent_icon = "atmr_red-spent"
	projectile_type = /obj/item/projectile/bullet/antim/lethal

/obj/item/ammo_casing/antim/lethal/prespawned
	amount = 5

/obj/item/ammo_casing/antim/ion
	name = "\"Off-Switch\" shell casing"
	desc = "A SA .60-06 Anti-Material \"Off-Switch\" shell."
	icon_state = "atmr_red"
	spent_icon = "atmr_red-spent"
	projectile_type = /obj/item/projectile/bullet/antim/ion

/obj/item/ammo_casing/antim/ion/prespawned
	amount = 5

//// 30mm rolled shot ////
/obj/item/ammo_casing/ball
	name = "shell casing"
	desc = "A 30mm rolled shot casing."
	icon_state = "ball"
	spent_icon = "ball-spent"
	caliber = CAL_BALL
	projectile_type = /obj/item/projectile/bullet/ball
	maxamount = 5

/obj/item/ammo_casing/ball/Initialize()
	. = ..()
	var/matrix/rotation_matrix = matrix()
	rotation_matrix.Turn(round(45 * rand(0, 32) / 2))
	src.transform = rotation_matrix * 0.5

/obj/item/ammo_casing/ball/prespawned
	amount = 4

//// Shotgun ammo ////
/obj/item/ammo_casing/shotgun
	name = "shotgun slug"
	desc = "A 20mm sabot slug."
	icon_state = "s-shell_hv"
	spent_icon = "s-shell_hv-spent"
	shell_color = "hv"
	caliber = CAL_SHOTGUN
	projectile_type = /obj/item/projectile/bullet/shotgun
	maxamount = 5

/obj/item/ammo_casing/shotgun/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/Initialize()
	. = ..()
	var/matrix/rotation_matrix = matrix()
	rotation_matrix.Turn(round(45 * rand(0, 22) / 2))
	src.transform = rotation_matrix * 0.75

/obj/item/ammo_casing/shotgun/scrap
	name = "old shotgun slug"
	desc = "An older 20mm slug."
	icon_state = "s-shell_s"
	spent_icon = "s-shell_s-spent"
	shell_color = "scrap"
	caliber = CAL_SHOTGUN
	projectile_type = /obj/item/projectile/bullet/shotgun/scrap
	maxamount = 5

/obj/item/ammo_casing/shotgun/scrap/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/beanbag
	name = "beanbag shell"
	desc = "A 20mm beanbag shell."
	icon_state = "s-shell_r"
	spent_icon = "s-shell_r-spent"
	shell_color = "r"
	projectile_type = /obj/item/projectile/bullet/shotgun/beanbag
	maxamount = 5

/obj/item/ammo_casing/shotgun/beanbag/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/beanbag/scrap
	name = "old beanbag shell"
	desc = "An older 20mm beanbag shell."
	icon_state = "s-shell_rs"
	spent_icon = "s-shell_rs-spent"
	shell_color = "scrap_r"
	projectile_type = /obj/item/projectile/bullet/shotgun/beanbag/scrap

/obj/item/ammo_casing/shotgun/beanbag/scrap/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/pellet
	name = "shotgun shell"
	desc = "A 20mm buckshot shell."
	icon_state = "s-shell_l"
	spent_icon = "s-shell_l-spent"
	shell_color = "l"
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun
	maxamount = 5

/obj/item/ammo_casing/shotgun/pellet/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/pellet/scrap
	name = "old shotgun shell"
	desc = "An older 20mm shell."
	icon_state = "s-shell_ss"
	spent_icon = "s-shell_ss-spent"
	shell_color = "scrap_s"
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun/scrap

/obj/item/ammo_casing/shotgun/pellet/scrap/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/blank
	name = "shotgun shell"
	desc = "A blank 20mm shell."
	icon_state = "s-shell_b"
	spent_icon = "s-shell_b-spent"
	shell_color = "b"
	projectile_type = /obj/item/projectile/bullet/blank
	maxamount = 5

/obj/item/ammo_casing/shotgun/blank/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/practice
	name = "shotgun shell"
	desc = "A 20mm practice shell."
	icon_state = "s-shell_b"
	spent_icon = "s-shell_b-spent"
	shell_color = "b"
	projectile_type = /obj/item/projectile/bullet/shotgun/practice
	maxamount = 5

/obj/item/ammo_casing/shotgun/practice/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/incendiary
	name = "incendiary shell"
	desc = "A 20mm chemical shell with highly flammable load."
	icon_state = "s-shell_i"
	spent_icon = "s-shell_i-spent"
	shell_color = "i"
	projectile_type = /obj/item/projectile/bullet/shotgun/incendiary

/obj/item/ammo_casing/shotgun/incendiary/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/laser
	name = "laser shell"
	desc = "A 20mm laser shell."
	icon_state = "lasershell"
	spent_icon = "lasershell-spent"
	shell_color = "i"
	projectile_type = /obj/item/projectile/beam/shotgun
	maxamount = 5

/obj/item/ammo_casing/shotgun/laser/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/payload
	name = "explosive shell"
	desc = "A 20mm explosive shell."
	shell_color = "i"
	projectile_type = /obj/item/projectile/bullet/shotgun/payload
	maxamount = 5
	is_caseless = TRUE

/obj/item/ammo_casing/shotgun/payload/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/plasma
	name = "plasma shell"
	desc = "A 20mm plasma shell."
	icon_state = "plasmashell"
	spent_icon = "plasmashell-spent"
	shell_color = "i"
	projectile_type = /obj/item/projectile/plasma/shell
	maxamount = 5

/obj/item/ammo_casing/shotgun/plasma/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/plasma_heavy
	name = "heavy plasma shell"
	desc = "A 20mm heavy plasma shot shell."
	icon_state = "plasmashell"
	spent_icon = "plasmashell-spent"
	shell_color = "i"
	projectile_type = /obj/item/projectile/plasma/heavy/shell
	maxamount = 5

/obj/item/ammo_casing/shotgun/plasma_heavy/prespawned
	amount = 5


//Can stun in one hit if aimed at the head, but
//is blocked by clothing that stops tasers and is vulnerable to EMP
/obj/item/ammo_casing/shotgun/stunshell
	name = "taser shell"
	desc = "A 20mm gauge taser cartridge."
	icon_state = "stunshell"
	spent_icon = "stunshell-spent"
	shell_color = "i"
	projectile_type = /obj/item/projectile/energy/electrode/stunshot
	maxamount = 5

/obj/item/ammo_casing/shotgun/stunshell/emp_act(severity)
	if(prob(100/severity)) BB = null
	update_icon()

/obj/item/ammo_casing/shotgun/stunshell/prespawned
	amount = 5

//Does not stun, only blinds, but has area of effect.
/obj/item/ammo_casing/shotgun/illumination
	name = "flash shell"
	desc = "A chemical shell used to signal distress or provide illumination."
	icon_state = "s-shell_f"
	spent_icon = "s-shell_f-spent"
	shell_color = "f"
	projectile_type = /obj/item/projectile/energy/flash/flare
	maxamount = 5

/obj/item/ammo_casing/shotgun/illumination/prespawned
	amount = 5

//Misc
/obj/item/ammo_casing/rocket
	name = "PG-7VL grenade"
	desc = "A 40mm warhead designed for the RPG-7 launcher. Has tubular shape."
	icon_state = "rocketshell"
	projectile_type = /obj/item/projectile/bullet/rocket
	caliber = CAL_ROCKET
	maxamount = 1
	reload_delay = 15
	is_caseless = TRUE
	w_class = ITEM_SIZE_NORMAL

/obj/item/ammo_casing/rocket/emp
	name = "PG-7EMP grenade"
	desc = "A 40mm EMP/Flash warhead designed for the RPG-7 launcher. Has a tubular shape."
	projectile_type = /obj/item/projectile/bullet/rocket/emp

/obj/item/ammo_casing/a75
	desc = "A .70 gyrojet casing."
	caliber = CAL_70
	projectile_type = /obj/item/projectile/bullet/gyro

/obj/item/ammo_casing/cap
	name = "cap"
	desc = "A cap for children toys."
	caliber = CAL_CAP
	color = "#FF0000"
	projectile_type = /obj/item/projectile/bullet/cap

/obj/item/ammo_casing/beam
	name = "laser casing"
	desc = "A laser casing thats cal is .223."
	caliber = CAL_SCI
	projectile_type = /obj/item/projectile/beam/weak

/obj/item/ammo_casing/beam/ap
	desc = "A piercing laser casing. Meant for penetration of armor thats cal is .223."
	projectile_type = /obj/item/projectile/beam/weak/ap

/obj/item/ammo_casing/beam/lethal
	desc = "A dence laser casing. Compact laser that is easily blocked by armor thats cal is .223."
	projectile_type = /obj/item/projectile/beam/weak/lethal

//// Grenade Shells ////

/obj/item/ammo_casing/grenade
	name = "baton round"
	desc = "A less-lethal rubber round, designed to be fired from grenade launchers"
	icon_state = "baton-round"
	spent_icon = "grenadeshell"
	projectile_type = /obj/item/projectile/bullet/batonround
	w_class = ITEM_SIZE_SMALL
	caliber = CAL_GRENADE
	maxamount = 1
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

/obj/item/ammo_casing/grenade/blast
	name = "blast grenade shell"
	desc = "An explosive grenade shell, designed to be fired from grenade launchers."
	icon_state = "blast"
	projectile_type = /obj/item/projectile/bullet/grenade

/obj/item/ammo_casing/grenade/frag
	name = "frag grenade shell"
	desc = "A frag grenade shell, designed to be fired from grenade launchers."
	icon_state = "frag"
	projectile_type = /obj/item/projectile/bullet/grenade/frag

/obj/item/ammo_casing/grenade/emp
	name = "emp grenade shell"
	desc = "An EMP grenade shell, designed to be fired from grenade launchers."
	icon_state = "emp"
	projectile_type = /obj/item/projectile/bullet/grenade/emp

/obj/item/ammo_casing/grenade/flash
	name = "flash grenade shell"
	desc = "A grenade shell containing specific chemical substances similar to those used in flashbangs, designed to be fired from gernade launchers."
	icon_state = "flash"
	projectile_type = /obj/item/projectile/bullet/grenade/flash

//Cross Bolt ammo
/obj/item/ammo_casing/crossbow_bolts
	name = "crossbow bolt"
	desc = "A finely made bolt designed for a crossbow."
	icon_state = "bolt"
	caliber = CAL_CROSSBOW
	projectile_type = /obj/item/projectile/bullet/crossbow_bolt
	matter = list(MATERIAL_STEEL = 1)
	maxamount = 10
	is_caseless = TRUE

/obj/item/ammo_casing/crossbow_bolts/bulk //Admin spawn stuff
	amount = 10

/obj/item/ammo_casing/crossbow_bolts/fragment
	name = "fragment crossbow bolt"
	desc = "A finely made bolt designed for a crossbow with sharp shards of ores and rocks attached to the tip that brake apart inside the target."
	icon_state = "bolt"
	projectile_type = /obj/item/projectile/bullet/crossbow_bolt/lethal
	matter = list(MATERIAL_STEEL = 1)
	maxamount = 10

/obj/item/ammo_casing/crossbow_bolts/fragment/bulk //Admin spawn stuff
	amount = 10

/obj/item/ammo_casing/crossbow_bolts/speed
	name = "aerodynamic crossbow bolt"
	desc = "A finely made bolt designed for a crossbow added fletching and balance to shoot true and faster."
	icon_state = "bolt"
	projectile_type = /obj/item/projectile/bullet/crossbow_bolt/hv
	matter = list(MATERIAL_STEEL = 1)
	maxamount = 10

/obj/item/ammo_casing/crossbow_bolts/speed/bulk //Admin spawn stuff
	amount = 10


/obj/item/ammo_casing/rod_bolt
	name = "metal rod"
	desc = "Wait a second, this is a bullet!"
	icon = 'icons/obj/stack/items.dmi'
	icon_state = "rods"
	caliber = "rod" //not a define
	projectile_type = /obj/item/projectile/bullet/rod_bolt
	matter = list(MATERIAL_STEEL = 1)
	maxamount = 1
	is_caseless = TRUE

/obj/item/ammo_casing/rod_bolt/rcd
	name = "flashforged rod"
	desc = "Wait a second, this is a flashforged bullet!"
	projectile_type = /obj/item/projectile/bullet/rod_bolt/rcd
