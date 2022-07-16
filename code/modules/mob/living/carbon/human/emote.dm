/mob/living/carbon/human/emote(var/act,var/m_type=1,var/message = null)
	var/param = null

	if (findtext(act, "-", 1, null))
		var/t1 = findtext(act, "-", 1, null)
		param = copytext(act, t1 + 1, length(act) + 1)
		act = copytext(act, 1, t1)

	if(findtext(act,"s",-1) && !findtext(act,"_",-2))//Removes ending s's unless they are prefixed with a '_'
		act = copytext(act,1,length(act))

	var/muzzled = istype(src.wear_mask, /obj/item/clothing/mask/muzzle) || istype(src.wear_mask, /obj/item/grenade)
	//var/m_type = 1

	for (var/obj/item/implant/I in src)
		if (I.implanted)
			I.trigger(act, src)

	if(src.stat == 2.0 && (act != "deathgasp"))
		return

	var/cloud_emote = ""

	switch(act)
		if ("airguitar")
			if (!src.restrained())
				message = "is strumming the air and headbanging like a safari chimp."
				m_type = 1

	//Machine-only emotes
		if("ping", "beep", "buzz", "yes", "ye", "no", "rcough", "rsneeze")

			if(!isSynthetic())
				to_chat(src, "<span class='warning'>You are not a synthetic.</span>")
				return

			var/M = null
			if(param)
				for (var/mob/A in view(null, null))
					if (param == A.name)
						M = A
						break
			if(!M)
				param = null

			var/display_msg = "beeps"
			var/use_sound = 'sound/machines/twobeep.ogg'
			if(act == "buzz")
				display_msg = "buzzes"
				use_sound = 'sound/machines/buzz-sigh.ogg'
			else if(act == "ping")
				display_msg = "pings"
				use_sound = 'sound/machines/ping.ogg'
			else if(act == "yes" || act == "ye")
				display_msg = "emits an affirmative blip"
				use_sound = 'sound/machines/synth_yes.ogg'
			else if(act == "no")
				display_msg = "emits a negative blip"
				use_sound = 'sound/machines/synth_no.ogg'
			else if(act == "rcough")
				display_msg = "emits a robotic cough"
				if(get_sex() == FEMALE)
					use_sound = pick('sound/effects/mob_effects/f_machine_cougha.ogg','sound/effects/mob_effects/f_machine_coughb.ogg')
				else
					use_sound = pick('sound/effects/mob_effects/m_machine_cougha.ogg','sound/effects/mob_effects/m_machine_coughb.ogg', 'sound/effects/mob_effects/m_machine_coughc.ogg')
			else if(act == "rsneeze")
				display_msg = "emits a robotic sneeze"
				if(get_sex() == FEMALE)
					use_sound = 'sound/effects/mob_effects/machine_sneeze.ogg'
				else
					use_sound = 'sound/effects/mob_effects/f_machine_sneeze.ogg'
			else if(act == "slowclap")
				display_msg = "activates their slow-clap processor" // Good, that's still working.
				use_sound = 'sound/misc/slowclap.ogg'

			if (param)
				message = "[display_msg] at [param]."
			else
				message = "[display_msg]."
			playsound(src.loc, use_sound, 50, 0)
			m_type = 1

	//machine only end

		if ("blink")
			message = "blinks."
			m_type = 1

		if ("blink_r")
			message = "blinks rapidly."
			m_type = 1

		if ("bow")
			if (!src.buckled)
				var/M = null
				if (param)
					for (var/mob/A in view(null, null))
						if (param == A.name)
							M = A
							break
				if (!M)
					param = null

				if (param)
					message = "bows to [param]."
				else
					message = "bows."
			m_type = 1

		if ("custom")
			var/input = sanitize(input("Choose an emote to display.") as text|null)
			if (!input)
				return
			var/input2 = input("Is this a visible or hearable emote?") in list("Visible","Hearable")
			if (input2 == "Visible")
				m_type = 1
			else if (input2 == "Hearable")
				if (src.miming)
					return
				m_type = 2
			else
				alert("Unable to use this emote, must be either hearable or visible.")
				return
			return custom_emote(m_type, message)

		if ("me")

			//if(silent && silent > 0 && findtext(message,"\"",1, null) > 0)
			//	return //This check does not work and I have no idea why, I'm leaving it in for reference.

			if (src.client)
				if (client.prefs.muted & MUTE_IC)
					to_chat(src, "\red You cannot send IC messages (muted).")
					return
				if (src.client.handle_spam_prevention(message,MUTE_IC))
					return
			if (stat)
				return
			if(!(message))
				return
			return custom_emote(m_type, message)

		if ("subtle")

			//if(silent && silent > 0 && findtext(message,"\"",1, null) > 0)
			//	return //This check does not work and I have no idea why, I'm leaving it in for reference.

			if (src.client)
				if (client.prefs.muted & MUTE_IC)
					src << "\red You cannot send IC messages (muted)."
					return
				if (src.client.handle_spam_prevention(message,MUTE_IC))
					return
			if (stat)
				return
			if(!(message))
				return
			return custom_emote(m_type, "<I>[message]</I>", 1)

		if("pain")
			if(!message)
				if(miming)
					message = "appears to be in pain!"
					m_type = 1 // Can't we get defines for these?
				else
					message = "twists in pain."
					m_type = 1

			cloud_emote = "cloud-pain"

		if("medic")
			if(!message)
				if(miming)
					message = "calls out for a medic!"
					m_type = 1 // Can't we get defines for these?

			cloud_emote = "cloud-medic"

		if ("salute")
			if (!src.buckled)
				var/M = null
				if (param)
					for (var/mob/A in view(null, null))
						if (param == A.name)
							M = A
							break
				if (!M)
					param = null

				if (param)
					message = "salutes [param]."
				else
					message = "salutes."
			m_type = 1

		if ("choke")
			if(miming)
				message = "clutches [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] throat desperately!"
				m_type = 1
			else
				if (!muzzled)
					message = "chokes!"
					m_type = 2
				else
					message = "makes a strong noise."
					m_type = 2

		if ("clap")
			if (!src.restrained())
				message = "claps."
				m_type = 2
				playsound(loc, 'sound/misc/clapping.ogg', 80)
				if(miming)
					m_type = 1

		if ("slowclap")
			if (!src.restrained())
				message = "sarcastically slow claps."
				m_type = 2
				playsound(loc, 'sound/misc/slowclap.ogg', 80)
				if(miming)
					m_type = 1

		if ("flap")
			if (!src.restrained())
				message = "flaps [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] wings."
				m_type = 2
				if(miming)
					m_type = 1

		if ("aflap")
			if (!src.restrained())
				message = "flaps [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] wings ANGRILY!"
				m_type = 2
				if(miming)
					m_type = 1

		if ("drool")
			message = "drools."
			m_type = 1

		if ("eyebrow")
			message = "raises an eyebrow."
			m_type = 1

		if ("chuckle")
			if(miming)
				message = "appears to chuckle."
				m_type = 1
			else
				if (!muzzled)
					message = "chuckles."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, 'sound/effects/mob_effects/f_chuckle.ogg', 70)
					else
						playsound(src, 'sound/voice/manlaugh1.ogg', 70)
				else
					message = "chuckles muffledly."
					m_type = 2

		if ("twitch")
			message = "twitches violently."
			m_type = 1

		if ("twitch_s")
			message = "twitches."
			m_type = 1

		if ("faint")
			message = "faints."
			if(src.sleeping)
				return //Can't faint while asleep
			src.sleeping += 10 //Short-short nap
			m_type = 1

		if ("cough")
			if(miming)
				message = "takes [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] curled up fist to their mouth, mimicking a cough!"
				m_type = 1
			else
				if (!muzzled)
					message = "coughs!"
					m_type = 2
					if(get_sex() == FEMALE)
						switch(pick("1", "2"))
							if("1")
								playsound(src, 'sound/effects/mob_effects/f_cougha.ogg', 70)
							if("2")
								playsound(src, 'sound/effects/mob_effects/f_coughb.ogg', 70)
					else
						switch(pick("1", "2", "3"))
							if("1")
								playsound(src, 'sound/effects/mob_effects/m_cougha.ogg', 70)
							if("2")
								playsound(src, 'sound/effects/mob_effects/m_coughb.ogg', 70)
							if("3")
								playsound(src, 'sound/effects/mob_effects/m_coughc.ogg', 70)
				else
					message = "makes a strong noise."
					m_type = 2

		if ("frown")
			message = "frowns."
			m_type = 1

		if ("nod")
			message = "nods."
			m_type = 1

		if ("blush")
			message = "blushes."
			m_type = 1

		if ("wave")
			message = "waves."
			m_type = 1

		if ("gasp")
			if(miming)
				message = "appears to be gasping!"
				m_type = 1
			else
				if (!muzzled)
					message = "gasps!"
					m_type = 2
					if(get_sex() == FEMALE)
						switch(pick("1", "2", "3"))
							if("1")
								playsound(loc, 'sound/effects/mob_effects/gasp_f1.ogg', 80, 1)
							if("2")
								playsound(loc, 'sound/effects/mob_effects/gasp_f2.ogg', 80, 1)
							if("3")
								playsound(loc, 'sound/effects/mob_effects/gasp_f3.ogg', 80, 1)
					else
						switch(pick("1", "2", "3"))
							if("1")
								playsound(loc, 'sound/effects/mob_effects/gasp_m1.ogg', 80, 1)
							if("2")
								playsound(loc, 'sound/effects/mob_effects/gasp_m2.ogg', 80, 1)
							if("3")
								playsound(loc, 'sound/effects/mob_effects/gasp_m3.ogg', 80, 1)
				else
					message = "makes a noise."
					m_type = 2
			cloud_emote = "cloud-gasp"

		if ("deathgasp")
			message = "[form.death_message]"
			m_type = 1

		if ("giggle")
			if(miming)
				message = "giggles silently!"
				m_type = 1
			else
				if (!muzzled)
					message = "giggles."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, 'sound/effects/mob_effects/f_giggle.ogg', 70)
					else
						playsound(src, 'sound/voice/manlaugh1.ogg', 70)
				else
					message = "makes a noise."
					m_type = 2

		if ("glare")
			var/M = null
			if (param)
				for (var/mob/A in view(null, null))
					if (param == A.name)
						M = A
						break
			if (!M)
				param = null

			if (param)
				message = "glares at [param]."
			else
				message = "glares."

		if ("stare")
			var/M = null
			if (param)
				for (var/mob/A in view(null, null))
					if (param == A.name)
						M = A
						break
			if (!M)
				param = null

			if (param)
				message = "stares at [param]."
			else
				message = "stares."

		if ("look")
			var/M = null
			if (param)
				for (var/mob/A in view(null, null))
					if (param == A.name)
						M = A
						break

			if (!M)
				param = null

			if (param)
				message = "looks at [param]."
			else
				message = "looks."
			m_type = 1

		if ("grin")
			message = "grins."
			m_type = 1

		if ("cry")
			if(miming)
				message = "cries."
				m_type = 1
			else
				if (!muzzled)
					message = "cries."
					m_type = 2
				else
					message = "makes a weak, whimpering noise. [get_visible_gender() == MALE ? "He" : get_visible_gender() == FEMALE ? "She" : "They"] [get_visible_gender() == NEUTER ? "frown" : "frowns"]."
					m_type = 2

		if ("sigh")
			if(miming)
				message = "sighs."
				m_type = 1
			else
				if (!muzzled)
					message = "sighs."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(loc, 'sound/effects/mob_effects/f_sigh.ogg', 70)
					else
						playsound(loc, 'sound/effects/mob_effects/m_sigh.ogg', 70)
				else
					message = "makes a weak noise."
					m_type = 2

		if ("laugh")
			if(miming)
				message = "acts out a laugh."
				m_type = 1
			else
				if (!muzzled)
					message = "laughs."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(src, 'sound/voice/womanlaugh.ogg', 70)
					else
						playsound(src, 'sound/voice/manlaugh1.ogg', 70)
				else
					message = "makes a noise."
					m_type = 2

		if ("mumble")
			message = "mumbles..."
			m_type = 2
			if(miming)
				m_type = 1

		if ("grumble")
			if(miming)
				message = "grumbles!"
				m_type = 1
			if (!muzzled)
				message = "grumbles!"
				m_type = 2
			else
				message = "makes a noise."
				m_type = 2

		if ("groan")
			if(miming)
				message = "appears to groan!"
				m_type = 1
			else
				if (!muzzled)
					message = "groans!"
					m_type = 2
				else
					message = "makes a loud noise."
					m_type = 2

		if ("moan")
			if(miming)
				message = "appears to moan!"
				m_type = 1
			else
				message = "moans!"
				m_type = 2
				if(get_sex() == FEMALE)
					switch(pick("1", "2", "3"))
						if("1")
							playsound(loc, 'sound/effects/mob_effects/moan_f1.ogg', 80)
						if("2")
							playsound(loc, 'sound/effects/mob_effects/moan_f2.ogg', 80)
						if("3")
							playsound(loc, 'sound/effects/mob_effects/moan_f4.ogg', 80)
				else
					switch(pick("1", "2", "3"))
						if("1")
							playsound(loc, 'sound/effects/mob_effects/moan_m1.ogg', 80)
						if("2")
							playsound(loc, 'sound/effects/mob_effects/moan_m3.ogg', 80)
						if("3")
							playsound(loc, 'sound/effects/mob_effects/moan_m5.ogg', 80)

		if ("johnny")
			var/M
			if (param)
				M = param
			if (!M)
				param = null
			else
				if(miming)
					message = "takes a drag from a cigarette and blows \"[M]\" out in smoke."
					m_type = 1
				else
					message = "says, \"[M], please. He had a family.\" [src.name] takes a drag from a cigarette and blows his name out in smoke."
					m_type = 2

		if ("point")
			if (!src.restrained())
				var/mob/M = null
				if (param)
					for (var/atom/A as mob|obj|turf|area in view(null, null))
						if (param == A.name)
							M = A
							break

				if (!M)
					message = "points."
				else
					pointed(M)

				if (M)
					message = "points to [M]."
				else
			m_type = 1

		if ("raise")
			if (!src.restrained())
				message = "raises a hand."
			m_type = 1

		if("shake")
			message = "shakes [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] head."
			m_type = 1

		if ("shrug")
			message = "shrugs."
			m_type = 1

		if ("signal")
			if (!src.restrained())
				var/t1 = round(text2num(param))
				if (isnum(t1))
					if (t1 <= 5 && (!src.r_hand || !src.l_hand))
						message = "raises [t1] finger\s."
					else if (t1 <= 10 && (!src.r_hand && !src.l_hand))
						message = "raises [t1] finger\s."
			m_type = 1

		if ("smile")
			message = "smiles."
			m_type = 1

		if ("shiver")
			message = "shivers."
			m_type = 2
			if(miming)
				m_type = 1

		if ("pale")
			message = "goes pale for a second."
			m_type = 1

		if ("tremble")
			message = "trembles in fear!"
			m_type = 1

		if ("sneeze")
			if (miming)
				message = "sneezes."
				m_type = 1
			else
				if (!muzzled)
					message = "sneezes."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(loc, 'sound/effects/mob_effects/f_sneeze.ogg', 70)
					else
						playsound(loc, 'sound/effects/mob_effects/sneeze.ogg', 70)
				else
					message = "makes a strange noise."
					m_type = 2

		if ("sniff")
			if(miming)
				message = "sniffs."
				m_type = 1
			else
				if (!muzzled)
					message = "sniffs."
					m_type = 2
					if(get_sex() == FEMALE)
						playsound(loc, 'sound/effects/mob_effects/f_sniff.ogg', 70)
					else
						playsound(loc, 'sound/effects/mob_effects/m_sniff.ogg', 70)
				else
					message = "makes a strange noise."
					m_type = 2

		if ("snore")
			if (miming)
				message = "sleeps soundly."
				m_type = 1
			else
				if (!muzzled)
					message = "snores."
					m_type = 2
				else
					message = "makes a noise."
					m_type = 2

		if ("whimper")
			if (miming)
				message = "appears hurt."
				m_type = 1
			else
				if (!muzzled)
					message = "whimpers."
					m_type = 2
				else
					message = "makes a weak noise."
					m_type = 2

		if ("wink")
			message = "winks."
			m_type = 1

		if ("yawn")
			if (!muzzled)
				message = "yawns."
				m_type = 2
				if(miming)
					m_type = 1

		if ("collapse")
			Paralyse(2)
			message = "collapses!"
			m_type = 2
			if(miming)
				m_type = 1

		if("hug")
			m_type = 1
			if (!src.restrained())
				var/M = null
				if (param)
					for (var/mob/A in view(1, null))
						if (param == A.name)
							M = A
							break
				if (M == src)
					M = null

				if (M)
					message = "hugs [M]."
				else
					message = "hugs [get_visible_gender() == MALE ? "himself" : get_visible_gender() == FEMALE ? "herself" : "themselves"]."

		if ("handshake")
			m_type = 1
			if (!src.restrained() && !src.r_hand)
				var/mob/M = null
				if (param)
					for (var/mob/A in view(1, null))
						if (param == A.name)
							M = A
							break
				if (M == src)
					M = null

				if (M)
					if (M.canmove && !M.r_hand && !M.restrained())
						message = "shakes hands with [M]."
					else
						message = "holds out [get_visible_gender() == MALE ? "his" : get_visible_gender() == FEMALE ? "her" : "their"] hand to [M] to shake."

		if("dap")
			m_type = 1
			if (!src.restrained())
				var/M = null
				if (param)
					for (var/mob/A in view(1, null))
						if (param == A.name)
							M = A
							break
				if (M)
					message = "gives daps to [M]."
				else
					message = "sadly can't find anybody to give daps to, and daps [get_visible_gender() == MALE ? "himself" : get_visible_gender() == FEMALE ? "herself" : "themselves"]. Shameful."

		if ("scream")
			if (miming)
				message = "acts out a scream!"
				m_type = 1
			else
				if (!muzzled)
					message = "screams!"
					m_type = 2
					if(prob(1))
						playsound(loc, 'sound/voice/wilhelm_scream.ogg', 80, 1)
					else if(get_sex() == FEMALE)
						switch(pick("1", "2", "3", "4", "5"))
							if("1")
								playsound(loc, 'sound/voice/femalescream_1.ogg', 80, 1)
							if("2")
								playsound(loc, 'sound/voice/femalescream_2.ogg', 80, 1)
							if("3")
								playsound(loc, 'sound/voice/femalescream_3.ogg', 80, 1)
							if("4")
								playsound(loc, 'sound/voice/femalescream_4.ogg', 80, 1)
							if("5")
								playsound(loc, 'sound/voice/femalescream_5.ogg', 80, 1)
					else
						switch(pick("1", "2", "3", "4", "5"))
							if("1")
								playsound(loc, 'sound/voice/malescream_1.ogg', 80, 1)
							if("2")
								playsound(loc, 'sound/voice/malescream_2.ogg', 80, 1)
							if("3")
								playsound(loc, 'sound/voice/malescream_3.ogg', 80, 1)
							if("4")
								playsound(loc, 'sound/voice/malescream_4.ogg', 80, 1)
							if("5")
								playsound(loc, 'sound/voice/malescream_5.ogg', 80, 1)
				else
					message = "makes a very loud noise."
					m_type = 2
			cloud_emote = "cloud-scream"

		if("urah") //Emoting will NOT give you the perk's bonuses, but anyone who knows the emote can at least use it for flavor value.
			if (miming)
				message = "acts out a battlecry!"
				m_type = 1
			else if (!muzzled)
				message = "releases a heroic roar, inspiring everyone around [gender_word("him")]! URA!"
				m_type = 2
				if(get_sex() == MALE)
					playsound(loc, 'sound/voice/ura.ogg', 80, 1) //URAH!!!
				else if(get_sex() == FEMALE || PLURAL || NEUTER)
					playsound(loc, 'sound/voice/femalewarcry.ogg', 80, 1)
			else
				message = "makes a very loud noise."
				m_type = 2
			cloud_emote = "cloud-scream"

		if("crack")
			if(!restrained())
				message = "cracks their knuckles."
				playsound(src, 'sound/voice/knuckles.ogg', 50, 1,)
				m_type = 1

		if("meow", "meows")
			if(miming)
				message = "acts out a soft mrowl."
				m_type = 1
			else
				if(!muzzled)
					message = "mrowls!"
					m_type = 2
					playsound(loc, 'sound/voice/meow1.ogg', 50, 1)

		if("squeak","squeaks")
			if(miming)
				message = "acts out a soft squeak."
				m_type = 1
			else
				if(!muzzled)
					message = "squeaks!"
					m_type = 2
					playsound(loc, "sound/effects/mouse_squeak.ogg", 50, 1)

		if("vomit")
			if(isSynthetic())
				to_chat(src, "<span class='warning'>You are unable to vomit.</span>")
				return
			vomit()
			return

		if("whistle" || "whistles")
			if(!muzzled)
				message = "whistles a tune."
				playsound(loc, 'sound/misc/longwhistle.ogg', 25, 1, -3) //This is really loud, please don't spam it.
			else
				message = "makes a light spitting noise, a poor attempt at a whistle."

		if("qwhistle")
			if(!muzzled)
				message = "whistles in astonishment."
				playsound(loc, 'sound/misc/shortwhistle.ogg', 50, 1)
			else
				message = "makes a light spitting noise, a poor attempt at a whistle."

		if("snap", "snaps")
			m_type = 2
			if(!restrained())
				message = "snaps their fingers."
				playsound(loc, 'sound/effects/fingersnap.ogg', 50, 1, -3)

		if("slap", "slaps")
			m_type = 1
			if(!restrained())
				var/M = null
				if(param)
					for(var/mob/A in view(1, null))
						if(param == A.name)
							M = A
							break
				if(M)
					message = "<span class='danger'>slaps [M] across the face. Ouch!</span>"
					playsound(loc, 'sound/effects/snap.ogg', 50, 1)
					if(ishuman(M)) //Snowflakey!
						var/mob/living/carbon/human/H = M
						if(istype(H.wear_mask,/obj/item/clothing/mask/smokable))
							H.drop_from_inventory(H.wear_mask)
				else
					message = "<span class='danger'>slaps their own face!</span>"
					playsound(loc, 'sound/effects/snap.ogg', 50, 1)

		if("aslap", "aslaps")
			m_type = 1
			if(!restrained())
				var/M = null
				if(param)
					for(var/mob/A in view(1, null))
						if(param == A.name)
							M = A
							break
				if(M)
					message = "<span class='danger'>slaps [M]'s butt.</span>"
					playsound(loc, 'sound/effects/snap.ogg', 50, 1)
				else
					message = "<span class='danger'>slaps their own butt!</span>"
					playsound(loc, 'sound/effects/snap.ogg', 50, 1)

		if ("awoo")
			m_type = 2
			message = "awoo's cutely!"
			playsound(loc, 'sound/voice/awoo.ogg', 50, 1, -1)
		if ("nya")
			message = "lets out a nyah~"
			m_type = 2
			playsound(loc, 'sound/voice/nya.ogg', 50, 1, -1)
		if ("peep")
			message = "peeps like a bird."
			m_type = 2
			playsound(loc, 'sound/voice/peep.ogg', 50, 1, -1)
		if("chirp")
			message = "chirps!"
			playsound(src.loc, 'sound/misc/nymphchirp.ogg', 50, 0)
			m_type = 2
		if ("weh")
			message = "weh's. Weh!"
			m_type = 2
			playsound(loc, 'sound/voice/weh.ogg', 50, 1, -1)
		if ("merp")
			message = "merps."
			m_type = 2
			playsound(loc, 'sound/voice/merp.ogg', 50, 1, -1)
		if ("bark")
			message = "barks!"
			m_type = 2
			playsound(loc, 'sound/voice/bark2.ogg', 50, 1, -1)
			cloud_emote = "cloud-scream"
		if ("hiss")
			message = "hisses!"
			m_type = 2
			playsound(loc, 'sound/voice/hiss.ogg', 50, 1, -1)
			cloud_emote = "cloud-scream"
		if ("squeak")
			message = "lets out a squeak."
			m_type = 2
			playsound(loc, 'sound/effects/mouse_squeak.ogg', 50, 1, -1)
		if ("purr")
			message = "purrs softly."
			m_type = 2
			playsound(loc, 'sound/voice/purr.ogg', 50, 1, -1)
		if ("ycackle")
			message = "cackles like a hyena!"
			m_type = 2
			playsound(loc, 'sound/voice/YeenCackle.ogg', 50, 1, -1)
			cloud_emote = "cloud-scream"
		if ("shriek")
			message = "SHRIEKS!"
			m_type = 2
			playsound(loc, 'sound/voice/shriek.ogg', 50, 1, -1)
			cloud_emote = "cloud-scream"
		if ("bellow")
			message = "bellows!"
			m_type = 2
			playsound(loc, 'sound/voice/LizardBellow.ogg', 50, 1, -1)
		if ("squeal")
			message = "squeals."
			playsound(loc, 'sound/voice/LizardSqueal.ogg', 50, 1, -1)
		if ("moo")
			m_type = 2
			message = "moos."
			playsound(loc, 'sound/voice/moo1.ogg', 50, 1, -1) //credit to minecraft for the sound effect!
		if ("bleat")
			m_type = 2
			message = "bleats."
			playsound(loc, 'sound/voice/bleat.ogg', 50, 1, -1) //credit to bigsoundbank for the effect.
		if ("warble")
			m_type = 2
			message = "warbles."
			playsound(loc, 'sound/voice/warble.ogg', 50, 1, -1)
		if ("lwarble")
			m_type = 2
			message = "warbles."
			playsound(loc, 'sound/voice/lowwarble.ogg', 50, 1, -1)
		if ("croon1")
			m_type = 2
			message = "croons."
			playsound(loc, 'sound/voice/croon1.ogg', 50, 1, -1)
		if ("croon2")
			m_type = 2
			message = "croons."
			playsound(loc, 'sound/voice/croon2.ogg', 50, 1, -1)
		if ("croak")
			m_type = 2
			message = "croaks."
			playsound(loc, 'sound/voice/croak.ogg', 50, 1, -1)
		if ("chitter")
			m_type = 2
			message = "chitters."
			playsound(loc, 'sound/voice/chitter1.ogg', 50, 1, -1)
		if ("help")
			to_chat(src, "awoo, aslap-(none)/mob, bark, bellow, blink, blink_r, blush, bow-(none)/mob, burp, chirp, chitter, choke, chuckle, clap, croon1, croon2, croak, collapse, cough, cry, custom, deathgasp, drool, eyebrow, fastsway/qwag, \
					flip, frown, gasp, giggle, glare-(none)/mob, grin, groan, grumble, handshake, hiss, hug-(none)/mob, laugh, look-(none)/mob, merp, moan, moo, mumble, nod, nya, pale, peep, point-atom, \
					raise, salute, scream, sneeze, shake, shiver, shriek, shrug, sigh, signal-#1-10, slap-(none)/mob, smile, sneeze, sniff, snore, stare-(none)/mob, stopsway/swag, squeak, squeal, sway/wag, swish, tremble, twitch, \
					twitch_v, vomit, weh, whimper, wink, yawn, ycackle. Synthetics: beep, buzz, yes, no, rcough, rsneeze, ping")

		else
			to_chat(src, "\blue Unusable emote '[act]'. Say *help for a list.")





	if (message)
		log_emote("[name]/[key] : [message]")
		custom_emote(m_type, message)

	if(cloud_emote)
		var/image/emote_bubble = image('icons/mob/emote.dmi', src, cloud_emote, ABOVE_MOB_LAYER)
		flick_overlay(emote_bubble, clients, 30)
		QDEL_IN(emote_bubble, 3 SECONDS)


/mob/living/carbon/human/verb/pose()
	set name = "Set Pose"
	set desc = "Sets a description which will be shown when someone examines you."
	set category = "IC"

	if(suppress_communication)
		return FALSE

	pose =  sanitize(input(usr, "This is [src]. [get_visible_gender() == MALE ? "He" : get_visible_gender() == FEMALE ? "She" : "They"] [get_visible_gender() == NEUTER ? "are" : "is"]...", "Pose", null)  as text)
