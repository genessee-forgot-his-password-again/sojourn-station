/datum/trade_station/station_zarya
	name_pool = list(
		"FTB 'Zarya'" = "Free Trade Beacon 'Zarya': \"Privet, this is the trade beacon 'Zarya'. We sell electronics, construction, and anything related to engineering! If you are looking for a more general shop, you should contact our main station: FTS 'Solnishko'"
	)
	uid = "techno_basic"
	start_discovered = TRUE
	spawn_always = TRUE
	markup = COMMON_GOODS
	offer_limit = 20
	base_income = 1600
	wealth = 0
	hidden_inv_threshold = 1000
	recommendation_threshold = 3000
	stations_recommended = list("techno_adv")
	inventory = list(
		"Vozduh" = list(
			/obj/machinery/portable_atmospherics/canister/sleeping_agent,
			/obj/machinery/portable_atmospherics/canister/nitrogen,
			/obj/machinery/portable_atmospherics/canister/oxygen,
			/obj/item/tank/plasma,
			/obj/machinery/pipedispenser/orderable,
			/obj/machinery/pipedispenser/disposal/orderable
		),
		"Energiya" = list(
			/obj/item/cell/large,
			/obj/item/cell/large/high,
			/obj/item/cell/medium,
			/obj/item/cell/medium/high,
			/obj/item/cell/small,
			/obj/item/cell/small/high,
			/obj/item/solar_assembly,
			/obj/item/circuitboard/solar_control,
			/obj/item/tracker_electronics,
			/obj/machinery/power/emitter,
			/obj/machinery/power/rad_collector,
			/obj/machinery/power/generator,
			/obj/machinery/atmospherics/binary/circulator,
			/obj/item/clothing/gloves/insulated
		),
		"Vsyakoe" = list(
			/obj/structure/reagent_dispensers/watertank,
			/obj/item/storage/briefcase/inflatable/empty,
			/obj/item/inflatable/door,
			/obj/item/inflatable/wall,
			/obj/item/stack/material/steel/full = good_data("steel sheets (x120)", list(3, 5), 660), //Better deal here
			/obj/item/stack/material/glass/plasmaglass = good_data("borosilicate glass sheets (x120)", list(3, 5), 3200),
			/obj/item/storage/belt/utility/full,
			/obj/item/clothing/head/welding,
			/obj/item/tool/omnitool,
			/obj/item/device/geiger,
			/obj/structure/reagent_dispensers/fueltank,
			/obj/machinery/floodlight
		)
	)

	hidden_inventory = list(
		"Sverkhmateriya" = list(
			/obj/machinery/power/supermatter
		),

		"Bystroye Stroitel'stvo" = list(
			/obj/item/rcd/industrial = good_data("Industrial RCD", list(-1, 1), 4500),
			/obj/item/rcd = good_data("RCD", list(1, 2), 2500)
		),

		"Antiveshchestvo" = list(
			/obj/item/am_containment = good_data("Antimatter Fuel Jar", list(3, 5), 500),
			/obj/item/am_shielding_container = good_data("Antimatter Sheilding Kit", list(3, 5), 300)
		),
		"Plokhiye Idei" = list(
			/obj/item/am_containment = good_data("Antimatter Fuel Jar", list(3, 5), 500),
			/obj/item/am_shielding_container = good_data("Antimatter Sheilding Kit", list(3, 5), 300),
			/obj/machinery/power/emitter,
			/obj/machinery/field_generator,
			/obj/machinery/shieldwallgen,
			/obj/machinery/the_singularitygen,
			/obj/machinery/power/rad_collector,
			/obj/structure/particle_accelerator/fuel_chamber,
			/obj/machinery/particle_accelerator/control_box,
			/obj/structure/particle_accelerator/particle_emitter/center,
			/obj/structure/particle_accelerator/particle_emitter/left,
			/obj/structure/particle_accelerator/particle_emitter/right,
			/obj/structure/particle_accelerator/power_box,
			/obj/structure/particle_accelerator/end_cap
		)
	)



	offer_types = list(
		//obj/item/tool_upgrade = offer_data("tool upgrade", 200, 0),				// base price: 200 exploitable with other trade stations
		/obj/item/tool/crowbar/onestar = offer_data("greyson crowbar", 1000, 3),
		/obj/item/tool/pickaxe/onestar = offer_data("greyson pickaxe", 1000, 3),
		/obj/item/tool/pickaxe/jackhammer/onestar = offer_data("greyson jackhammer", 1000, 3),
		/obj/item/tool/screwdriver/combi_driver/onestar = offer_data("greyson combi driver", 1000, 3),
		/obj/item/tool/weldingtool/onestar  = offer_data("greyson welding tool", 1000, 3),
		/obj/item/tool_upgrade/augment/repair_nano = offer_data("repair nano", 5000, 1)
	)
