class Character < ApplicationRecord
  belongs_to :show
  belongs_to :actor

  validates :first_name, presence: true
  validates :last_name, presence: true, allow_nil: true

  def full_name
    [first_name, last_name].compact.join ' '
  end
end
