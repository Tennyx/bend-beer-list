breweryList = [
	'Boneyard Beer Company - 37 NW Lake Pl, Suite B, Bend',
	'The Ale Apothecary - 61517 River Rd, Bend',
	'Deschutes Brewery - 901 SW Simpson Ave, Bend',
	'Deschutes Brewery & Public House - 1044 NW Bond Street, Bend',
	'Crux Fermentation Project - 50 SW Division St., Bend',
	'Bend Brewing Company - 1019 NW Brooks St, Bend',
	'GoodLife Brewing Company & Bier Hall - 70 SW Century Dr, Bend',
	'Monkless Belgian Ales - 20750 High Desert Ln, Bend',
	'Riverbend Brewing Company - 2650 NE Division St, Bend',
	'10 Barrel Brewing Co. - 1135 NW Galveston Ave, Bend',
	'Silver Moon Brewing - 24 NW Greenwood Ave, Bend',
	'Worthy Brewing Co. - 495 NE Bellevue Dr, Bend',
	'McMenamins Old St. Francis School - 700 NW Bond St., Bend',
	'Way Out West Brewing - 24 NW Greenwood Ave, Bend',
	'Kobold Brewing - 1470 NW 3rd St, Bend',
	'Immersion Brewing - 550 SW Industrial Way #185, Bend',
	'Bridge 99 Brewery - 63063 Layton Ave, Bend',
	'Oblivion Brewing Co. - 63027 Plateau Dr, Bend',
]

beerlists = 
	[
	[
	"Hop Venom",
	"RPM IPA",
	"Notorious",
	"Armored Fist",
	"Bone-A-Fide",
	"Suge Knite",
	"Diablo Rojo",
	"Hop-A-Wheelie",
	"Backbone Chocolate Espresso Stout",
	"Incredible Pulp",
	"Black 13",
	"Chingadera",
	"Skunk Ape",
	"Femme Fatale",
	"3-Way IPA",
	"Bone Light",
	"Bourbon Barrel Suge Knite",
	"Girl Beer",
	"Shotgun Session IPA",
	"Pabo Pils",
	"Skin & Bones ISA",
	"Brewer's Crack",
	"Alemaster",
	"White Knuckle",
	"Enzymatic",
	"Bone Crusher",
	"Wit Shack Wit",
	"Gueze Crueze Sour",
	"Orange Is The New Jack",
	"Sticky Zwickel Kettle Sour",
	"Eeepa",
	"Massacre",
	"Mr. Centaur",
	"Chocolate Cherry Stout",
	"Hypoxic Porte",
	"Metabolic IPA",
	"Bohnee",
	"Barrel-Aged Breakfast Stout",
	"Longboy",
	"Snow Worries",
	"Sour G",
	"Rapid Transit",
	"Little Fist",
	"3Bs IPA",
	"Pineapple With Attitude",
	"Bombay Golden Ale",
	"Big League Chew",
	"Camper Van Kolsch",
	"Feels Like the Fresh Time",
	"Boneyard / 3 Floyd’s"
	]
	],
	[
	"Sahalie",
	"The Beer Formerly Known As (TBFKA) La Tache",
	"Sahati",
	"El Cuatro",
	"Be Still",
	"Carpe Diem Mañana",
	"Ralph",
	"Spencer",
	"Sahalie Fresh Hop",
	"El Cuatro - Grand Cru",
	"Sauvie",
	"Red Echo",
	"La Tache",
	"Double Peach La Tache",
	"Lodgehouse",
	"Smothered In Hugs",
	"Field Spirits",
	"Loganberry La Tache",
	"Bizzaro La Tache",
	"Bluto",
	"Plumage",
	"Dry + Wet Hopped La Tache",
	"Spruce Sahalie",
	"Blackberry ¡Vamonós!",
	"La Tache - Tequila & Raspberry",
	"Faerie Tears, vol. 2",
	"RUGBRØD",
	"La Tache - Persimmons & Sour Cherry",
	"Dan	American",
	"Flavor Packet",
	"Witch Tree",
	"Hilario"
	]


i = 0

until i == breweryList.length
	# Brewery.create(name: breweryList[i].split('-')[0],location: breweryList[i].split('-')[1], visited: false)
	@brewery = Brewery.create(name: breweryList[i].split('-')[0], location: breweryList[i].split('-')[1], visited: false)
		beer_list_index = 0
		if i < beerlists.length
			until beer_list_index == beerlists[i].length
				@beer = @brewery.beers.create(name: beerlists[i][beer_list_index])
				beer_list_index += 1
			end
		end
	i += 1
end

# @brewery = Brewery.create(name: 'test_brewery1', location: 'test_location_1', visited: false)
# @beer = @brewery.beers.create(name: 'test_beer1.0')
# @beer = @brewery.beers.create(name: 'test_beer1.1')
# @beer = @brewery.beers.create(name: 'test_beer1.2')

# @brewery = Brewery.create(name: 'test_brewery2', location: 'test_location_2', visited: false)
# @beer = @brewery.beers.create(name: 'test_beer2.0')
