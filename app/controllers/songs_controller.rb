class SongsController < ApplicationController
  def show
    song_id = params[:id]
    render json: Song.find(song_id)
  end

  def index
    render json: Song.all
  end

  def create
    song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    song.save
    render json: song
  end

  def update
    song_id = params[:id]
    song = Song.find(song_id)
    song.title = params[:title] || song.title
    song.album = params[:album] || song.album
    song.artist = params[:artist] || song.artist
    song.year = params[:year] || song.year
    render json: song
  end

  def destroy
    song_id = params[:id]
    song = Song.find(song_id)
    song.destroy
    render json: { message: "Song successfully deleted" }
  end
end
