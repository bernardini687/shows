class Show < ApplicationRecord
  has_many :characters
  has_many :actors, through: :characters
end
