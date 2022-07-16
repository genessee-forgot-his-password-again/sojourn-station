/obj/item/organ/internal/bone/slime
	name = "slime bone"
	desc = "The slime equivalent of a 'bone', this cartilaginous slime act as both bone, nerve & muscle all in one."
	icon_state = "blood_vessel-prosthetic"
	organ_efficiency = list(OP_BONE = 100, OP_MUSCLE = 100, OP_NERVE = 100)
	price_tag = 100
	force = WEAPON_FORCE_NORMAL

/obj/item/organ/internal/bone/slime/removed_mob()
	..()
	visible_message(SPAN_NOTICE("[src] lose cohesion and become a puddle of goo!"))
	qdel(src)
