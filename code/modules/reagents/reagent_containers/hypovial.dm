//hypovials used with the MkII hypospray. See hypospray.dm.

/obj/item/reagent_containers/glass/bottle/vial
	name = "broken hypovial"
	desc = "A hypovial compatible with most hyposprays."
	icon_state = "hypovial"
	spillable = FALSE
	volume = 10
	possible_transfer_amounts = list(1,2,5,10)
	obj_flags = UNIQUE_RENAME
	unique_reskin = list("hypovial" = "hypovial",
						"red hypovial" = "hypovial-b",
						"blue hypovial" = "hypovial-d",
						"green hypovial" = "hypovial-a",
						"orange hypovial" = "hypovial-k",
						"purple hypovial" = "hypovial-p",
						"black hypovial" = "hypovial-t",
						"pink hypovial" = "hypovial-pink"
						)
	always_reskinnable = TRUE

/obj/item/reagent_containers/glass/bottle/vial/Initialize()
	. = ..()
	if(!icon_state)
		icon_state = "hypovial"
	update_icon()


/obj/item/reagent_containers/glass/bottle/vial/on_reagent_change()
	update_icon()

/obj/item/reagent_containers/glass/bottle/vial/update_icon()
	cut_overlays()
	if(reagents.total_volume)
		var/mutable_appearance/filling = mutable_appearance('icons/obj/reagentfillings.dmi', "hypovial10")

		var/percent = round((reagents.total_volume / volume) * 100)
		switch(percent)
			if(0 to 9)
				filling.icon_state = "hypovial10"
			if(10 to 29)
				filling.icon_state = "hypovial25"
			if(30 to 49)
				filling.icon_state = "hypovial50"
			if(50 to 85)
				filling.icon_state = "hypovial75"
			if(86 to INFINITY)
				filling.icon_state = "hypovial100"

		filling.color = mix_color_from_reagents(reagents.reagent_list)
		add_overlay(filling)

/obj/item/reagent_containers/glass/bottle/vial/tiny
	name = "small hypovial"
	//Shouldn't be possible to get this without adminbuse

/obj/item/reagent_containers/glass/bottle/vial/small
	name = "hypovial"
	volume = 60
	possible_transfer_amounts = list(5,10)

/obj/item/reagent_containers/glass/bottle/vial/small/bluespace
	volume = 120
	possible_transfer_amounts = list(5,10)
	name = "bluespace hypovial"
	icon_state = "hypovialbs"
	unique_reskin = null

/obj/item/reagent_containers/glass/bottle/vial/large
	name = "large hypovial"
	desc = "A large hypovial, for deluxe hypospray models."
	icon_state = "hypoviallarge"
	volume = 120
	possible_transfer_amounts = list(5,10,15,20)
	unique_reskin = list("large hypovial" = "hypoviallarge",
						"large red hypovial" = "hypoviallarge-b",
						"large blue hypovial" = "hypoviallarge-d",
						"large green hypovial" = "hypoviallarge-a",
						"large orange hypovial" = "hypoviallarge-k",
						"large purple hypovial" = "hypoviallarge-p",
						"large black hypovial" = "hypoviallarge-t"
						)

/obj/item/reagent_containers/glass/bottle/vial/large/update_icon()
	cut_overlays()
	if(reagents.total_volume)
		var/mutable_appearance/filling = mutable_appearance('icons/obj/reagentfillings.dmi', "hypoviallarge10")

		var/percent = round((reagents.total_volume / volume) * 100)
		switch(percent)
			if(0 to 9)
				filling.icon_state = "hypoviallarge10"
			if(10 to 29)
				filling.icon_state = "hypoviallarge25"
			if(30 to 49)
				filling.icon_state = "hypoviallarge50"
			if(50 to 85)
				filling.icon_state = "hypoviallarge75"
			if(86 to INFINITY)
				filling.icon_state = "hypoviallarge100"

		filling.color = mix_color_from_reagents(reagents.reagent_list)
		add_overlay(filling)

/obj/item/reagent_containers/glass/bottle/vial/large/bluespace
	possible_transfer_amounts = list(5,10,15,20)
	name = "bluespace large hypovial"
	volume = 240
	icon_state = "hypoviallargebs"
	unique_reskin = null


/obj/item/reagent_containers/glass/bottle/vial/small/preloaded/bicaridine
	name = "red hypovial (bicaridine)"
	icon_state = "hypovial-b"
	list_reagents = list("bicaridine" = 30)

/obj/item/reagent_containers/glass/bottle/vial/small/preloaded/antitoxin
	name = "green hypovial (Anti-Tox)"
	icon_state = "hypovial-a"
	list_reagents = list("antitoxin" = 30)

/obj/item/reagent_containers/glass/bottle/vial/small/preloaded/kelotane
	name = "orange hypovial (kelotane)"
	icon_state = "hypovial-k"
	list_reagents = list("kelotane" = 30)

/obj/item/reagent_containers/glass/bottle/vial/small/preloaded/dexalin
	name = "blue hypovial (dexalin)"
	icon_state = "hypovial-d"
	list_reagents = list("dexalin" = 30)

/obj/item/reagent_containers/glass/bottle/vial/small/preloaded/tricord
	name = "hypovial (tricordrazine)"
	icon_state = "hypovial"
	list_reagents = list("tricordrazine" = 30)

/obj/item/reagent_containers/glass/bottle/vial/small/preloaded/breastreduction
	name = "pink hypovial (breast treatment)"
	icon_state = "hypovial-pink"
	list_reagents = list("BEsmaller_hypo" = 30)

/obj/item/reagent_containers/glass/bottle/vial/small/preloaded/penisreduction
	name = "pink hypovial (penis treatment)"
	icon_state = "hypovial-pink"
	list_reagents = list("PEsmaller_hypo" = 30)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/CMO
	name = "deluxe hypovial"
	icon_state = "hypoviallarge-cmos"
	list_reagents = list("omnizine" = 20, "leporazine" = 20, "atropine" = 20)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/bicaridine
	name = "large red hypovial (bicaridine)"
	icon_state = "hypoviallarge-b"
	list_reagents = list("bicaridine" = 60)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/antitoxin
	name = "large green hypovial (anti-tox)"
	icon_state = "hypoviallarge-a"
	list_reagents = list("antitoxin" = 60)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/kelotane
	name = "large orange hypovial (kelotane)"
	icon_state = "hypoviallarge-k"
	list_reagents = list("kelotane" = 60)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/dexalin
	name = "large blue hypovial (dexalin)"
	icon_state = "hypoviallarge-d"
	list_reagents = list("dexalin" = 60)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/charcoal
	name = "large black hypovial (charcoal)"
	icon_state = "hypoviallarge-t"
	list_reagents = list("charcoal" = 60)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/tricord
	name = "large hypovial (tricord)"
	icon_state = "hypoviallarge"
	list_reagents = list("tricordrazine" = 60)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/salglu
	name = "large green hypovial (salglu)"
	icon_state = "hypoviallarge-a"
	list_reagents = list("salglu_solution" = 60)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/synthflesh
	name = "large orange hypovial (synthflesh)"
	icon_state = "hypoviallarge-k"
	list_reagents = list("synthflesh" = 60)

/obj/item/reagent_containers/glass/bottle/vial/large/preloaded/combat
	name = "combat hypovial"
	icon_state = "hypoviallarge-t"
	list_reagents = list("epinephrine" = 3, "omnizine" = 19, "leporazine" = 19, "atropine" = 19) //Epinephrine's main effect here is to kill suff damage, so we don't need much given atropine
