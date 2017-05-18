class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end

	def show
 		 @tag = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.delete(params[:id])

		redirect_to tags_path(@tags)
	end


end
