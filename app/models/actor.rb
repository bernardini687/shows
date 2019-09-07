class Actor < ApplicationRecord
  has_many :characters
  has_many :shows, through: :characters

  validates :first_name, presence: true
  validates :last_name, presence: true, allow_nil: true

  include Nameable
end
