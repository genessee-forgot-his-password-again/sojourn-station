/obj/item/projectile/ion
	name = "ion bolt"
	icon_state = "ion"
	damage_types = list(BURN = 0)
	nodamage = TRUE
	check_armour = ARMOR_ENERGY

/obj/item/projectile/ion/on_impact(atom/target)
	empulse(target, 1, 1)
	return TRUE

/obj/item/projectile/bullet/gyro
	name = "explosive bolt"
	icon_state = "bolter"
	damage_types = list(BRUTE = 50)
	check_armour = ARMOR_BULLET
	sharp = TRUE
	edge = TRUE

/obj/item/projectile/bullet/gyro/on_impact(atom/target)
	explosion(target, 0, 1, 2)
	return TRUE

/obj/item/projectile/bullet/rocket
	name = "high explosive rocket"
	icon_state = "rocket"
	damage_types = list(BRUTE = 70)
	armor_penetration = 100
	check_armour = ARMOR_BULLET

/obj/item/projectile/bullet/rocket/railgun
	name = "chemical shunted power cell"
	icon_state = "emitter"

/obj/item/projectile/bullet/rocket/launch(atom/target, target_zone, x_offset, y_offset, angle_offset)
	set_light(2.5, 0.5, "#dddd00")
	..(target, target_zone, x_offset, y_offset, angle_offset)

/obj/item/projectile/bullet/rocket/on_impact(atom/target)
	explosion(loc, 0, 1, 2, 4)
	set_light(0)
	return TRUE

/obj/item/projectile/bullet/rocket/emp
	name = "EMP rocket"
	icon_state = "rocket_e"
	damage_types = list(BRUTE = 10, BURN = 30)
	armor_penetration = 100
	check_armour = ARMOR_BULLET
	var/heavy_emp_range = 3
	var/light_emp_range = 8

/obj/item/projectile/bullet/rocket/emp/launch(atom/target, target_zone, x_offset, y_offset, angle_offset)
	set_light(2.5, 0.5, "#dddd00")
	..(target, target_zone, x_offset, y_offset, angle_offset)

/obj/item/projectile/bullet/rocket/emp/on_impact(atom/target)
	..()
	for(var/obj/structure/closet/L in hear(7, get_turf(src)))
		if(locate(/mob/living/carbon/, L))
			for(var/mob/living/carbon/M in L)
				flashbang_bang(get_turf(src), M)


	for(var/mob/living/carbon/M in hear(7, get_turf(src)))
		flashbang_bang(get_turf(src), M)

	for(var/obj/effect/blob/B in hear(8,get_turf(src)))       		//Blob damage here
		var/damage = round(30/(get_dist(B,get_turf(src))+1))
		B.health -= damage
		B.update_icon()

	new/obj/effect/sparks(src.loc)
	new/obj/effect/effect/smoke/illumination(src.loc, brightness=15)
	empulse(target, heavy_emp_range, light_emp_range)
	qdel(src)
	return

/obj/item/projectile/temp
	name = "freeze beam"
	icon_state = "ice_2"
	damage_types = list(BURN = 0)
	nodamage = 1
	check_armour = ARMOR_ENERGY
	var/temperature = 300

/obj/item/projectile/temp/on_impact(atom/target)//These two could likely check temp protection on the mob
	if(isliving(target))
		var/mob/M = target
		M.bodytemperature = temperature
	return TRUE

/obj/item/projectile/temp/cold
	temperature = 200

/obj/item/projectile/temp/ice
	temperature = 10 //balance wise this will be 10 rather then 0

/obj/item/projectile/temp/hot
	temperature = 400

/obj/item/projectile/temp/boil
	temperature = 500


/obj/item/projectile/slime_death
	name = "core stopper beam"
	icon_state = "ice_2"
	damage_types = list(BURN = 0)
	nodamage = TRUE
	check_armour = ARMOR_ENERGY
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	hitscan = TRUE

/obj/item/projectile/slime_death/on_impact(atom/target)//These two could likely check temp protection on the mob
	if(isliving(target))
		if(isslime(target))
			var/mob/living/carbon/slime/cute = target
			nodamage = FALSE
			cute.death() // The cute slime dies.

/obj/item/projectile/meteor
	name = "meteor"
	icon = 'icons/obj/meteor.dmi'
	icon_state = "smallf"
	damage_types = list(BRUTE = 0)
	nodamage = TRUE
	check_armour = ARMOR_BULLET

/obj/item/projectile/meteor/Bump(atom/A as mob|obj|turf|area, forced)
	if(A == firer)
		loc = A.loc
		return

	sleep(-1) //Might not be important enough for a sleep(-1) but the sleep/spawn itself is necessary thanks to explosions and metoerhits

	if(src)//Do not add to this if() statement, otherwise the meteor won't delete them
		if(A)

			A.ex_act(2)
			playsound(src.loc, 'sound/effects/meteorimpact.ogg', 40, 1)

			for(var/mob/M in range(10, src))
				if(!M.stat && !isAI(M))
					shake_camera(M, 3, 1)
			qdel(src)
			return 1
	else
		return 0

/obj/item/projectile/energy/floramut
	name = "alpha somatoray"
	icon_state = "energy"
	damage_types = list(TOX = 0)
	nodamage = TRUE
	check_armour = ARMOR_ENERGY

/obj/item/projectile/energy/floramut/on_impact(atom/target)
	var/mob/living/M = target
	if(ishuman(target))
		var/mob/living/carbon/human/H = M
		if((H.species.flags & IS_PLANT) && (H.nutrition < 500))
			if(prob(15))
				H.apply_effect((rand(30,80)),IRRADIATE)
				H.Weaken(5)
				for (var/mob/V in viewers(src))
					V.show_message("\red [M] writhes in pain as \his vacuoles boil.", 3, "\red You hear the crunching of leaves.", 2)
			if(prob(35))
				if(prob(80))
					randmutb(M)
					domutcheck(M,null)
				else
					randmutg(M)
					domutcheck(M,null)
			else
				M.adjustFireLoss(rand(5,15))
				M.show_message("\red The radiation beam singes you!")
	else if(istype(target, /mob/living/carbon/))
		M.show_message("\blue The radiation beam dissipates harmlessly through your body.")
	else
		return 1

/obj/item/projectile/energy/florayield
	name = "beta somatoray"
	icon_state = "energy2"
	damage_types = list(TOX = 0)
	nodamage = TRUE
	check_armour = ARMOR_ENERGY

/obj/item/projectile/energy/florayield/on_impact(atom/target)
	var/mob/M = target
	if(ishuman(target)) //These rays make plantmen fat.
		var/mob/living/carbon/human/H = M
		if((H.species.flags & IS_PLANT) && (H.nutrition < 500))
			H.nutrition += 30
	else if (istype(target, /mob/living/carbon/))
		M.show_message("\blue The radiation beam dissipates harmlessly through your body.")
	else
		return 1

/obj/item/projectile/energy/floraevolve
	name = "gamma somatoray"
	icon_state = "plasma"
	damage_types = list(TOX = 0)
	nodamage = TRUE
	check_armour = ARMOR_ENERGY

/obj/item/projectile/energy/floraevolve/on_impact(atom/target)
	var/mob/M = target
	if(ishuman(target)) //These rays make plantmen fat.
		var/mob/living/carbon/human/H = M
		if((H.species.flags & IS_PLANT) && (H.nutrition < 500))
			H.nutrition += 30
	else if (istype(target, /mob/living/carbon/))
		M.show_message("\blue The evolution beam dissipates harmlessly through your body.")
	else
		return 1


/obj/item/projectile/beam/mindflayer
	name = "flayer ray"

/obj/item/projectile/beam/mindflayer/on_impact(atom/target)
	if(ishuman(target))
		var/mob/living/carbon/human/M = target
		M.confused += rand(5,8)

/obj/item/projectile/chameleon
	name = "bullet"
	icon_state = "bullet"
	damage_types = list(HALLOS = 1)
	embed = 0 // nope
	nodamage = TRUE
	muzzle_type = /obj/effect/projectile/bullet/muzzle


/obj/item/projectile/flamer_lob
	name = "blob of fuel"
	icon_state = "fireball"
	damage_types = list(BURN = 16)
	check_armour = ARMOR_MELEE
	kill_count = 3
	var/fire_stacks = 3

/obj/item/projectile/flamer_lob/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(isliving(target))
		var/mob/living/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()

/obj/item/projectile/flamer_lob/Move(atom/A)
	..()
	var/turf/T = get_turf(src)
	if(T)
		new/obj/effect/decal/cleanable/liquid_fuel(T, 1 , 1)
		T.hotspot_expose((T20C*2) + 380,500)

/obj/item/projectile/flamer_lob/flamethrower
	kill_count = 5

/obj/item/projectile/bullet/flare
	name = "flare"
	icon_state = "flare"
	damage_types = list(BURN = 12) //Legit deadlyest gun that you get in mass
	kill_count = 12
	armor_penetration = 0
	step_delay = 3
	eyeblur = 2 // bright light slightly blurs your vision
	luminosity_range = 5
	luminosity_power = 1
	luminosity_color = COLOR_LIGHTING_RED_MACHINERY //Makes it not as blindingly red
	luminosity_ttl = 1
	var/fire_stacks = 1
	var/flash_range = 1
	var/light_duration = 1800
	var/brightness = 10
	knockback = FALSE
	can_ricochet = FALSE
	sharp = FALSE
	embed = FALSE
	var/chaos = FALSE
	var/chaose_number

/obj/item/projectile/bullet/flare/New()
	if(chaos)
		chaose_number = RANDOM_RGB
		luminosity_color = chaose_number

/obj/item/projectile/bullet/flare/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		playsound(src, 'sound/effects/Custom_flare.ogg', 100, 1)
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()
		src.visible_message(SPAN_WARNING("\The [src] sets [target] on fire!"))

/obj/item/projectile/bullet/flare/on_impact(var/atom/A)
	var/turf/T = flash_range? src.loc : get_turf(A)
	if(!istype(T)) return

	//blind adjacent people with enhanced vision
	for (var/mob/living/carbon/M in viewers(T, flash_range))
		if(M.eyecheck() < FLASH_PROTECTION_NONE)
			if (M.HUDtech.Find("flash"))
				flick("e_flash", M.HUDtech["flash"])

	src.visible_message(SPAN_WARNING("\The [src] explodes in a bright light!"))
	new /obj/effect/decal/cleanable/ash(src.loc)
	playsound(src, 'sound/effects/Custom_flare.ogg', 100, 1)
	new /obj/effect/effect/smoke/illumination(T, brightness=max(flash_range*3, brightness), lifetime=light_duration, color=luminosity_color)

/obj/item/projectile/bullet/flare/blue
	luminosity_color = COLOR_SKY_BLUE //softer on the eyes

/obj/item/projectile/bullet/flare/green
	luminosity_color = PIPE_COLOR_GREEN //Bit better then normal green

/obj/item/projectile/bullet/flare/choas //MEWHEHEHE, can be any colour
	chaos = TRUE

// Special projectile that one-shot ameridian-related stuff
/obj/item/projectile/sonic_bolt
	name = "sonic bolt"
	icon_state = "energy2"
	damage_types = list(BRUTE = 10)
	armor_penetration = 30 // It is a sound-wave liquifing organs I guess
	kill_count = 7
	check_armour = ARMOR_ENERGY
	var/golem_damage_bonus = 20 // Damage multiplier against ameridians.

/obj/item/projectile/sonic_bolt/heavy
	damage_types = list(BRUTE = 30)
	kill_count = 14

/obj/item/projectile/tether
	name = "tether grappler"
	icon_state = "invisible"
	nodamage = 1
	damage_types = list(BRUTE = 0)
	kill_count = 10
	step_delay = 0.2
	muzzle_type = /obj/effect/projectile/line/muzzle
	tracer_type = /obj/effect/projectile/line/tracer
	impact_type = /obj/effect/projectile/line/impact
	var/list/our_tracers

/obj/item/projectile/tether/Initialize()
	..()
	our_tracers = list()

/obj/item/projectile/tether/on_impact(target)
	for(var/obj/effect/tokill in our_tracers)
		qdel(tokill)
	..()
	var/atom/movable/AM
	var/reel_in_self = FALSE
	if(isturf(target))
		reel_in_self = TRUE
	if(ismovable(target))
		AM = target
		reel_in_self = AM.anchored

	if(reel_in_self)
		original_firer.throw_at(target, 10, 2, original_firer)
		visible_message(SPAN_WARNING("[src] begins reeling in, pulling [original_firer] towards [target]!"))
		return

	visible_message(SPAN_WARNING("[src] begins reeling in, pulling [target] towards [original_firer]!"))
	AM.throw_at(original_firer, 10, 1, original_firer) //GET OVER HERE

/obj/item/projectile/tether/muzzle_effect(var/matrix/T)
	//This can happen when firing inside a wall, safety check
	if (!location)
		return

	if(silenced)
		return

	if(ispath(muzzle_type))
		var/obj/effect/projectile/M = new muzzle_type(get_turf(src))

		if(istype(M))
			if(proj_color)
				var/icon/I = new(M.icon, M.icon_state)
				I.Blend(proj_color)
				M.icon = I
			M.set_transform(T)
			M.pixel_x = location.pixel_x
			M.pixel_y = location.pixel_y
			M.activate()
			our_tracers.Add(M)

/obj/item/projectile/tether/tracer_effect(var/matrix/M) //Special tracer handling, since we only want them to disappear after it hits something

	if (!location)
		return

	if(ispath(tracer_type))
		var/obj/effect/projectile/P = new tracer_type(location.loc)

		if(istype(P))
			if(proj_color)
				var/icon/I = new(P.icon, P.icon_state)
				I.Blend(proj_color)
				P.icon = I
			P.set_transform(M)
			P.pixel_x = location.pixel_x
			P.pixel_y = location.pixel_y
			P.activate()
			our_tracers.Add(P) //this should be more performant than += since we don't need to be creating a bunch of new lists
