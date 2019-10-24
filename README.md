# Bend Beer List

Small project to learn Rails API, React with deployment to Heroku. Simple CRUD functionality on display with AJAX calls marking off "visited" breweries.

See deployed app here:

https://bend-beer-list.herokuapp.com/

See brewery API here:

https://bend-beer-list.herokuapp.com/api/v1/breweries

Beers are in a seperate table, but are populating with their respective breweries using a has_many/belongs_to relationship.

(Note: Uses Heroku's free tier so it may be in sleep mode. Also, beers are seeded for only the first 2 breweries)
