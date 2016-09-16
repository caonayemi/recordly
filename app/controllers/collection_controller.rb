class CollectionController < ApplicationController

	def show
    @user = current_user
		@collection = @user.collection
    if request.xhr?
      render "collection/show"
    end
	end

end
