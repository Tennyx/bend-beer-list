class AddColumnVisitedToBreweries < ActiveRecord::Migration[6.0]
  def change
    add_column :breweries, :visited, :boolean
  end
end
