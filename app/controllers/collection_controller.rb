class CollectionController < ApplicationController

	def index
    @user = current_user
		@collection = @user.collection
    if request.xhr?
      render "collection/index"
    end
	end

end
