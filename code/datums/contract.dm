GLOBAL_LIST_EMPTY(various_antag_contracts)	//Contracts from "Various" emloyers, currently used by Traitors, Changelings and Blitzshells
GLOBAL_LIST_EMPTY(excel_antag_contracts)	//Excelsior contracts
GLOBAL_LIST_EMPTY(blackshield_antag_contracts)	//Excelsior contracts
GLOBAL_LIST_INIT(antag_item_targets,list(
		"the premier's antique laser gun" = /obj/item/gun/energy/captain,
		"a hand teleporter" = /obj/item/hand_tele,
		"an RCD" = /obj/item/rcd,
		"a jetpack" = /obj/item/tank/jetpack,
		"a premier's jumpsuit" = /obj/item/clothing/under/rank/captain,
		"a functional AI" = /obj/item/device/aicard,
		"the Guild Master's advanced voidsuit control module" = /obj/item/rig/ce,
		"the colony blueprints" = /obj/item/blueprints,
		"a sample of slime extract" = /obj/item/slime_extract,
		"a piece of corgi meat" = /obj/item/reagent_containers/food/snacks/meat/corgi,
		"a Soteria research overseer's jumpsuit" = /obj/item/clothing/under/rank/expedition_overseer,
		"a guild master's jumpsuit" = /obj/item/clothing/under/rank/exultant,
		"a Soteria biolab overseer's jumpsuit" = /obj/item/clothing/under/rank/moebius_biolab_officer,
		"a warrant officer's jumpsuit" = /obj/item/clothing/under/rank/ih_commander,
		"a steward's jumpsuit" = /obj/item/clothing/under/rank/first_officer,
		"the hypospray" = /obj/item/reagent_containers/hypospray,
		"an ablative armor vest" = /obj/item/clothing/suit/armor/laserproof,
		"an marshal hardsuit control module" = /obj/item/rig/combat/ironhammer
	))

GLOBAL_LIST_INIT(excel_item_targets,list(
		"a Minotaur revolver" = /obj/item/gun/projectile/revolver,
		"a Deckard revolver" = /obj/item/gun/projectile/revolver/deckard,
		"a Gladstone shotgun" = /obj/item/gun/projectile/shotgun/pump/gladstone,
		"a Grizzly shotgun" = /obj/item/gun/projectile/shotgun/pump,
		//"a Cassad plasma rifle" = /obj/item/gun/energy/plasma/cassad,
		"a Spider Rose energy gun" = /obj/item/gun/energy/gun,
		"a Hustler omni rifle" = /obj/item/gun/projectile/automatic/omnirifle,
		"a MAC sub machine gun" = /obj/item/gun/projectile/automatic/mac,
		"a STS carbine" = /obj/item/gun/projectile/automatic/sts,
		"a Colt handgun" = /obj/item/gun/projectile/colt,
		//"a Lenar granade launcher" = /datum/design/autolathe/gun/grenade_launcher_lenar, What in the god damn?
		"a RCD" = /obj/item/rcd,
		//"a cruciform" = /obj/item/implant/core_implant/cruciform,
		//"the station blueprints" = /obj/item/blueprints,
		//"a hand teleporter" = /obj/item/hand_tele,
		//"a bluespace Harpoon" = /obj/item/bluespace_harpoon,
		//"a rocket-powered charge hammer" = /obj/item/tool/hammer/charge,
		"the premier's antique laser gun" = /obj/item/gun/energy/captain

	))

GLOBAL_LIST_INIT(blackshield_item_targets,list(
		"Deckard revolver" = /obj/item/gun/projectile/revolver/deckard,
		"Gladstone shotgun" = /obj/item/gun/projectile/shotgun/pump/gladstone,
		"Cassad plasma rifle" = /obj/item/gun/energy/pulse/cassad,
		"Spider Rose energy gun" = /obj/item/gun/energy/gun,
		"Hustler omni rifle" = /obj/item/gun/projectile/automatic/omnirifle,
		"MAC sub machine gun" = /obj/item/gun/projectile/automatic/mac,
		"STS carbine" = /obj/item/gun/projectile/automatic/sts,
		"M1911 .40 Auto mag handgun" = /obj/item/gun/projectile/colt/ten,
		"Lenar granade launcher" = /obj/item/gun/projectile/grenade/lenar,
		"Forged barrel" = /obj/item/gun_upgrade/barrel/forged,
		"Penetrator magnetic accelerator barrel" = /obj/item/gun_upgrade/barrel/mag_accel,
		"Magnetic overheat barrel" = /obj/item/gun_upgrade/barrel/overheat,
		"Danger Zone Trigger" = /obj/item/gun_upgrade/trigger/dangerzone,
		"Gauss Coil barrel" = /obj/item/gun_upgrade/barrel/gauss,
		//"HandHolder Barrel Rail" = /obj/item/gun_upgrade/mechanism/gun_rail,
		"Watchman scope" = /obj/item/gun_upgrade/scope/watchman,
		"Contract Killer scope" = /obj/item/gun_upgrade/scope/killer,
		"Melee armor plating" = /obj/item/tool_upgrade/armor/melee,
		"Ballistic armor plating" = /obj/item/tool_upgrade/armor/bullet,
		"Energy armor plating" = /obj/item/tool_upgrade/armor/energy,
		"Bomb proofing armor plate" = /obj/item/tool_upgrade/armor/bomb,
		"Hand RCD" = /obj/item/rcd,
		//"bluespace Harpoon" = /obj/item/bluespace_harpoon,
		"Mech CCW armor booster" = /obj/item/mecha_parts/mecha_equipment/armor_booster/anticcw_armor_booster,
		"Mech Exosuit projectile armor booster" = /obj/item/mecha_parts/mecha_equipment/armor_booster/antiproj_armor_booster,
		"Mech Shield droid" = /obj/item/mecha_parts/mecha_equipment/combat_shield,
		"Mech RCD" = /obj/item/mecha_parts/mecha_equipment/tool/rcd,
		"PBT Pacifier mounted taser" = /obj/item/mecha_parts/mecha_equipment/ranged_weapon/energy/taser,
		"Ultra AC 2"= /obj/item/mecha_parts/mecha_equipment/ranged_weapon/ballistic/lmg,
		"LBX AC 10 Scattershot" = /obj/item/mecha_parts/mecha_equipment/ranged_weapon/ballistic/scattershot,
		"CH-PS Immolator laser" = /obj/item/mecha_parts/mecha_equipment/ranged_weapon/energy/laser,
		"CH-LC Solaris laser cannon" = /obj/item/mecha_parts/mecha_equipment/ranged_weapon/energy/laser/heavy,
		"MkIV ion heavy cannon" = /obj/item/mecha_parts/mecha_equipment/ranged_weapon/energy/ion,
		"SGL-6 grenade launcher" = /obj/item/mecha_parts/mecha_equipment/ranged_weapon/ballistic/missile_rack/flashbang,
		"Mounted rig combat injector" = /obj/item/rig_module/modular_injector/combat,
		"hardsuit laser cannon"= /obj/item/rig_module/mounted,
		"hardsuit laser gun"= /obj/item/rig_module/mounted/egun,
		"hardsuit taser" = /obj/item/rig_module/mounted/taser,
		"hardsuit grenade launcher" = /obj/item/rig_module/grenade_launcher,
		"hardsuit integrated flash" = /obj/item/rig_module/device/flash,
		"hardsuit integrated thermals" = /obj/item/rig_module/vision/thermal,
		"hardsuit integrated power sink" = /obj/item/rig_module/power_sink,
		"hardsuit integrated electrowarfare mod" = /obj/item/rig_module/electrowarfare_suite
		/*
		"design disk Means of Production" = /obj/item/computer_hardware/hard_drive/portable/design/excelsior,
		"design disk Means of Revolution" = /obj/item/computer_hardware/hard_drive/portable/design/excelsior_weapons,
		"design disk Stocking Revolution" = /obj/item/computer_hardware/hard_drive/portable/design/ex_parts,
		"design disk Means of Power" = /obj/item/computer_hardware/hard_drive/portable/design/ex_cells,
		"design disk .35 Drozd SMG" = /obj/item/computer_hardware/hard_drive/portable/design/guns/ex_drozd,
		"design disk Makarov" = /obj/item/computer_hardware/hard_drive/portable/design/guns/ex_makarov,
		"design disk Vintorez" = /obj/item/computer_hardware/hard_drive/portable/design/guns/ex_vintorez,
		"design disk Kardashev-Mosin" = /obj/item/computer_hardware/hard_drive/portable/design/guns/ex_boltgun,
		"design disk Kalashnikov" = /obj/item/computer_hardware/hard_drive/portable/design/guns/ex_ak,
		"design disk Reclaimer" = /obj/item/computer_hardware/hard_drive/portable/design/guns/ex_reclaimer,
		"design disk Shpagin" = /obj/item/computer_hardware/hard_drive/portable/design/guns/ex_ppsh,*/

	))

/datum/antag_contract
	var/name
	var/desc
	var/reward = 0
	var/completed = FALSE
	var/datum/mind/completed_by = null
	var/unique = FALSE

/datum/antag_contract/proc/can_place()
	if(unique)
		for(var/datum/antag_contract/C in GLOB.various_antag_contracts)
			if(istype(C, type) && !C.completed)
				return FALSE
	return !!name

/datum/antag_contract/proc/place()
	GLOB.various_antag_contracts += src

/datum/antag_contract/proc/remove()
	GLOB.various_antag_contracts -= src

// Called on every contract when a mob is despawned - currently, this can only happen when someone cryos
/datum/antag_contract/proc/on_mob_despawned(datum/mind/M)
	return

/datum/antag_contract/proc/complete(datum/mind/M)
	if(completed)
		warning("Contract completed twice: [name] [desc]")
	else
		GLOB.completed_antag_contracts++
	completed = TRUE
	completed_by = M

	if(M)
		M.contracts_completed++
		if(M.current)
			to_chat(M.current, SPAN_NOTICE("Contract completed: [name] ([reward] TC)"))

	for(var/obj/item/device/uplink/U in world_uplinks)
		if(U.uplink_owner != M)
			continue
		U.uses += reward
		break


// A contract to steal a specific item - allows you to check all contents (recursively) for the target item
/datum/antag_contract/item

/datum/antag_contract/item/proc/on_container(obj/item/storage/bsdm/container)
	if(check(container))
		complete(container.owner)

/datum/antag_contract/item/proc/check(obj/item/storage/container)
	return check_contents(container.GetAllContents(includeSelf = FALSE))

/datum/antag_contract/item/proc/check_contents(list/contents)
	warning("Item contract does not implement check_contents(): [name] [desc]")
	return FALSE


// A contract to steal a specific file - allows you to check all disks for the target file
/datum/antag_contract/item/file

/datum/antag_contract/item/file/check_contents(list/contents)
	var/list/all_files = list()
	for(var/obj/item/computer_hardware/hard_drive/H in contents)
		all_files += H.stored_files

	return check_files(all_files)

/datum/antag_contract/item/file/proc/check_files(list/files)
	warning("File contract does not implement check_files(): [name] [desc]")
	return FALSE



/datum/antag_contract/implant
	name = "Implant"
	reward = 14
	var/datum/mind/target_mind

/datum/antag_contract/implant/New()
	var/list/candidates = SSticker.minds.Copy()

	// Don't target the same player twice
	for(var/datum/antag_contract/implant/C in GLOB.various_antag_contracts)
		candidates -= C.target_mind

	while(candidates.len)
		var/datum/mind/candidate_mind = pick(candidates)
		candidates -= candidate_mind

		// Implant contracts are 75% less likely to target contract-based antags to reduce the amount of cheesy self-implants
		if((player_is_antag_id(candidate_mind, ROLE_TRAITOR) || player_is_antag_id(candidate_mind, ROLE_CARRION)) && prob(75))
			continue

		// No check for cruciform because the spying implant can bypass it
		var/mob/living/carbon/human/H = candidate_mind.current
		if(!istype(H) || H.stat == DEAD || !isOnStationLevel(H))
			continue

		target_mind = candidate_mind
		desc = "Implant [H.real_name] with a spying implant."
		break
	..()

/datum/antag_contract/implant/can_place()
	return ..() && target_mind

/datum/antag_contract/implant/proc/check(obj/item/implant/spying/implant)
	if(completed)
		return
	if(implant.wearer && implant.wearer.mind == target_mind)
		complete(implant.owner)

/datum/antag_contract/implant/on_mob_despawned(datum/mind/M)
	if(M == target_mind)
		remove()

#define CONTRACT_RECON_TARGET_COUNT 3

/datum/antag_contract/recon
	name = "Recon"
	reward = 12
	var/list/area/targets = list()

/datum/antag_contract/recon/New()
	var/list/candidates = ship_areas.Copy()
	for(var/datum/antag_contract/recon/C in GLOB.various_antag_contracts)
		if(C.completed)
			continue
		candidates -= C.targets
	while(candidates.len && targets.len < CONTRACT_RECON_TARGET_COUNT)
		var/area/target = pick(candidates)
		if(target.is_maintenance)
			candidates -= target
			continue
		targets += target
	desc = "Activate 3 spying sensors in [english_list(targets, and_text = " or ")] and let them work without interruption for 10 minutes."
	..()

/datum/antag_contract/recon/can_place()
	return ..() && targets.len

/datum/antag_contract/recon/proc/check(obj/item/device/spy_sensor/sensor)
	if(completed)
		return
	if(get_area(sensor) in targets)
		complete(sensor.owner)


/datum/antag_contract/derail
	name = "Derail"
	unique = TRUE
	reward = 14
	var/count

/datum/antag_contract/derail/New()
	count = rand(3,5)
	desc = "Break the minds of [count] people using a mind fryer device."
	..()

/datum/antag_contract/derail/proc/report(obj/item/device/mind_fryer/mindfryer)
	if(completed)
		return
	complete(mindfryer.owner)


/datum/antag_contract/item/assasinate
	name = "Assassinate"
	reward = 12
	var/obj/item/target
	var/datum/mind/target_mind

/datum/antag_contract/item/assasinate/New()
	..()
	var/list/candidates = SSticker.minds.Copy()
	for(var/datum/antag_contract/item/assasinate/C in GLOB.various_antag_contracts)
		candidates -= C.target_mind
	while(candidates.len)
		target_mind = pick(candidates)
		var/mob/living/carbon/human/H = target_mind.current
		if(!istype(H) || H.stat == DEAD || !isOnStationLevel(H))
			candidates -= target_mind
			continue
		target = H.get_core_implant(/obj/item/implant/core_implant/cruciform)
		if(!target)
			target = H.organs_by_name[BP_HEAD]
		desc = "Assassinate [target_mind.current.real_name] and dispatch their [target.name] via BSDM as a proof."
		break

/datum/antag_contract/item/assasinate/can_place()
	return ..() && target

/datum/antag_contract/item/assasinate/check_contents(list/contents)
	return target in contents

/datum/antag_contract/item/assasinate/on_mob_despawned(datum/mind/M)
	if(M == target_mind)
		remove()


/datum/antag_contract/item/steal
	name = "Steal"
	reward = 10
	var/target_desc
	var/target_type

	var/static/list/possible_items = list(
		"the premier's antique laser gun" = /obj/item/gun/energy/captain,
		"a hand teleporter" = /obj/item/hand_tele,
		"an RCD" = /obj/item/rcd,
		"a jetpack" = /obj/item/tank/jetpack,
		"a captain's jumpsuit" = /obj/item/clothing/under/rank/captain,
		"a functional AI" = /obj/item/device/aicard,
		"the Technomancer Exultant's advanced voidsuit control module" = /obj/item/rig/ce,
		"the station blueprints" = /obj/item/blueprints,
		"a sample of slime extract" = /obj/item/slime_extract,
		"a piece of corgi meat" = /obj/item/reagent_containers/food/snacks/meat/corgi,
		"a Moebius expedition overseer's jumpsuit" = /obj/item/clothing/under/rank/expedition_overseer,
		"a exultant's jumpsuit" = /obj/item/clothing/under/rank/exultant,
		"a Moebius biolab officer's jumpsuit" = /obj/item/clothing/under/rank/moebius_biolab_officer,
		"a Ironhammer commander's jumpsuit" = /obj/item/clothing/under/rank/ih_commander,
		"a First Officer's jumpsuit" = /obj/item/clothing/under/rank/first_officer,
		"the hypospray" = /obj/item/reagent_containers/hypospray,
		"the premier's pinpointer" = /obj/item/pinpointer,
		"an ablative armor vest" = /obj/item/clothing/suit/armor/laserproof,
		"an Ironhammer hardsuit control module" = /obj/item/rig/combat/ironhammer
	)

/datum/antag_contract/item/steal/New()
	..()
	if(!target_type)
		var/list/candidates = possible_items.Copy()
		for(var/datum/antag_contract/item/steal/C in GLOB.various_antag_contracts)
			candidates.Remove(C.target_desc)
		if(candidates.len)
			target_desc = pick(candidates)
			target_type = possible_items[target_desc]
			desc = "Steal [target_desc] and send it via BSDM."

/datum/antag_contract/item/steal/can_place()
	return ..() && target_type

/datum/antag_contract/item/steal/check_contents(list/contents)
	return locate(target_type) in contents


/datum/antag_contract/item/steal/docs
	unique = TRUE
	reward = 12
	target_type = /obj/item/oddity/secdocs
	desc = "Steal a folder of secret documents and send them via BSDM."


/datum/antag_contract/item/dump
	name = "Dump"
	unique = TRUE
	reward = 8
	var/sum

/datum/antag_contract/item/dump/New()
	..()
	sum = rand(30, 40) * 500
	desc = "Extract a sum of [sum] credits from the economy and dispatch it via BSDM."

/datum/antag_contract/item/dump/check_contents(list/contents)
	var/received = 0
	for(var/obj/item/spacecash/cash in contents)
		received += cash.worth
	return received >= sum


/datum/antag_contract/item/blood
	name = "Steal blood samples"
	unique = TRUE
	reward = 10
	var/count

/datum/antag_contract/item/blood/New()
	..()
	count = rand(3, 6)
	desc = "Send blood samples of [count] different people in separate containers via BSDM."

/datum/antag_contract/item/blood/check_contents(list/contents)
	var/list/samples = list()
	for(var/obj/item/reagent_containers/C in contents)
		var/list/data = C.reagents?.get_data("blood")
		if(!data || data["species"] != "Human" || (data["blood_DNA"] in samples))
			continue
		samples += data["blood_DNA"]
		if(samples.len >= count)
			return TRUE
	return FALSE



/datum/antag_contract/item/file/research
	name = "Steal research"
	unique = TRUE
	reward = 6
	var/list/targets = list()
	var/static/counter = 0

/datum/antag_contract/item/file/research/New()
	..()
	var/list/candidates = SSresearch.all_designs.Copy()
	for(var/datum/antag_contract/item/file/research/C in GLOB.various_antag_contracts)
		candidates -= C.targets
	while(candidates.len && targets.len < 8)
		var/datum/design/D = pick(candidates)
		targets += D
		candidates -= D
	desc = "Send a disk with one of the following designs via BSDM:<br>[english_list(targets, and_text = " or ")]."

/datum/antag_contract/item/file/research/can_place()
	return ..() && targets.len && counter < 3

/datum/antag_contract/item/file/research/place()
	..()
	++counter

/datum/antag_contract/item/file/research/check_files(list/files)
	for(var/datum/computer_file/binary/design/D in files)
		if(!D.copy_protected && (D.design in targets))
			return TRUE
	return FALSE

// Excelsior contracts

/datum/antag_contract/excel

/datum/antag_contract/excel/place()
	GLOB.excel_antag_contracts += src

/datum/antag_contract/excel/remove()
	GLOB.excel_antag_contracts -= src

/datum/antag_contract/excel/complete(user)
	if(completed)
		warning("Mandete completed twice: [name] [desc]")
	completed = TRUE

	if(user)
		to_chat(user, SPAN_NOTICE("Mandete completed: [name] ([reward] energy)"))

	excelsior_energy += reward
	for (var/obj/machinery/complant_teleporter/t in excelsior_teleporters)
		t.update_nano_data()

/datum/antag_contract/excel/appropriate
	name = "Appropriate"
	reward = 400
	var/target_desc
	var/target_type

/datum/antag_contract/excel/appropriate/New()
	..()
	if(!target_type)
		var/list/candidates = GLOB.excel_item_targets.Copy()
		for(var/datum/antag_contract/excel/appropriate/C in GLOB.excel_antag_contracts)
			candidates.Remove(C.target_desc)
		if(candidates.len)
			target_desc = pick(candidates)
			target_type = candidates[target_desc]
			desc = "Appropriate [target_desc] by sending it in the teleporter."

/datum/antag_contract/excel/appropriate/can_place()
	return ..() && target_type


// Mandates that target specific crew members
/datum/antag_contract/excel/targeted  //Base targeted contract is mobilize
	name = "Moblize"
	reward = 1200
	var/datum/mind/target_mind
	var/cruciform_check = FALSE
	var/desc_text = "by stuffing them alive in the teleporter" // Text for the end of desc, a bit hacky
	var/command_bias = 15 //Bonus chance for targeting heads and sec

/datum/antag_contract/excel/targeted/New()
	..()
	var/list/candidates = SSticker.minds.Copy()
	var/targets_command = prob(command_bias)
	for(var/datum/antag_contract/excel/targeted/M in GLOB.excel_antag_contracts)
		candidates -= M.target_mind

	while(candidates.len)
		var/datum/mind/candidate_mind = pick(candidates)
		candidates -= candidate_mind

		if(player_is_antag_id(candidate_mind, ROLE_EXCELSIOR_REV))
			continue

		var/mob/living/carbon/human/H = candidate_mind.current
		if(!istype(H) || H.stat == DEAD || !isOnStationLevel(H))
			continue

		if (targets_command)
			if(!(candidate_mind.assigned_role in list(JOBS_COMMAND + JOBS_SECURITY)))
				continue

		if (cruciform_check)
			var/cruciform = H.get_core_implant(/obj/item/implant/core_implant/cruciform)
			if(cruciform)
				continue

		target_mind = candidate_mind
		desc = "[name] [target_mind.current.real_name] [desc_text]"
		break

/datum/antag_contract/excel/targeted/can_place()
	return ..() && target_mind

/datum/antag_contract/excel/targeted/on_mob_despawned(datum/mind/M)
	if(M == target_mind)
		remove()

//Cheks for theses mandates are in /datum/controller/subsystem/ticker/proc/excel_check()
/datum/antag_contract/excel/targeted/overthrow  //Base targeted contract is mobilize
	name = "Overthrow"
	reward = 1000
	command_bias = 100 //Also a bit hacky
	desc_text = "and destabilize the colony by either killing or converting them."

/datum/antag_contract/excel/targeted/liberate
	name = "Liberate"
	reward = 800
	cruciform_check = TRUE
	desc_text = "by converting them to excelsior."

/datum/antag_contract/excel/propaganda
	name = "Propaganda"
	reward = 600
	var/list/area/targets = list()

/datum/antag_contract/excel/propaganda/New()
	var/list/candidates = ship_areas.Copy()
	for(var/datum/antag_contract/excel/propaganda/M in GLOB.excel_antag_contracts)
		if(M.completed)
			continue
		candidates -= M.targets
	while(candidates.len && targets.len < 4) //3 out of 4 locations needed
		var/area/target = pick(candidates)
		if(target.is_maintenance)
			candidates -= target
			continue
		targets += target
	desc = "Activate propaganda chips in 3 different areas: [english_list(targets, and_text = " or ")] and let them spread the revolution!."
	..()

/datum/antag_contract/excel/propaganda/can_place()
	return ..() && targets.len


// Blackshield contracts

/datum/antag_contract/blackshield

/datum/antag_contract/blackshield/place()
	GLOB.blackshield_antag_contracts += src

/datum/antag_contract/blackshield/remove()
	GLOB.blackshield_antag_contracts -= src

/datum/antag_contract/blackshield/complete(user)
	if(completed)
		warning("Request completed twice: [name] [desc]")
	completed = TRUE

	if(user)
		to_chat(user, SPAN_NOTICE("Request completed: [name] ([reward] energy)"))

	blackshield_energy += reward
	for (var/obj/machinery/blackshield_teleporter/t in blackshield_teleporters)
		t.update_nano_data()

//TODO: Make let them send in other things/place items in areas to allow for addionation points
/datum/antag_contract/blackshield/appropriate
	name = "Appropriate"
	reward = 200 //How many points we give for items
	var/target_desc
	var/target_type

/datum/antag_contract/blackshield/appropriate/New()
	..()
	if(!target_type)
		var/list/candidates = GLOB.blackshield_item_targets.Copy()
		for(var/datum/antag_contract/blackshield/appropriate/C in GLOB.blackshield_antag_contracts)
			candidates.Remove(C.target_desc)
		if(candidates.len)
			target_desc = pick(candidates)
			target_type = candidates[target_desc]
			desc = "Appropriate [target_desc] by sending it in the teleporter."

/datum/antag_contract/blackshield/appropriate/can_place()
	return ..() && target_type