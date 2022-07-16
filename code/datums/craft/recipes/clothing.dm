/datum/craft_recipe/clothing
	category = "Clothing"
	icon_state = "clothing"
	time = 50
	related_stats = list(STAT_COG)

/datum/craft_recipe/clothing/armorvest
	name = "handmade armor vest"
	result = /obj/item/clothing/suit/armor/vest/handmade
	steps = list(
		list(/obj/item/clothing/suit/storage/hazardvest, 1, "time" = 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL),
		list(/obj/item/stack/cable_coil, 4)
	)

/datum/craft_recipe/clothing/armorvest/full
	name = "handmade full armor vest"
	result = /obj/item/clothing/suit/armor/vest/handmade/full
	steps = list(
		list(/obj/item/clothing/suit/armor/vest/handmade, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/armorvest_black
	name = "handmade black armor vest"
	result = /obj/item/clothing/suit/armor/vest/handmade_black
	steps = list(
		list(/obj/item/clothing/suit/storage/hazardvest_black, 1, "time" = 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL),
		list(/obj/item/stack/cable_coil, 4)
	)

/datum/craft_recipe/clothing/armorvest_black/full
	name = "handmade full black armor vest"
	result = /obj/item/clothing/suit/armor/vest/handmade_black/full
	steps = list(
		list(/obj/item/clothing/suit/armor/vest/handmade_black, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/balaclava
	name = "balaclava"
	result = /obj/item/clothing/mask/balaclava
	steps = list(
		list(/obj/item/stack/material/cloth, 10, time = 15),
		list(QUALITY_CUTTING, 10, 60)
	)

/datum/craft_recipe/clothing/handmadebelt
	name = "hand-made tool belt"
	result = /obj/item/storage/belt/utility/handmade
	steps = list(
		list(/obj/item/stack/cable_coil, 30, time = 15),
		list(QUALITY_CUTTING, 10, 60)
	)

/datum/craft_recipe/clothing/blindfold
	name = "blindfold"
	result = /obj/item/clothing/glasses/blindfold
	steps = list(
		list(/obj/item/stack/material/cloth, 5, time = 15),
		list(QUALITY_CUTTING, 10, 60)
	)

// Masacre poor bucket, but gain some better protection. Cut bigger holes for eyes, drill small ones for some air.
/datum/craft_recipe/clothing/cheap_greathelm
	name = "bucket-helm"
	result = /obj/item/clothing/head/helmet/handmade/greathelm
	steps = list(
		list(/obj/item/reagent_containers/glass/bucket, 1, "time" = 30),
		list(QUALITY_CUTTING, 15, 120),
		list(QUALITY_DRILLING, 10, 60),
		list(CRAFT_MATERIAL, 6, MATERIAL_STEEL),
		list(/obj/item/stack/cable_coil, 4)
	)

/datum/craft_recipe/clothing/cardborg_helmet
	name = "cardborg helmet"
	result = /obj/item/clothing/head/costume/halloween/cardborg
	steps = list(
		list(CRAFT_MATERIAL, 1, MATERIAL_CARDBOARD)
	)

/datum/craft_recipe/clothing/cardborg_suit
	name = "cardborg suit"
	result = /obj/item/clothing/suit/costume/halloween/cardborg
	steps = list(
		list(CRAFT_MATERIAL, 3, MATERIAL_CARDBOARD)
	)

// Add some steel to gloves. Simple.
/datum/craft_recipe/clothing/combat_gloves
	name = "combat gloves"
	result = /obj/item/clothing/gloves/thick/handmade
	steps = list(
		list(/obj/item/clothing/gloves/thick, 1, "time" = 15),
		list(CRAFT_MATERIAL, 2, MATERIAL_STEEL),
		list(/obj/item/stack/cable_coil, 2)
	)

/datum/craft_recipe/clothing/combat_helmet
	name = "combat helmet"
	result = /obj/item/clothing/head/helmet/handmade
	steps = list(
		list(/obj/item/reagent_containers/glass/bucket, 1, "time" = 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL),
		list(/obj/item/stack/cable_coil, 2)
	)

/datum/craft_recipe/clothing/chest_rig
	name = "chest rig"
	result = /obj/item/clothing/suit/storage/vest/chestrig
	steps = list(
		list(/obj/item/stack/medical/bruise_pack/handmade, 3, "time" = 10),
		list(/obj/item/stack/rods, 2, "time" = 10),
		list(/obj/item/stack/cable_coil, 2)
	)

/datum/craft_recipe/clothing/riggedvoidsuit_helmet
	name = "makeshift armored void suit helmet"
	result = /obj/item/clothing/head/space/void/riggedvoidsuit
	steps = list(
		list(/obj/item/clothing, 1, time = 30),
		list(CRAFT_MATERIAL, 6, MATERIAL_STEEL),
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTIC),
		list(CRAFT_MATERIAL, 3, MATERIAL_GLASS),
		list(/obj/item/stack/cable_coil, 2),
		list(QUALITY_ADHESIVE, 15, "time" = 60)
	)

/datum/craft_recipe/clothing/riggedvoidsuit
	name = "makeshift armored void suit"
	result = /obj/item/clothing/suit/space/void/riggedvoidsuit
	steps = list(
		list(/obj/item/clothing/under, 1),
		list(CRAFT_MATERIAL, 10, MATERIAL_PLASTEEL),
		list(CRAFT_MATERIAL, 20, MATERIAL_PLASTIC),
		list(QUALITY_ADHESIVE, 15, "time" = 60),
		list(CRAFT_MATERIAL, 10, MATERIAL_GLASS),
		list(QUALITY_WELDING, 10, 20)
	)

/datum/craft_recipe/clothing/scavengerarmor
	name = "scavenger armor"
	result = /obj/item/clothing/suit/storage/scavengerarmor
	steps = list(
		list(/obj/item/clothing/under, 1),
		list(CRAFT_MATERIAL, 10, MATERIAL_STEEL), // Melee
		list(CRAFT_MATERIAL, 5, MATERIAL_PLASTEEL), // Bullets
		list(QUALITY_WELDING, 10, 20),
		list(CRAFT_MATERIAL, 10, MATERIAL_GLASS), // Reflective plating?
		list(CRAFT_MATERIAL, 2, MATERIAL_PLATINUM), // Bullets
		list(QUALITY_ADHESIVE, 15, "time" = 60)
	)

/datum/craft_recipe/clothing/muzzle
	name = "muzzle"
	result = /obj/item/clothing/mask/muzzle
	steps = list(
		list(/obj/item/stack/material/cloth, 5, time = 15),
		list(CRAFT_MATERIAL, 1, MATERIAL_STEEL),
		list(QUALITY_CUTTING, 10, 60)
	)

// Butcher some clothes into rags to make some cloak
/datum/craft_recipe/clothing/cloak
	name = "ragged cloak"
	result = /obj/item/clothing/suit/hooded/cloak/simple
	steps = list(
		list(/obj/item/clothing, 1, time = 30),
		list(/obj/item/clothing, 1, time = 30),
		list(QUALITY_CUTTING, 10, 60)
	)

/datum/craft_recipe/clothing/sandals
	name = "wooden sandals"
	result = /obj/item/clothing/shoes/sandal
	icon_state = "woodworking"
	steps = list(
		list(CRAFT_MATERIAL, 1, MATERIAL_WOOD)
	)

/****************************
* 	Full body armor vests
****************************/

/datum/craft_recipe/clothing/fullbodyarmor
	name = "generic full body armor"
	result = /obj/item/clothing/suit/armor/vest/full
	steps = list(
		list(/obj/item/clothing/suit/armor/vest, 1, "time" = 30), //TODO: a better way to do this, every children of armor/vest will be eligible for crafting this one...
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One sheet per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTIC),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/securityfull
	name = "full body security armor"
	result = /obj/item/clothing/suit/armor/vest/security/full
	steps = list(
		list(/obj/item/clothing/suit/armor/vest/security, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One sheet per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTIC),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/mtua
	name = "marshal tactical unit armor"
	result = /obj/item/clothing/suit/armor/vest/ironhammer/full
	steps = list(
		list(/obj/item/clothing/suit/armor/vest/ironhammer, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/iambulletproof
	name = "bulletproof suit"
	result = /obj/item/clothing/suit/armor/bulletproof/full
	steps = list(
		list(/obj/item/clothing/suit/armor/bulletproof/, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)
/datum/craft_recipe/clothing/platecarrier
	name = "full body plate carrier"
	result = /obj/item/clothing/suit/armor/platecarrier/full
	steps = list(
		list(/obj/item/clothing/suit/armor/platecarrier, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/platecarrier_ms
	name = "full body marshal plate carrier"
	result = /obj/item/clothing/suit/armor/platecarrier/ih/full
	steps = list(
		list(/obj/item/clothing/suit/armor/platecarrier/ih, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/platecarrier_bs
	name = "blackshield full body plate carrier"
	result = /obj/item/clothing/suit/armor/platecarrier/militia/full
	steps = list(
		list(/obj/item/clothing/suit/armor/platecarrier/militia, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/corpsmenplate
	name = "Corpsman full body plate carrier"
	result = /obj/item/clothing/suit/armor/platecarrier/corpsman/full
	steps = list(
		list(/obj/item/clothing/suit/armor/platecarrier/corpsman, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/doomguy // Closest you'll get next to a SCAF suit
	name = "full body green plate carrier"
	result = /obj/item/clothing/suit/armor/platecarrier/green/full
	steps = list(
		list(/obj/item/clothing/suit/armor/platecarrier/green, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/afghan // Just don't tell mom...
	name = "full body tan plate carrier"
	result = /obj/item/clothing/suit/armor/platecarrier/tan/full
	steps = list(
		list(/obj/item/clothing/suit/armor/platecarrier/tan, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 2, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/fullmetalflaket
	name = "full body flak vest"
	result = /obj/item/clothing/suit/armor/flackvest/full
	steps = list(
		list(/obj/item/clothing/suit/armor/flackvest, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/fullmetalflaket_tan
	name = "full body tan flak vest"
	result = /obj/item/clothing/suit/armor/flackvest/tan/full
	steps = list(
		list(/obj/item/clothing/suit/armor/flackvest/tan, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/flakgreen
	name = "full body green flak vest"
	result = /obj/item/clothing/suit/armor/flackvest/green/full
	steps = list(
		list(/obj/item/clothing/suit/armor/flackvest, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/flak_bs
	name = "blackshield full flak vest"
	result = /obj/item/clothing/suit/armor/flackvest/militia/full
	steps = list(
		list(/obj/item/clothing/suit/armor/flackvest/militia, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL), // One metal per limb
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTEEL),
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/datum/craft_recipe/clothing/commanderflak
	name = "blackshield commander's full flak vest"
	result = /obj/item/clothing/suit/armor/flackvest/commander/full
	steps = list(
		list(/obj/item/clothing/suit/armor/flackvest/commander, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL),
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTEEL), // In accordance to flak vests
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)
/datum/craft_recipe/clothing/woplate
	name = "Warrant Officer's full advanced plate carrier"
	result =  /obj/item/clothing/suit/armor/platecarrier/hos/full
	steps = list(
		list(/obj/item/clothing/suit/armor/platecarrier/hos, 1, "time" = 30),
		list(/obj/item/clothing/under, 1),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 4, MATERIAL_STEEL),
		list(CRAFT_MATERIAL, 4, MATERIAL_PLASTEEL), // In accordance to flak vests
		list(QUALITY_WELDING, 15, 30),
		list(QUALITY_ADHESIVE, 15, 30)
	)

/***********************
* 	Outsider crafts
************************/

/datum/craft_recipe/clothing/woodenarmor
	name = "wooden armor"
	result = /obj/item/clothing/suit/armor/vest/handmadewooden
	steps = list(
		list(CRAFT_MATERIAL, 10, MATERIAL_WOOD),
		list(QUALITY_SAWING, 10, 60),
		list(CRAFT_MATERIAL, 2, MATERIAL_STEEL),
		list(/obj/item/stack/material/cloth, 2, time = 30),
		list(QUALITY_CUTTING, 10, 30)
	)

/datum/craft_recipe/clothing/tac_clothes
	name = "tactical baggy rags"
	result = /obj/item/clothing/under/outcast
	steps = list(
		list(/obj/item/clothing, 1, time = 30),
		list(/obj/item/clothing, 1, time = 30),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 5, MATERIAL_LEATHER, "time" = 60),
		list(QUALITY_SAWING, 15, 30)
		)

/datum/craft_recipe/clothing/outsider_cloak
	name = "outcast's cloak"
	result = /obj/item/clothing/suit/storage/raggedcape
	steps = list(
		list(/obj/item/clothing, 1, time = 30),
		list(/obj/item/clothing, 1, time = 30),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 5, MATERIAL_LEATHER, "time" = 60),
		list(QUALITY_SAWING, 15, 30)
		)

/datum/craft_recipe/clothing/outsider_hood
	name = "outcast's hood"
	result = /obj/item/clothing/head/outcasthood
	steps = list(
		list(/obj/item/clothing, 1, time = 30),
		list(/obj/item/clothing, 1, time = 30),
		list(QUALITY_CUTTING, 15, 30),
		list(CRAFT_MATERIAL, 1, MATERIAL_LEATHER, "time" = 60),
		list(QUALITY_SAWING, 15, 30)
		)

/datum/craft_recipe/clothing/outsider_cape
	name = "outcast's cape"
	result = /obj/item/clothing/accessory/cape/outsider
	steps = list(
		list(/obj/item/clothing/suit/storage/raggedcape, 1, "time" = 30),
		list(QUALITY_CUTTING, 15, 30)
	)
/datum/craft_recipe/clothing/tribalhide
	name = "Tribal Hides"
	result =  /obj/item/clothing/under/tribalhide
	steps = list(
		list(CRAFT_MATERIAL, 5, MATERIAL_LEATHER, "time" = 60),
		list(QUALITY_CUTTING, 15, 30),
	)

