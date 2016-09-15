class User < ActiveRecord::Base
  has_many :artists
  has_many :albums
  has_many :songs

  validates_presence_of :username, message: "Please choose a username."
  validates_uniqueness_of :username, message: "Sorry, but that username is already taken."
  validates_presence_of :password_hash, message: "Please provide a password."

  def full_name
    "#{first_name} #{last_name}"
  end

  def collection
    {
      artists: artists,
      albums: albums,
      songs: songs
    }
  end

  def favorite_artists
    Artist.where(user_id: id, is_favorite: true)
  end

  def favorite_albums
    Album.where(user_id: id, is_favorite: true)
  end

  def favorite_songs
    Song.where(user_id: id, is_favorite: true)
  end

  def favorites
    {
      fav_artists: favorite_artists,
      fav_albums: favorite_albums,
      fav_songs: favorite_songs
    }
  end

  # private
  def password
    @password ||= BCrypt::Password.new(self.password_hash)
  end

  def password=(raw_password)
    @password = BCrypt::Password.create(raw_password)
    self.password_hash = @password
  end

  def authenticate(raw_password)
    password == raw_password
  end
end
