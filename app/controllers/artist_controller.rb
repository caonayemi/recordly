class ArtistController < ApplicationController

  # def index
  #   @user = current_user
  #   @artists = @user.artists
  #   if request.xhr?
  #     render json: @artists
  #   end
  # end

  # def show
  #   @user = current_user
  #   @artist = @user.artists.where(id: params[:id]).first

  #   update_current_artist(@artist)

  #   @tables = @artist.tables
  #   @guests = @artist.guests

  #   seat_guests(@tables, @guests)

  #   @num_of_tables = @artist.tables.length
  #   @number_of_seats = @artist.tables.first.number_of_seats

  #   if request.xhr?
  #     render json: {tables: @tables, guests: @tables.guests}
  #   end
  # end

  # def new
  #   @user = current_user
  #   @artist = artist.new


  # end

  # def update
  #   @user = current_user
  #   @artist = Artist.find_by_id(params[:id])

  #   @artist.attributes = artist_params

  #   if @artist.save
  #     redirect_to @artist
  #   else
  #     @errors = @artist.errors.full_messages
  #   end
  # end

  # def create
  #   @user = current_user
  #   @artist = @user.artists.new(artist_params)

  #   @artist.set_tables(params[:artist][:table])

  #   good = @artist.save

  #   if good && request.xhr?
  #     render json: @artist
  #   elsif good
  #     redirect_to @artist
  #   elsif request.xhr?
  #     render json: @artist.errors.full_messages
  #   else
  #     @errors = @artist.errors.full_messages
  #     render :new
  #   end
  # end

  # def destroy
  #   @user = current_user
  #   @artist = @user.artists.where(id: params[:id])[0]
  #   @artist.destroy
  #   redirect_to artists_path
  # end


  # private
  # def artist_params
  #   params.require(:artist).permit(:name, :zip_code, :state, :address_line_one, :address_line_two, :begins_at, :ends_at)
  # end

end
