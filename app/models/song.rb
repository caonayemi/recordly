class Song < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :album

  validates_presence_of :title
  validates_uniqueness_of :title, scope: :album, message: "You have already added this song to the ablum."
  validates_uniqueness_of :track_number, scope: :album, message: "You have already added a song with this track number."

  include Favoritable

end
