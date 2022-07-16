/mob/living/simple_animal/hostile/stranger
	name = "Stranger"
	desc = "A stranger from an unknown place."
	icon = 'icons/mob/mobs-humanoid.dmi'
	icon_state = "strangerranged"
	icon_dead = "stranger_dead"
	icon_gib = "syndicate_gib"
	speak_chance = 0
	turns_per_move = 4
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	ranged_cooldown = 1
	stop_automated_movement_when_pulled = FALSE
	maxHealth = 200
	health = 200
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15
	attacktext = "punched"
	a_intent = I_HURT
	needs_environment = FALSE
	unsuitable_atoms_damage = 15
	status_flags = CANPUSH
	ranged = TRUE
	rapid = TRUE
	armor = list(melee = 25, bullet = 15, energy = 25, bomb = 25, bio = 100, rad = 100) //Were in a space suit thing?
	projectiletype = /obj/item/projectile/plasma/heavy
	projectilesound = 'sound/weapons/laser.ogg'
	faction = "bluespace"
	leather_amount = 0
	bones_amount = 0
	var/empy_cell = FALSE
	var/prob_tele = 20

/mob/living/simple_animal/hostile/stranger/Initialize(mapload)
	. = ..()
	do_sparks(3, 0, src.loc)

/mob/living/simple_animal/hostile/stranger/death()
	. = ..()
	var/obj/item/gun/energy/plasma/stranger/S = new (src.loc)
	S.cell = new S.suitable_cell(S)
	if(empy_cell)
		S.cell.use(S.cell.charge)
	else
		S.cell.use(S.cell.maxcharge/2)
	S.update_icon()
	new /obj/effect/decal/cleanable/ash (src.loc)
	var/atom/movable/overlay/animation
	animation = new(loc)
	animation.icon_state = "blank"
	animation.icon =  'icons/mob/mob.dmi'
	animation.master = src
	flick("dust2-h", animation)
	addtimer(CALLBACK(src, .proc/check_delete, animation), 15)
	do_sparks(3, 0, src.loc)
	qdel(src)

/mob/living/simple_animal/hostile/stranger/attack_generic(mob/user, damage, attack_message)
	var/mob/living/targetted_mob = (target_mob?.resolve())

	if(!damage || !istype(user))
		return FALSE
	if(prob(prob_tele))
		var/source = src
		if(targetted_mob)
			source = targetted_mob
		var/turf/T = get_random_secure_turf_in_range(source, 4, 2)
		do_sparks(3, 0, src.loc)
		do_teleport(src, T)
		return FALSE
	. = ..()

/mob/living/simple_animal/hostile/stranger/attackby(obj/item/W, mob/user, params)
	var/mob/living/targetted_mob = (target_mob?.resolve())

	if(prob(prob_tele))
		var/source = src
		if(targetted_mob)
			source = targetted_mob
		var/turf/T = get_random_secure_turf_in_range(source, 4, 2)
		do_sparks(3, 0, src.loc)
		do_teleport(src, T)
		return FALSE
	. = ..()

/mob/living/simple_animal/hostile/stranger/attack_hand(mob/living/carbon/M)
	var/mob/living/targetted_mob = (target_mob?.resolve())

	if(M.a_intent != I_HELP && prob(prob_tele))
		var/source = src
		if(targetted_mob)
			source = targetted_mob
		var/turf/T = get_random_secure_turf_in_range(source, 4, 2)
		do_sparks(3, 0, src.loc)
		do_teleport(src, T)
		return FALSE
	. = ..()

/mob/living/simple_animal/hostile/stranger/bullet_act(obj/item/projectile/P, def_zone)
	var/mob/living/targetted_mob = (target_mob?.resolve())

	if(prob(prob_tele))
		var/source = src
		if(targetted_mob)
			source = targetted_mob
		var/turf/T = get_random_secure_turf_in_range(source, 4, 2)
		do_sparks(3, 0, src.loc)
		do_teleport(src, T)
		return FALSE
	. = ..()

/mob/living/simple_animal/hostile/stranger/Life()
	var/mob/living/targetted_mob = (target_mob?.resolve())

	. = ..()
	if(. && prob(prob_tele/2))
		var/source = src
		if(targetted_mob)
			source = targetted_mob
		var/turf/T = get_random_secure_turf_in_range(source, 4, 2)
		do_sparks(3, 0, src.loc)
		do_teleport(src, T)

/obj/item/gun/energy/plasma/stranger
	name = "unknown plasma gun"
	desc = "A plasma gun from unknown origin"
	icon = 'icons/obj/guns/energy/lancer.dmi'
	icon_state = "lancer"
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 8, MATERIAL_SILVER = 7, MATERIAL_URANIUM = 8, MATERIAL_GOLD = 4)
	price_tag = 5000
	origin_tech = list(TECH_COMBAT = 7, TECH_PLASMA = 7, TECH_BLUESPACE = 8)
	charge_cost = 5
	fire_delay = 5
	one_hand_penalty = 5
	twohanded = FALSE
	suitable_cell = /obj/item/cell/small
	can_dual = TRUE
	w_class = ITEM_SIZE_NORMAL

	init_firemodes = list(
		list(mode_name="uo4E6SBeGe", mode_desc="c25F2OeGUi", burst=1, projectile_type=/obj/item/projectile/plasma/light, fire_sound='sound/weapons/unknown_spacegun_burn.ogg',       fire_delay=5,  move_delay=null, charge_cost=3,  icon="stun",     projectile_color = "#0000FF"),
		list(mode_name="0sXYAJGCv4", mode_desc="yQI241FKDh", burst=1, projectile_type=/obj/item/projectile/plasma,       fire_sound='sound/weapons/unknown_spacegun_melt.ogg',       fire_delay=10, move_delay=null, charge_cost=6,  icon="kill",     projectile_color = "#FF0000"),
		list(mode_name="XhddhrdJkJ", mode_desc="uDsfMdPQkm", burst=1, projectile_type=/obj/item/projectile/plasma/heavy, fire_sound='sound/weapons/unknown_spacegun_incinerate.ogg', fire_delay=15, move_delay=null, charge_cost=9,  icon="destroy",  projectile_color = "#FFFFFF"),
		list(mode_name="bP6hfnj3Js", mode_desc="AhG8GjobYa", burst=3, projectile_type=/obj/item/projectile/plasma/heavy, fire_sound='sound/weapons/unknown_spacegun_vaporize.ogg',   fire_delay=5,  move_delay=4,    charge_cost=11, icon="vaporize", projectile_color = "#FFFFFF", recoil_buildup=3)
	)
	serial_type = "INDEX"
	serial_shown = FALSE

/obj/item/gun/energy/plasma/stranger/update_icon(ignore_inhands)
	if(charge_meter)
		var/ratio = 0

		//make sure that rounding down will not give us the empty state even if we have charge for a shot left.
		if(cell && cell.charge >= charge_cost)
			ratio = 100
		else if(!cell)
			ratio = "empty"

		if(modifystate)
			icon_state = "[modifystate]-[ratio]"
		else
			icon_state = "[initial(icon_state)]-[ratio]"

		if(item_charge_meter)
			set_item_state("-[item_modifystate][ratio]")
	if(!item_charge_meter && item_modifystate)
		set_item_state("-[item_modifystate]")
	if(!ignore_inhands)
		update_wear_icon()
