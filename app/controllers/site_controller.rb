class SiteController < ApplicationController

	def index
		@shows = Show.all
		@show_today = Show.where("date = ?", Date.today).limit(1).first
		@upcoming_shows = Show.where("date > ?", Date.today ).order(date: :asc)
	end

	def spend
		@budget_shows = Show.where("price <= ?", params[:budget]).order(date: :asc)
	end

	def top
		@top = Show.where("date > ?", Date.today ).order(commentcount: :desc).limit(10)
	end

 end