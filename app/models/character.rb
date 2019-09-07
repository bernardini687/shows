class Character < ApplicationRecord
  belongs_to :show
  belongs_to :actor

  validates :first_name, presence: true
  validates :last_name, presence: true, allow_nil: true

  include Nameable
end
