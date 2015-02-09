class SiteController < ApplicationController

	def index
		@shows = Show.all
		@next_show = Show.where("date >= ?", Date.today).order(date: :asc).limit(1).first
		# if Show.where("date = ?", Date.today).present?
		# 	@show_today = Show.where("date = ?", Date.today).limit(1).first
		# else 
		# 	render 'shared/upcoming'
		# end
		@upcoming_shows = Show.where("date > ?", Date.today ).order(date: :asc)
	end

	def spend
		@budget_shows = Show.where("price <= ?", params[:budget]).order(date: :asc)
	end

	def top
		@top = Show.where("date > ?", Date.today ).order(commentcount: :desc).limit(10)
	end

 end