module Favoritable
  extend ActiveSupport::Concern

  def add_favorite
    self.update_attributes(is_favorite: true)
  end

  def remove_favorite
    self.update_attributes(is_favorite: false)
  end

end
