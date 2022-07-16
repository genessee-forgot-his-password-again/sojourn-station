/datum/trade_station/lancer
	name_pool = list(
		"ITR 'Lancer'" = "IRS Trash Railgun 'Lancer': \"Hoho, you want some Trash?\""
	)
	uid = "trash"
	start_discovered = FALSE
	spawn_always = TRUE
	markup = UNCOMMON_GOODS
	offer_limit = 20
	base_income = 0
	wealth = 0
	hidden_inv_threshold = 2000
	recommendation_threshold = 4000
	stations_recommended = list("junker")
	recommendations_needed = 1
	inventory = list(
		"Trash" = list(/obj/random/scrap/dense_weighted = custom_good_amount_range(list(2, 5)),
				/obj/random/scrap/dense_even = custom_good_amount_range(list(4, 8)),
				/obj/random/scrap/sparse_even = custom_good_amount_range(list(5, 9)),
				/obj/random/scrap/sparse_weighted = custom_good_amount_range(list(6, 10))
		),
		"Scrap Lump" = list(
			/obj/item/scrap_lump = custom_good_amount_range(list(80, 100))
		),
		"Salvageable Machines" = list(
			/obj/structure/salvageable/computer = custom_good_amount_range(list(5, 15)),
			/obj/structure/salvageable/personal = custom_good_amount_range(list(0, 8)),
			/obj/structure/salvageable/server = custom_good_amount_range(list(6, 12)),
			/obj/structure/salvageable/data = custom_good_amount_range(list(6, 10)),
			/obj/structure/salvageable/implant_container = custom_good_amount_range(list(3, 5)),
			/obj/structure/salvageable/autolathe = custom_good_amount_range(list(0, 2))
		),
		"Refined Scrap" = list(/obj/item/stack/sheet/refined_scrap = custom_good_amount_range(list(50, 75))
		)
	)
	hidden_inventory = list(
		"Premium Trash" = list(
			/obj/structure/scrap = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/large = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/medical = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/medical/large = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/vehicle = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/vehicle/large = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/food = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/food/large = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/guns = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/guns/large = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/science = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/science/large = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/cloth = custom_good_amount_range(list(2,5)),			// Could be a concern with the armor part offer, but it's locked behind discovery and a secret inventory. Something to watch for.
			/obj/structure/scrap/cloth/large = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/poor = custom_good_amount_range(list(2,5)),
			/obj/structure/scrap/poor/large = custom_good_amount_range(list(2,5))
		)
	)
	// TODO: offers
	offer_types = list(
		/obj/structure/scrap_cube = offer_data("compressed scrap cube", 80, 3),
		/obj/item/reagent_containers/food/snacks/baconburger = offer_data("bacon burger", 150, 5),
		/obj/item/reagent_containers/food/snacks/blt = offer_data("blt sandwich", 180, 12)
	)
//imo way better place of doing the whole list to be in same file as the ship - Trilby
/obj/random/scrap
	price_tag = 50

/obj/random/scrap/dense_weighted
	price_tag = 150

/obj/random/scrap/dense_even
	price_tag = 125

/obj/random/scrap/sparse_even
	price_tag = 100

/obj/random/scrap/sparse_weighted
	price_tag = 50

/obj/structure/scrap_cube
	price_tag = 60 //Just compressed random scrap so lets not make it to proffitable to buy and send up after clamping - Trilby

/obj/structure/salvageable/computer
	price_tag = 120

/obj/structure/salvageable/personal
	price_tag = 520 //Really good stuff can be found in it

/obj/structure/salvageable/server
	price_tag = 250

/obj/structure/salvageable/data
	price_tag = 225

/obj/structure/salvageable/implant_container
	price_tag = 350

/obj/structure/salvageable/autolathe
	price_tag = 625

/obj/item/scrap_lump
	price_tag = 3

/obj/item/stack/sheet/refined_scrap
	price_tag = 5 //Proffit!
