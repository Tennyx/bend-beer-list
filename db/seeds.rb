# breweryList = [
# 	'Boneyard Beer Company - 37 NW Lake Pl, Suite B, Bend',
# 	'The Ale Apothecary - 61517 River Rd, Bend',
# 	'Deschutes Brewery - 901 SW Simpson Ave, Bend',
# 	'Deschutes Brewery & Public House - 1044 NW Bond Street, Bend',
# 	'Crux Fermentation Project - 50 SW Division St., Bend',
# 	'Bend Brewing Company - 1019 NW Brooks St, Bend',
# 	'GoodLife Brewing Company & Bier Hall - 70 SW Century Dr, Bend',
# 	'Monkless Belgian Ales - 20750 High Desert Ln, Bend',
# 	'Riverbend Brewing Company - 2650 NE Division St, Bend',
# 	'10 Barrel Brewing Co. - 1135 NW Galveston Ave, Bend',
# 	'Silver Moon Brewing - 24 NW Greenwood Ave, Bend',
# 	'Worthy Brewing Co. - 495 NE Bellevue Dr, Bend',
# 	'McMenamins Old St. Francis School - 700 NW Bond St., Bend',
# 	'Way Out West Brewing - 24 NW Greenwood Ave, Bend',
# 	'Kobold Brewing - 1470 NW 3rd St, Bend',
# 	'Immersion Brewing - 550 SW Industrial Way #185, Bend',
# 	'Bridge 99 Brewery - 63063 Layton Ave, Bend',
# 	'Oblivion Brewing Co. - 63027 Plateau Dr, Bend',
# ]

# i = 0

# until i == breweryList.length
# 	Brewery.create(name: breweryList[i].split('-')[0],location: breweryList[i].split('-')[1], visited: false)
# 	i += 1
# end

@brewery = Brewery.create(name: 'test_brewery1', location: 'test_location_1', visited: false)
@beer = @brewery.beers.create(name: 'test_beer1.0')
@beer = @brewery.beers.create(name: 'test_beer1.1')
@beer = @brewery.beers.create(name: 'test_beer1.2')

@brewery = Brewery.create(name: 'test_brewery2', location: 'test_location_2', visited: false)
@beer = @brewery.beers.create(name: 'test_beer2.0')
