class FavoritesController < ApplicationController

	def index
    @user = current_user
		@favorites = @user.favorites
    if request.xhr?
      render "favorites/index"
    end
	end

end
