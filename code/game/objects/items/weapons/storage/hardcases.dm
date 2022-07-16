/obj/item/storage/hcases //probably should rename
	name = "hard case"
	desc = "A hardcase that can hold a lot of various things. Alt+click to open and close."
	icon = 'icons/obj/storage/cases.dmi' //Sprites made by shazbot194, many thanks
	icon_state = "hcase"
	var/sticker_name = "hcase"

	w_class = ITEM_SIZE_NORMAL
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_SMALL_STORAGE * 1.5 //a better fancy box
	matter = list(MATERIAL_STEEL = 20)
	var/sticker = null
	var/closed = TRUE

/obj/item/storage/hcases/Destroy()

	for (var/obj/held_item in contents) //if we find storage is harddelling move this down to that destroy
		qdel(held_item)

	..()
	return QDEL_HINT_QUEUE //just to be safe

/obj/item/storage/hcases/proc/can_interact(mob/user)
	if((!ishuman(user) && (loc != user)) || user.stat || user.restrained())
		return 1
	if(istype(loc, /obj/item/storage))
		return 2
	return 0

/obj/item/storage/hcases/verb/apply_sticker(mob/user)
	set name = "Apply Sticker"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return
//	sticker(user)

///obj/item/storage/hcases/proc/sticker(mob/user)
	var/mob/M = usr
	var/list/options = list()
	options["Orange"] = "[sticker_name]_sticker_o"
	options["Blue"] = "[sticker_name]_sticker_b"
	options["Red"] = "[sticker_name]_sticker_r"
	options["Green"] = "[sticker_name]_sticker_g"
	options["Purple"] = "[sticker_name]_sticker_p"
	options["IH Blue"] = "[sticker_name]_sticker_ih"


	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options
	if(src && choice && !M.incapacitated() && Adjacent(M))

		sticker = options[choice]

	update_icon()

/obj/item/storage/hcases/update_icon()
	icon_state = "[initial(icon_state)][closed ? "" : "_open"]"
	cut_overlays()
	if(sticker)
		add_overlay("[sticker][closed ? "" : "_open"]")

/obj/item/storage/hcases/open(mob/user)
	if(closed)
		to_chat(user, SPAN_NOTICE("The lid is closed."))
		return

	. = ..()

/obj/item/storage/hcases/verb/quick_open_close(mob/user)
	set name = "Close Lid"
	set category = "Object"
	set src in oview(1)

	if(can_interact(user) == 1)	//can't use right click verbs inside bags so only need to check for ablity
		return

	open_close(user)

/obj/item/storage/hcases/AltClick(mob/user)

	var/able = can_interact(user)

	if(able == 1)
		return

	if(able == 2)
		to_chat(user, SPAN_NOTICE("You cannot open the lid of \the [src] while it\'s in a container."))
		return

	open_close(user)

/obj/item/storage/hcases/proc/open_close(user)
	close_all()
	if (!isturf(src.loc))
		to_chat(user, SPAN_NOTICE("You cant toggle the lid, put it on the ground."))
		return
	if(closed)
		to_chat(user, SPAN_NOTICE("You open the lid of the [src]."))
		w_class = ITEM_SIZE_TITANIC
		closed = FALSE
	else
		to_chat(user, SPAN_NOTICE("You close the lid of the [src]."))
		w_class = ITEM_SIZE_NORMAL
		closed = TRUE

	playsound(loc, 'sound/weapons/guns/interact/selector.ogg', 100, 1)
	update_icon()

obj/item/storage/hcases/attackby(obj/item/W, mob/user)
	if(closed)
		to_chat(user, SPAN_NOTICE("You try to access \the [src] but its lid is closed!"))
		return
	. = ..()

/obj/item/storage/hcases/scrap	//Scrap isn't worse beyond poor shaming
	icon_state = "scrap"
	sticker_name = "scrap"
	desc = "A lacquer coated hardcase that can hold a lot of various things. Alt+click to open and close."
	max_storage_space = DEFAULT_SMALL_STORAGE * 1.3 //a better fancy box

/obj/item/storage/hcases/scrap/job_artist
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/scrap/job_artist/populate_contents()
	new /obj/item/bananapeel(src)
	new /obj/item/storage/fancy/crayons(src)
	new /obj/item/toy/weapon/waterflower(src)
	new /obj/item/stamp/clown(src)
	new /obj/item/handcuffs/fake(src)

/obj/item/storage/hcases/preimer
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/preimer/populate_contents()
	new /obj/item/storage/box/ids(src)
	new /obj/item/tool/knife/dagger/ceremonial(src)
	new /obj/item/clothing/accessory/cross(src)



//////////////////////////////////////////Ammo//////////////////////////////////////////

/obj/item/storage/hcases/ammo
	name = "ammo hard case"
	desc = "A generic ammo can. Can hold ammo magazines, boxes, bullets, a assortment of grenades and some gear. Alt+click to open and close."
	icon_state = "ammo_case"
	sticker_name = "ammo"
	matter = list(MATERIAL_STEEL = 20)

	can_hold = list(
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/ammo_magazine/ammobox,
		/obj/item/ammo_kit,
		/obj/item/gun/projectile/boltgun/flare_gun,
		/obj/item/device/radio,
		/obj/item/tool/knife,
		/obj/item/cell/small,
		/obj/item/cell/medium,
		/obj/item/device/flash,
		/obj/item/grenade,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/handcuffs
		)

/obj/item/storage/hcases/ammo/ih
	icon_state = "ammo_case_ih"
	desc = "An ammo can for Marshals. Can hold ammo magazines, boxes, bullets, a assortment of grenades and some gear. Alt+click to open and close."

/obj/item/storage/hcases/ammo/ih/wo
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/ammo/ih/wo/populate_contents()
	new /obj/item/handcuffs(src)
	new /obj/item/ammo_magazine/kurtz_50/rubber(src)
	new /obj/item/ammo_magazine/kurtz_50/rubber(src)
	new /obj/item/device/lighting/toggleable/flashlight/seclite(src)
	new /obj/item/cell/small/high(src)
	new /obj/item/gun/energy/gun/martin/preloaded(src)

/obj/item/storage/hcases/ammo/ih/spec_officer
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/ammo/ih/spec_officer/populate_contents()
	new /obj/item/handcuffs(src)
	new /obj/item/device/lighting/toggleable/flashlight/seclite(src)
	new /obj/item/cell/small/high(src)
	new /obj/item/gun/energy/gun/martin/preloaded(src)


/obj/item/storage/hcases/ammo/ih/ranger_officer
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/ammo/ih/ranger_officer/populate_contents()
	new /obj/item/handcuffs(src)
	new /obj/item/ammo_magazine/speed_loader_kurtz_50/rubber(src)
	new /obj/item/ammo_magazine/speed_loader_kurtz_50/rubber(src)
	new /obj/item/device/lighting/toggleable/flashlight/seclite(src)
	new /obj/item/cell/small/high(src)

/obj/item/storage/hcases/ammo/ih/marshal_officer
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/ammo/ih/marshal_officer/populate_contents()
	new /obj/item/handcuffs(src)
	new /obj/item/gun/energy/gun/martin/preloaded(src)
	new /obj/item/device/lighting/toggleable/flashlight/seclite(src)
	new /obj/item/cell/small/high(src)

/obj/item/storage/hcases/ammo/serb
	icon_state = "ammo_case_serb"
	desc = "A generic ammo holding can. Can hold ammo magazines, boxes, and bullets. Alt+click to open and close."

/obj/item/storage/hcases/ammo/blackmarket
	icon_state = "ammo_case_blackmarket"
	desc = "A shady looking ammo can. Can hold ammo magazines, boxes, and bullets. Alt+click to open and close."

/obj/item/storage/hcases/ammo/blackmarket/co
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/ammo/blackmarket/co/populate_contents()
	new /obj/item/handcuffs(src)
	new /obj/item/ammo_magazine/kurtz_50(src)
	new /obj/item/ammo_magazine/kurtz_50(src)
	new /obj/item/device/lighting/toggleable/flashlight/seclite(src)
	new /obj/item/cell/small/high(src)
	new /obj/item/gun/energy/gun/martin/preloaded(src)
	new /obj/item/tool/knife/boot/blackshield(src)

/obj/item/storage/hcases/ammo/blackmarket/serg
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/ammo/blackmarket/serg/populate_contents()
	new /obj/item/handcuffs(src)
	new /obj/item/device/lighting/toggleable/flashlight/seclite(src)
	new /obj/item/cell/small/high(src)
	new /obj/item/gun/energy/gun/martin/preloaded(src)
	new /obj/item/tool/knife/boot/blackshield(src)


/obj/item/storage/hcases/ammo/blackmarket/medspec
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/ammo/blackmarket/medspec/populate_contents()
	new /obj/item/handcuffs(src)
	new /obj/item/device/lighting/toggleable/flashlight/seclite(src)
	new /obj/item/cell/small/high(src)
	new /obj/item/gun/energy/gun/martin/preloaded(src)
	new /obj/item/tool/knife/boot/blackshield(src)

/obj/item/storage/hcases/ammo/blackmarket/trooper
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/ammo/blackmarket/trooper/populate_contents()
	new /obj/item/handcuffs(src)
	new /obj/item/device/lighting/toggleable/flashlight/seclite(src)
	new /obj/item/cell/small/high(src)
	new /obj/item/gun/energy/gun/martin/preloaded(src)
	new /obj/item/tool/knife/boot/blackshield(src)

/obj/item/storage/hcases/ammo/excel
	icon_state = "ammo_case_excel"
	desc = "The peoples ammo can! Can hold ammo magazines, boxes, and bullets. Alt+click to open and close."

/obj/item/storage/hcases/ammo/scrap
	icon_state = "ammo_case_scrap"
	desc = "A lacquer coated ammo can. Can hold ammo magazines, boxes, and bullets. Alt+click to open and close."
	max_storage_space = DEFAULT_SMALL_STORAGE * 1.3 //a better fancy box

//////////////////////////////////////////Cards//////////////////////////////////////////

/obj/item/storage/hcases/cardcarp
	name = "gaming hard case"
	desc = "A wooden hard case made specifically for card carp, but it can hold various other gaming items. Alt+click to open and close."
	icon_state = "gaming"
	matter = list(MATERIAL_WOOD = 10)
	max_storage_space = DEFAULT_BULKY_STORAGE * 2 // Side bars for decks tend to have lots of cards and given how specialized this is, a little extra space isn't bad. -Kaz

	can_hold = list(
		/obj/item/cardholder,
		/obj/item/card_carp,
		/obj/item/pack_card_carp,
		/obj/item/scale,
		/obj/item/bone_counter,
		/obj/item/board,
		/obj/item/storage/pill_bottle/chechker,
		/obj/item/deck,
		/obj/item/pack
		)

//////////////////////////////////////////Parts//////////////////////////////////////////

/obj/item/storage/hcases/parts
	name = "hardware hard case"
	desc = "A hard case that can hold electronic parts. Alt+click to open and close."
	icon_state = "hcase_parts"
	matter = list(MATERIAL_STEEL = 20)
	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/computer_hardware,
		/obj/item/stock_parts,
		/obj/item/device,
		/obj/item/cell,
		/obj/item/stack/cable_coil,
		/obj/item/gun/projectile/boltgun/flare_gun,
		/obj/item/ammo_casing/flare,
		/obj/item/extinguisher/mini,
		/obj/item/airlock_electronics,
		/obj/item/airalarm_electronics,
		/obj/item/tool_upgrade,
		/obj/item/clothing/head/welding,
		/obj/item/weldpack,
		/obj/item/circuitboard
		)

/obj/item/storage/hcases/parts/scrap
	icon_state = "scrap_parts"
	sticker_name = "scrap"
	desc = "A lacquer coated hard case that can hold weapon, armor, machine, and electronic parts. Alt+click to open and close."
	max_storage_space = DEFAULT_SMALL_STORAGE * 1.3 //a better fancy box

//////////////////////////////////////////Medical//////////////////////////////////////////

/obj/item/storage/hcases/med
	name = "medical hard case"
	desc = "A hardcase with medical markings that can hold a lot of medical supplies. Alt+click to open and close."
	icon_state = "hcase_medi"
	matter = list(MATERIAL_STEEL = 20)

	max_w_class = ITEM_SIZE_NORMAL

	can_hold = list(
		/obj/item/device/scanner/health,
		/obj/item/dnainjector,
		/obj/item/reagent_containers/dropper,
		/obj/item/reagent_containers/glass/beaker,
		/obj/item/reagent_containers/glass/bottle,
		/obj/item/reagent_containers/pill,
		/obj/item/reagent_containers/syringe,
		/obj/item/storage/pill_bottle,
		/obj/item/stack/medical,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/head/surgery,
		/obj/item/clothing/gloves/latex,
		/obj/item/reagent_containers/hypospray,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/gun/projectile/boltgun/flare_gun,
		/obj/item/ammo_casing/flare
		)

/obj/item/storage/hcases/med/scrap
	icon_state = "scrap_medi"
	sticker_name = "scrap"
	desc = "A lacquer coated hardcase with medical markings that can hold a lot of medical supplies. Alt+click to open and close."
	max_storage_space = DEFAULT_SMALL_STORAGE * 1.3 //a better fancy box

/obj/item/storage/hcases/med/medical_job
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/med/medical_job/populate_contents()
	new /obj/item/stack/medical/advanced/bruise_pack/large(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/stack/medical/advanced/ointment/large(src)
	new /obj/item/stack/medical/advanced/ointment(src)
	new /obj/item/stack/medical/splint(src)
	new /obj/item/reagent_containers/syringe/inaprovaline(src)
	new /obj/item/device/scanner/health(src)
	//Has medicals items inside it to save on spawn storage.
	new /obj/item/storage/firstaid/soteria(src)
	new /obj/item/modular_computer/tablet/moebius/preset(src)

/obj/item/storage/hcases/med/medical_job_cbo
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/med/medical_job_cbo/populate_contents()
	new /obj/item/stack/medical/advanced/bruise_pack/large(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/stack/medical/advanced/ointment/large(src)
	new /obj/item/stack/medical/advanced/ointment(src)
	new /obj/item/stack/medical/splint(src)
	new /obj/item/reagent_containers/syringe/inaprovaline(src)
	new /obj/item/device/scanner/health(src)
	//Has medicals items inside it to save on spawn storage.
	new /obj/item/storage/firstaid/soteria(src)
	new /obj/item/modular_computer/tablet/moebius/preset(src)
	new /obj/item/gun/projectile/clarissa/moebius/preloaded_cbo(src)
	new /obj/item/gun_upgrade/trigger/dnalock(src)
	new /obj/item/gun_upgrade/muzzle/silencer(src)

/obj/item/storage/hcases/med/medical_job_trama
	exspand_when_spawned = FALSE //No exspanding cheats

/obj/item/storage/hcases/med/medical_job_trama/populate_contents()
	new /obj/item/rig/trauma_suit/equipped(src)
	new /obj/item/clothing/suit/straight_jacket(src)
	new /obj/item/storage/firstaid/soteria/large(src)
	new /obj/item/gun/energy/sst/formatbound/preloaded(src)
	new /obj/item/cell/medium/moebius/high(src)
	new /obj/item/ammo_magazine/smg_35/hv(src)
	new /obj/item/modular_computer/tablet/moebius/preset(src)

//////////////////////////////////////////Engineering//////////////////////////////////////////

/obj/item/storage/hcases/engi
	name = "tool hard case"
	desc = "A hardcase with engineering markings that can hold a variety of different tools and materials. Alt+click to open and close."
	icon_state = "hcase_engi"
	matter = list(MATERIAL_STEEL = 20)
	max_w_class = ITEM_SIZE_NORMAL
	can_hold = list(
		/obj/item/cell,
		/obj/item/circuitboard,
		/obj/item/stack/material,
		/obj/item/clothing/head/welding,
		/obj/item/weldpack,
		/obj/item/material,
		/obj/item/tool,
		/obj/item/device,
		/obj/item/stack/cable_coil,
		/obj/item/taperoll/engineering,
		/obj/item/device/scanner/plant,
		/obj/item/extinguisher/mini,
		/obj/item/hand_labeler,
		/obj/item/clothing/gloves,
		/obj/item/clothing/glasses,
		/obj/item/flame/lighter,
		/obj/item/gun/projectile/boltgun/flare_gun,
		/obj/item/ammo_casing/flare,
		/obj/item/extinguisher/mini,
		/obj/item/airlock_electronics,
		/obj/item/airalarm_electronics,
		/obj/item/tool_upgrade,
		/obj/item/cell
		)

/obj/item/storage/hcases/engi/scrap
	icon_state = "scrap_engi"
	sticker_name = "scrap"
	desc = "An old lacquer coated hardcase with engineering markings that can hold a variety of different tools and materials. Alt+click to open and close."
	max_storage_space = DEFAULT_SMALL_STORAGE * 1.3 //a better fancy box
