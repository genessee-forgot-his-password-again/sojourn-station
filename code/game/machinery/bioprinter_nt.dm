/obj/machinery/autolathe/bioprinter
	name = "church bioprinter"
	desc = "A strange looking machine for printing things using biomass."
	icon_state = "bioprinter"
	unsuitable_materials = list()
	build_type = AUTOLATHE | BIOPRINTER
	storage_capacity = 480
	speed = 5
	have_recycling = TRUE
	queue_max = 16 //Might be 8 in game do to wires

/obj/machinery/autolathe/bioprinter/attackby(obj/item/I, mob/user)
	//hacky way to forbid deconstruction but use ..()
	var/tool_type = I.get_tool_type(user, list(QUALITY_SCREW_DRIVING), src)
	if(tool_type == QUALITY_SCREW_DRIVING)
		return

	//it needs to have panel open, but just in case
	if(istype(I, /obj/item/storage/part_replacer))
		return

	..(I, user)

/obj/machinery/autolathe/bioprinter/RefreshParts()
	..()
	speed = initial(speed) + 4 + 2
	mat_efficiency = max(0.2, 1.0 - (4 * 0.1))

/obj/machinery/autolathe/bioprinter/disk
	default_disk = /obj/item/computer_hardware/hard_drive/portable/design/nt_bioprinter

/obj/machinery/autolathe/bioprinter/public
	default_disk = /obj/item/computer_hardware/hard_drive/portable/design/nt_bioprinter/public
