
class UserRegistrationsController < ApplicationController
  def new
    @user_registration = UserRegistration.new
  end

  def create
    # 新しいユーザーを作成するロジックを実装
  end
end

