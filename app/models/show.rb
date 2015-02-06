class Show < ActiveRecord::Base

	has_many :comments
	validates :band, presence: true
	validates :venue, presence: true
	validates :city, presence: true
	validates :date, presence: true
	validates_date :date
	validates :price, presence: true, numericality: true
	validates :description, presence: true, length: { in: 1..1000 }
	has_attached_file :pic, styles: { :large => "600x400>", :thumb => "100x100>"}, :default_url => ":style/default.jpg"
	validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\z/

end
