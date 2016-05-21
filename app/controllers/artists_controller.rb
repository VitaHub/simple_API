class ArtistsController < ApplicationController

	def index
		@artists = Artist.all
		render json: @artists
	end

	def show
		@albums = {"artist": Artist.find(params[:id]),"albums": Artist.find(params[:id]).albums}
		render json: @albums
	end
end