class AddShowIdToComment < ActiveRecord::Migration
  def change
  	add_column :comments, :show_id, :integer
  end
end
