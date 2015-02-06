class Comment < ActiveRecord::Base
	belongs_to :show
	validates :name, presence: true
	validates :comment, presence: true, length: {in: 1..700}
	validates_associated :show
end
