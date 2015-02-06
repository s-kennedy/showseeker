class CommentsController < ApplicationController

	def index
		@show = Show.find params[:show_id]
		@comments = @show.comments.order(date: :desc)
	end
	
	def show
		@show = Show.find params[:show_id]
		begin
			@comment = @show.comments.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'no_comment_found'
		end
	end

	def new
		@show = Show.find params[:show_id]
		@comment = @show.comments.new
	end

	def create
		@show = Show.find params[:show_id]
		@comment = @show.comments.new comment_params

		if @comment.save
			@show.commentcount += 1
			redirect_to(show_path(@show.id))
		else 
			flash[:notice] = "Your comment was bad. Try again."
			redirect_to(show_path(@show.id))
		end
	end

	def edit
		@show = Show.find params[:show_id]
		@comment = @show.comments.find params[:id]
		render 'new'
	end

	def update
		@show = Show.find params[:show_id]
		@comment = @show.comments.find params[:id]
		@comment.update_attributes comment_params
		if @comment.save
			redirect_to action: 'show'
		else 
			render 'new'
		end
	end

	def destroy
		@show = Show.find params[:show_id]
		@comment = @show.comments.find params[:id]
		@comment.destroy
		redirect_to show_path(@show)
	end

	private 
		def comment_params
			params.require(:comment).permit(:name, :email, :comment, :show_id)
		end

end
