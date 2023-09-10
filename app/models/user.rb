class User < ApplicationRecord
  has_many :questions, foreign_key: 'user_id'
  has_many :answers, foreign_key: 'user_id'
  has_many :reactions
end
