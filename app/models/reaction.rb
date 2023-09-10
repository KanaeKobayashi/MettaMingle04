class Reaction < ApplicationRecord
  belongs_to :answer
  belongs_to :user
  has_many :stamps
end
