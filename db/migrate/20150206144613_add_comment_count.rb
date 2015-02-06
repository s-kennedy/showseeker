class AddCommentCount < ActiveRecord::Migration
  def change
  	add_column :shows, :commentcount, :integer
  end
end
