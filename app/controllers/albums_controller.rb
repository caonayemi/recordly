class AlbumController < ApplicationController
  def show
    @user = current_user
    @album = @user.albums.where(id: params[:id]).first
  end

  def new
    @user = current_user
    @album = Artist.new
  end

  def create
    @user = current_user
    @album = @user.albums.new(album_params)

    good = @album.save

    if good && request.xhr?
      render json: @album
    elsif good
      redirect_to @album
    elsif request.xhr?
      render json: @album.errors.full_messages
    else
      @errors = @album.errors.full_messages
      render :new
    end
  end

  def edit
    @user = current_user
    @album = Artist.find(params[:id])
  end

  def update
    @user = current_user
    @album = Artist.find(params[:id])

    @album.attributes = album_params

    if @album.save
      redirect_to @album
    else
      @errors = @album.errors.full_messages
    end
  end

  def destroy
    @user = current_user
    @album = @user.albums.where(id: params[:id])[0]
    @album.destroy
    redirect_to collection_path
  end


  private
  def album_params
    params.require(:album).permit(:title, :release_year)
  end
end
