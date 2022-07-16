/obj/item/organ/internal/brain
	name = "brain"
	health = 400 //They need to live awhile longer than other organs. Is this even used by organ code anymore?
	desc = "A piece of juicy meat found in a person's head."
	organ_efficiency = list(BP_BRAIN = 100)
	parent_organ_base = BP_HEAD
	unique_tag = BP_BRAIN
	vital = 1
	icon_state = "brain2"
	force = 1.0
	w_class = ITEM_SIZE_SMALL
	specific_organ_size = 2
	throwforce = 1.0
	throw_speed = 3
	throw_range = 5
	layer = ABOVE_MOB_LAYER
	origin_tech = list(TECH_BIO = 3)
	attack_verb = list("attacked", "slapped", "whacked")
	price_tag = 8000
	blood_req = 8
	max_blood_storage = 80
	oxygen_req = 8
	nutriment_req = 6
	var/mob/living/carbon/brain/brainmob = null

/obj/item/organ/internal/brain/xeno
	name = "thinkpan"
	desc = "It looks kind of like an enormous wad of purple bubblegum."
	icon = 'icons/mob/alien.dmi'
	icon_state = "chitin"

/obj/item/organ/internal/brain/New()
	..()
	health = config.default_brain_health
	spawn(5)
		if(brainmob && brainmob.client)
			brainmob.client.screen.len = null //clear the hud

/obj/item/organ/internal/brain/Destroy()
	if(brainmob)
		qdel(brainmob)
		brainmob = null
	. = ..()

/obj/item/organ/internal/brain/proc/transfer_identity(mob/living/carbon/H)
	name = "\the [H]'s [initial(src.name)]"
	brainmob = new(src)
	brainmob.name = H.real_name
	brainmob.real_name = H.real_name
	brainmob.dna = H.dna.Clone()
	brainmob.timeofhostdeath = H.timeofdeath
	if(H.mind)
		H.mind.transfer_to(brainmob)

	to_chat(brainmob, SPAN_NOTICE("You feel slightly disoriented. That's normal when you're just a [initial(src.name)]."))
	callHook("debrain", list(brainmob))

/obj/item/organ/internal/brain/examine(mob/user) // -- TLE
	..(user)
	if(brainmob && brainmob.client)//if thar be a brain inside... the brain.
		to_chat(user, "You can feel the small spark of life still left in this one.")
	else
		to_chat(user, "This one seems particularly lifeless. Perhaps it will regain some of its luster later..")

/obj/item/organ/internal/brain/removed_mob(mob/living/user)
	name = "[owner.real_name]'s brain"

	if(!(owner.status_flags & REBUILDING_ORGANS))
		var/mob/living/simple_animal/borer/borer = owner.has_brain_worms()
		if(borer)
			borer.detatch() //Should remove borer if the brain is removed - RR

		var/obj/item/organ/internal/carrion/core/C = owner.random_organ_by_process(BP_SPCORE)
		if(C)
			C.removed()
			qdel(src)
			return

		transfer_identity(owner)

	..()

/obj/item/organ/internal/brain/replaced_mob(mob/living/carbon/target)
	..()
	if(owner.key && !(owner.status_flags & REBUILDING_ORGANS))
		owner.ghostize()

	if(brainmob)
		if(brainmob.mind)
			brainmob.mind.transfer_to(owner)
		else
			owner.key = brainmob.key

/obj/item/organ/internal/brain/slime
	name = "slime core"
	desc = "A complex, organic knot of jelly and crystalline particles."
	icon = 'icons/mob/slimes.dmi'
	icon_state = "bluespace slime extract"
	parent_organ_base = BP_CHEST
	var/regenerating = FALSE
	var/revival_chem = "plasma"
	var/respawn_delay = 100 // Delay, in deciseconds (1/10th of a second), before the slime actually revive after being injected.

/obj/item/organ/internal/brain/slime/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/reagent_containers/syringe) && !regenerating)
		var/obj/item/reagent_containers/syringe/S = I
		if(S.mode == 1 && S.reagents.remove_reagent(revival_chem, 5)) // We inject 5u of plasma // the 1 correspond to SYRINGE_INJECT, but we're before the define
			to_chat(user, SPAN_NOTICE("You inject [revival_chem] into [src]."))
			src.visible_message("[src] start to wobble and wiggle...")
			regenerating = TRUE
			spawn(100) regen_body()

/obj/item/organ/internal/brain/slime/proc/regen_body()
	if(loc != get_turf(src))
		forceMove(src, get_turf(src))
	var/mob/living/carbon/human/host = new(src, FORM_SLIME, FORM_SLIME)
	brainmob?.mind.transfer_to(host)

	src.visible_message("[src] expand into a humanoid form")

/obj/item/organ/internal/brain/golem
	name = "scroll"
	desc = "A tightly furled roll of paper, covered with indecipherable runes."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "scroll"

/obj/item/organ/internal/brain/synthetic
	name = "synthetic brain"
	desc = "A synthetic brain, free willed and extremely valuable, often used in only the most complex and dangerous robots."
	icon_state = "brain_synth"
	organ_efficiency = list(BP_BRAIN = 200)
	price_tag = 12000
	blood_req = 0
	max_blood_storage = 2.5
	oxygen_req = 0
	nutriment_req = 0
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 1, MATERIAL_GOLD = 1)

/obj/item/organ/internal/brain/plant
	name = "nuclei"
	desc = "A centralized nuclei functioning as a brain for plantoid species."
	icon_state = "brain_plant"