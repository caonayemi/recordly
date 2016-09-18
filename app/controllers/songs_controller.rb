class SongsController < ApplicationController
  def show
    @user = current_user
    @song = @user.songs.where(id: params[:id]).first
  end

  def new
    @user = current_user
    @song = Song.new
  end

  def create
    @user = current_user
    @song = @user.songs.new(song_params)

    good = @song.save

    if good && request.xhr?
      render json: @song
    elsif good
      redirect_to @song
    elsif request.xhr?
      render json: @song.errors.full_messages
    else
      @errors = @song.errors.full_messages
      render :new
    end
  end

  def edit
    @user = current_user
    @song = Song.find(params[:id])
  end

  def update
    @user = current_user
    @song = Song.find(params[:id])

    @song.attributes = song_params

    if @song.save
      redirect_to @song
    else
      @errors = @song.errors.full_messages
    end
  end

  def destroy
    @user = current_user
    @song = @user.songs.where(id: params[:id])[0]
    @song.destroy
    redirect_to collection_path
  end


  private
  def song_params
    params.require(:song).permit(:title, :track_number, :album_id)
  end

end
