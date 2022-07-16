/datum/gear/factionsecurity
	display_name = "winter coat, security"
	path = /obj/item/clothing/suit/hooded/wintercoat/security
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_wear_suit
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/beretcommander
	display_name = "beret, security head"
	path = /obj/item/clothing/head/rank/commander
	allowed_roles = list("Warrant Officer")
	slot = slot_head
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/beretironhammer
	display_name = "beret, security"
	path = /obj/item/clothing/head/rank/ironhammer
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_head
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/berettrooper
	display_name = "beret, blackshield"
	path = /obj/item/clothing/head/rank/trooper/beret
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_head
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/beretwarden
	display_name = "beret, supply specialist"
	path = /obj/item/clothing/head/rank/warden/beret
	allowed_roles = list("Supply Specialist","Sergeant")
	slot = slot_head
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/cloak
	display_name = "cloak, warrant officer"
	path = /obj/item/clothing/accessory/job/cape/ihc
	allowed_roles = list("Warrant Officer")
	slot = slot_wear_suit
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/cloakironhammer
	display_name = "cloak, security"
	path = /obj/item/clothing/accessory/job/cape/ironhammer
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_wear_suit
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/blackshield
	display_name = "cloak selection, blackshield"
	path = /obj/item/clothing/accessory/job/cape/blackshield
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_wear_suit
	flags = GEAR_HAS_TYPE_SELECTION
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/blackcoat
	display_name = "longcoat selection, blackshield"
	path = /obj/item/clothing/accessory/bscloak
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	sort_category = "Faction: Security"
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/factionsecurity/capfield
	display_name = "cap, field"
	path = /obj/item/clothing/head/soft/sec2soft
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/cappatrolblack
	display_name = "cap, patrol black"
	path = /obj/item/clothing/head/seccorp
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_head
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/cappatrolblue
	display_name = "cap, patrol blue"
	path = /obj/item/clothing/head/seccap
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_head
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/capsarge
	display_name = "cap, supply specialist"
	path = /obj/item/clothing/head/soft/sarge2soft
	allowed_roles = list("Supply Specialist", "Sergeant")
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/captrooper
	display_name = "cap, blackshield"
	path = /obj/item/clothing/head/rank/trooper/cap
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_head
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/radiohat // THINK FAST CHUCKLENUTS!
	display_name = "radio cap, blackshield"
	path = /obj/item/device/radio/headset/radiohat_blackshield
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_head
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/bdu
	display_name = "security BDU selection"
	path = /obj/item/clothing/under/rank/bdu
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	flags = GEAR_HAS_TYPE_SELECTION
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/turtleneck
	display_name = "Marshal turtleneck"
	path = /obj/item/clothing/under/rank/security/turtleneck
	allowed_roles = list("Warrant Officer","Supply Specialist","Ranger","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/juniormarshal
	display_name = "Junior Marshals uniform"
	path = /obj/item/clothing/under/rank/security/cadet
	allowed_roles = list("Warrant Officer","Supply Specialist","Ranger","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorka_ih
	display_name = "gorka jacket, security"
	path = /obj/item/clothing/suit/gorka/toggle/gorka_ih
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_wear_suit
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorka_ih_med_b
	display_name = "gorka jacket, security medical blue"
	path = /obj/item/clothing/suit/gorka/toggle/gorka_ih/ih_med_b
	allowed_roles = list("Corpsman")
	slot = slot_wear_suit
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorka_ih_med_g
	display_name = "gorka jacket, security medical green"
	path = /obj/item/clothing/suit/gorka/toggle/gorka_ih/ih_med_g
	allowed_roles = list("Corpsman")
	slot = slot_wear_suit
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorkasecurity
	display_name = "gorka jumpsuit, security"
	path = /obj/item/clothing/under/rank/security/gorka_ih
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorkasecuritypants
	display_name = "gorka pants, security"
	path = /obj/item/clothing/under/rank/security/gorkapantsih
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorkasecuritymed
	display_name = "gorka blue med jumpsuit, security"
	path = /obj/item/clothing/under/rank/medspec/gorka_ih_med_b
	allowed_roles = list("Corpsman")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorkasecuritygreenmed
	display_name = "gorka green med jumpsuit, security"
	path = /obj/item/clothing/under/rank/medspec/gorka_ih_med_g
	allowed_roles = list("Corpsman")
	slot = slot_wear_suit
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorka_pants
	display_name = "gorka security pants"
	path = /obj/item/clothing/under/rank/security/gorkapantsih
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/gorka_pants
	display_name = "gorka security med pants"
	path = /obj/item/clothing/under/rank/medspec/gorkapantsihmed
	allowed_roles = list("Corpsman")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/cadet
	display_name = "uniform, cadet"
	path = /obj/item/clothing/under/rank/trooper/cadet
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/inspector
	display_name = "uniform, patrol"
	path = /obj/item/clothing/under/rank/inspector/uniform
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/jumpskirtcommander
	display_name = "jumpskirt, commander"
	path = /obj/item/clothing/under/rank/ih_commander/skirt
	allowed_roles = list("Warrant Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/jumpskirtmedspec
	display_name = "jumpskirt, medical specialist"
	path = /obj/item/clothing/under/rank/medspec/skirt
	allowed_roles = list("Corpsman")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/jumpskirtoperative
	display_name = "jumpskirt, operative"
	path = /obj/item/clothing/under/rank/security/skirt
	allowed_roles = list("Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/jumpskirtwarden
	display_name = "jumpskirt, supply specialist"
	path = /obj/item/clothing/under/rank/warden/skirt
	allowed_roles = list("Supply Specialist")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/jumpskirttrooper
	display_name = "jumpskirt, blackshield"
	path = /obj/item/clothing/under/rank/trooper/skirt
	allowed_roles = list("Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_w_uniform
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/security
	display_name = "security HUD"
	path = /obj/item/clothing/glasses/hud/security
	allowed_roles = list(JOBS_SECURITY)
	slot = slot_glasses
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/security_tact
	display_name = "tactical security HUD"
	path = /obj/item/clothing/glasses/sechud/tactical
	allowed_roles = list(JOBS_SECURITY)
	slot = slot_glasses
	sort_category = "Faction: Security"
	cost = 2 //has flash protection

/datum/gear/factionsecurity/fatigueselection
	display_name = "fatigue selection"
	path = /obj/item/clothing/under/rank/fatigues/
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_w_uniform
	flags = GEAR_HAS_TYPE_SELECTION
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/fatiguecoverselection
	display_name = "fatigue cover selection"
	path = /obj/item/clothing/head/rank/fatigue/
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_head
	flags = GEAR_HAS_TYPE_SELECTION
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/snowsuitsecurity
	display_name = "snowsuit, security"
	path = /obj/item/clothing/suit/storage/snowsuit/security
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_wear_suit
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/winterbootssecurity
	display_name = "winter boots, security"
	path = /obj/item/clothing/shoes/winter/security
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_shoes
	sort_category = "Faction: Security"

/datum/gear/factionsecurity/armoredcossackcoat
	display_name = "jaeger hussar coat"
	path = /obj/item/clothing/suit/greatcoat/cossackarmoredcoat
	allowed_roles = list("Blackshield Commander","Warrant Officer","Supply Specialist","Sergeant","Ranger","Corpsman","Blackshield Trooper","Marshal Officer")
	slot = slot_wear_suit
	sort_category = "Faction: Security"
	cost = 2
