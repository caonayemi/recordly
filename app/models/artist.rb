class Artist < ActiveRecord::Base
  belongs_to  :user
  has_many    :albums
  has_many    :songs, through: :albums

  validates_presence_of :first_name
  validates_uniqueness_of :user, scope: [:first_name, :last_name], message: "You have already added this artist to your collection."

  def full_name
    "#{first_name} #{last_name}"
  end
end
