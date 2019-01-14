#SingleInstance, force

Blue := ["Angelic_Axe.gif","Blue_Robe.gif","Boots_of_Haste.gif","Butcher's_Axe.gif","Crown_Armor.gif","Crown_Helmet.gif","Crown_Legs.gif","Crown_Shield.gif","Crusader_Helmet.gif","Dragon_Lance.gif","Dragon_Shield.gif","Fire_Axe.gif","Fire_Sword.gif","Glorious_Axe.gif","Guardian_Shield.gif","Ice_Rapier.gif","Orb.gif","Royal_Helmet.gif","Shadow_Sceptre.gif","Wand_of_Cosmic_Energy.gif","Wand_of_Decay.gif","Wand_of_Defiance.gif","Wand_of_Draconia.gif","Wand_of_Everblazing.gif","Wand_of_Inferno.gif","Wand_of_Starstorm.gif","Wand_of_Voodoo.gif"]
Green := ["Bonebreaker.gif","Dragon_Hammer.gif","Dreaded_Cleaver.gif","Giant_Sword.gif","Glacial_Rod.gif","Hailstorm_Rod.gif","Haunted_Blade.gif","Knight_Armor.gif","Knight_Axe.gif","Knight_Legs.gif","Muck_Rod.gif","Necrotic_Rod.gif","Northwind_Rod.gif","Onyx_Flail.gif","Ornamented_Axe.gif","Serpent_Sword.gif","Skull_Staff.gif","Springsprout_Rod.gif","Terra_Rod.gif","Titan_Axe.gif","Tower_Shield.gif","Underworld_Rod.gif","Vampire_Shield.gif","Warrior_Helmet.gif"]
Rashid := ["Abyss_Hammer.gif","Amber_Staff.gif","Assassin_Dagger.gif","Berserker.gif","Buckle.gif","Chaos_Mace.gif","Cobra_Crown.gif","Composite_Hornbow.gif","Crocodile_Boots.gif","Crystalline_Armor.gif","Crystal_Crossbow.gif","Crystal_Mace.gif","Demonbone_Amulet.gif","Demonrage_Sword.gif","Demon_Shield.gif","Divine_Plate.gif","Dragonbone_Staff.gif","Dragon_Scale_Mail.gif","Epee.gif","Fur_Boots.gif","Glacier_Amulet.gif","Glacier_Kilt.gif","Glacier_Mask.gif","Glacier_Robe.gif","Glacier_Shoes.gif","Golden_Armor.gif","Golden_Legs.gif","Gold_Ring.gif","Goo_Shell.gif","Guardian_Halberd.gif","Hammer_of_Wrath.gif","Heavy_Mace.gif","Hibiscus_Dress.gif","Jade_Hammer.gif","Lavos_Armor.gif","Leviathan's_Amulet.gif","Lightning_Boots.gif","Lightning_Headband.gif","Lightning_Legs.gif","Lightning_Pendant.gif","Lightning_Robe.gif","Lunar_Staff.gif","Magic_Plate_Armor.gif","Magma_Amulet.gif","Magma_Boots.gif","Magma_Coat.gif","Magma_Legs.gif","Magma_Monocle.gif","Mammoth_Fur_Cape.gif","Mastermind_Shield.gif","Medusa_Shield.gif","Mercenary_Sword.gif","Mycological_Bow.gif","Nightmare_Blade.gif","Noble_Axe.gif","Oriental_Shoes.gif","Paladin_Armor.gif","Platinum_Amulet.gif","Relic_Sword.gif","Rift_Bow.gif","Rift_Crossbow.gif","Rift_Lance.gif","Rift_Shield.gif","Ring_of_the_Sky.gif","Ruthless_Axe.gif","Sacred_Tree_Amulet.gif","Sapphire_Hammer.gif","Shockwave_Amulet.gif","Skull_Helmet.gif","Spiked_Squelcher.gif","Steel_Boots.gif","Swamplair_Armor.gif","Terra_Amulet.gif","Terra_Boots.gif","Terra_Hood.gif","Terra_Legs.gif","Terra_Mantle.gif","War_Axe.gif","War_Horn.gif","Wyvern_Fang.gif"]
Farmine := ["Drachaku.gif","Draken_Boots.gif","Drakinata.gif","Elite_Draken_Mail.gif","Guardian_Boots.gif","Sai.gif","Twiceslicer.gif","Wailing_Widow's_Necklace.gif","Zaoan_Armor.gif","Zaoan_Helmet.gif","Zaoan_Legs.gif","Zaoan_Shoes.gif","Zaoan_Sword.gif"]
Oramond := ["Alloy_Legs.gif","Cowtana.gif","Execowtioner_Axe.gif","Gearwheel_Chain.gif","Glooth_Amulet.gif","Glooth_Axe.gif","Glooth_Blade.gif","Glooth_Cape.gif","Glooth_Club.gif","Glooth_Whip.gif","Heat_Core.gif","Metal_Bat.gif","Metal_Spats.gif","Mino_Lance.gif","Mino_Shield.gif","Mooh'tah_Plate.gif","Moohtant_Cudgel.gif","Rubber_Cap.gif"]


isRunning := false

!g::
	isRunning := true
	;procurar bau 1

	While, isRunning
	{
		for i, el in Farmine
		{
			Loop, 10
			{
				ImageSearch, x, y, 0, 0, A_ScreenWidth, A_ScreenHeight, *TransWhite %el%
				if ErrorLevel = 0
				{
					MouseMove, x+20,y+20

					;Click, x+20, y+20, Left, down
				    ;MouseMove, 1800, 1600
				    ;Click, Left, up
					sleep 100
					break
				}
			}
		}
	}
return

Esc::
	isRunning := false
return