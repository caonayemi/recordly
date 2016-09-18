class ArtistsController < ApplicationController

  def show
    @user = current_user
    @artist = @user.artists.where(id: params[:id]).first
  end

  def new
    @user = current_user
    @artist = Artist.new
  end

  def create
    @user = current_user
    @artist = @user.artists.new(artist_params)

    good = @artist.save

    if good && request.xhr?
      render json: @artist
    elsif good
      redirect_to @artist
    elsif request.xhr?
      render json: @artist.errors.full_messages
    else
      @errors = @artist.errors.full_messages
      render :new
    end
  end

  def edit
    @user = current_user
    @artist = Artist.find(params[:id])
  end

  def update
    @user = current_user
    @artist = Artist.find(params[:id])

    @artist.attributes = artist_params

    if @artist.save
      redirect_to @artist
    else
      @errors = @artist.errors.full_messages
    end
  end

  def destroy
    @user = current_user
    @artist = @user.artists.where(id: params[:id])[0]
    @artist.destroy
    redirect_to collection_path
  end


  private
  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :born_on, :died_on, :bio, :is_favorite)
  end

end
