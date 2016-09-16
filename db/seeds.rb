# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
  username: "example",
  password: "testing",
  email: "test@email.com",
  first_name: "John",
  last_name: "Doe"
)

artist = Artist.create(
  user_id: user.id,
  first_name: "Michael",
  last_name: "Jackson",
  born_on: Date.parse("1958-08-29"),
  died_on: Date.parse("2009-06-25"),
  bio: "This is where the bio would go.",
  is_favorite: true
)

album = Album.create(
  user_id: user.id,
  artist_id: artist.id,
  title: "Bad",
  release_year: 1987,
  is_favorite: nil
)

Song.create(
  user_id: user.id,
  album_id: album.id,
  title: "Bad",
  track_number: 1,
  is_favorite: nil
)

Song.create(
  user_id: user.id,
  album_id: album.id,
  title: "Man in the Mirror",
  track_number: 7,
  is_favorite: true
)

Song.create(
  user_id: user.id,
  album_id: album.id,
  title:  "Smooth Criminal",
  track_number: 10,
  is_favorite: nil
)
