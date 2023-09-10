class User < ApplicationRecord
  has_many :questions, foreign_key: 'create_user_id'
  has_many :answers, foreign_key: 'answer_user_id'
  has_many :reactions
end
