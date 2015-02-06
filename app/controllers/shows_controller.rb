class ShowsController < ApplicationController

	def index
		@shows = Show.order(date: :desc)
	end
	
	def show
		begin
			@show = Show.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'no_show_found'
		end
		@comments = @show.comments.order(created_at: :asc)
		@comment  = @show.comments.new
	end

	def new
		@show = Show.new
	end

	def create
		@show = Show.new show_params

		if @show.save
			redirect_to '/'
		else 
			render 'new'
		end
	end

	def edit
		@show = Show.find params[:id]
		render 'new'
	end

	def update
		@show = Show.find params[:id]
		@show.update_attributes show_params
		if @show.save
			redirect_to action: 'show'
		else 
			render 'new'
		end
	end

	def destroy
		@show = Show.find params[:id]
		@show.destroy
		redirect_to shows_path
	end

	private 
		def show_params
			params.require(:show).permit(:band, :venue, :city, :date, :price, :description, :pic)
		end


end
