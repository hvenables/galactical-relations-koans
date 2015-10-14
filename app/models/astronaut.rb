class Astronaut < ActiveRecord::Base
  has_many :crewings
  has_many :spaceship, through: :crewings

  def spaceship
    crewings.where(captain: true).first.spaceship
  end
end
