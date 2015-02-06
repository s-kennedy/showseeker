class SiteController < ApplicationController

	def index
		@shows = Show.all
		@show_today = Show.where("date = ?", Date.today).limit(1).first
		@upcoming_shows = Show.where("date > ?", Date.today ).order(date: :asc)
	end

end
