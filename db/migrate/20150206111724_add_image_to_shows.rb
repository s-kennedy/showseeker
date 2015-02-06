class AddImageToShows < ActiveRecord::Migration

  def self.up
  	add_attachment :shows, :pic
  end

  def self.down
  	remove_attachment :shows, :pic
  end

end
