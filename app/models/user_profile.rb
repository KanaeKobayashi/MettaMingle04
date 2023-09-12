class UserProfile < ApplicationRecord
  belongs_to :user
  def show
    @user = User.find(params[:id])
  end
end
