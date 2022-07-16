// Slime limbs.
/obj/item/organ/external/slime
	dislocated = -1
	brute_mod = 1.15
	burn_mod = 1.15

/obj/item/organ/external/slime/make_base_internal_organs()
	if(is_stump(src))
		return
	make_bones() // We only need the "bones"

/obj/item/organ/external/slime/update_limb_efficiency()
	var/raw_efficiency = 300
	limb_efficiency = round(((raw_efficiency/(240+((2*raw_efficiency)/10))) * 100)) //Diminishing returns as total limb efficiency increases.

/obj/item/organ/external/slime/droplimb(var/clean, var/disintegrate = DROPLIMB_EDGE, var/ignore_children = null)
	disintegrate = DROPLIMB_BLUNT
	..()
