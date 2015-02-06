class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|

    	t.string :band
    	t.string :venue
    	t.string :city
    	t.date :date
    	t.integer :price
    	t.string :description

      t.timestamps null: false
    end
  end
end
