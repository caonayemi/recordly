class Album < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :artist
  has_many    :songs

  validates_presence_of :title
  validates_uniqueness_of :title, scope: [:artist, :user], message: "You have already added this album to your collection."
end
