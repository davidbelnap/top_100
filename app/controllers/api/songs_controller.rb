class Api::SongsController < ApplicationController
	before_action :get_song, only: [:update, :destroy]

	def index
		render json: Song.all
	end

	def create
		song = Song.new(song_params)
		if song.save
			render json: song
		else
			render json: { errors: song.errors }, status: :unprocessable_entity
		end
	end
	
	def update
		song = Song.find(params[:id])
		@song.update(complete: !item.complete)
		render json: ssong
	end
	
	def destroy
		Song.find(params[:id]).destroy
		render json: { message: 'Song deleted' }
	end

	private
		def song_params
			params.require(:song).permit(:title, :artist, :rank)
		end

		def get_song
			@song = Song.find(params[:id])
		end

		def render_error(song)
			errors = song.errors.full_messages.join(", ")
			render json: { errors: errors }, status: 418
		end
end
